Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5711A3DD85E
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789720234; cv=none; b=U7T7vl6YNbw/B2Z+nObbkuPyr2xJRA4I/z5dVhD0xgD5hGBZaTT4XREx6mZXxvYMHGkg9t19nuROsdZokWPLtyfx4ao5zAQ5vsFdHFiHbIlIRDoXtHW4Vx9kTEZpBQ1kMHZA8zLN8clfBCSzIxKGQyC9sQL2lGERc6hEX0FmHto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789720234; c=relaxed/simple;
	bh=pD53LZCRyMfcGAKV3F1Ag8jQO8VIaO9uvyrcFaRHt4M=;
	h=To:Subject:From:Message-Id:Date; b=af1wTai4Uw4Gq13USTH9XzGaRm4PSV7ldpJ8xeSaquQSTK5Ne9CSTO1L4FuupbOTOs7EP9VssMbH2Id35Ad32jaC461fM88zh2/+ITSOaKX/gy96sPAsorw5wM9pdbjTaT2MgNBubI+XInOL6ouudd6WOqe1JtEwiSMSB5yrgAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfGyyXjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfGyyXjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBCCC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789720233;
	bh=pD53LZCRyMfcGAKV3F1Ag8jQO8VIaO9uvyrcFaRHt4M=;
	h=To:Subject:From:Date:From;
	b=bfGyyXjk6IPwsoE9/SvmdtspeVWkQoYjj6TOZtkAJQ4LGfPELnsYjr1eY+NrXgzkT
	 uOQ7GiuaFv7wJzTPtYlHCZz7cPmGUvdghqknpn1VuFE+Tzjvwcyl2kF3CMh8I4dVZh
	 QE7/RCeHkNFlMatknrTp76nPq1CDbJ6GPCvd2TQhvRNKex3brg0OIQxsmMN/fDgOOa
	 ayXobWmIWyVybipyn2uPwsALw8HoHKWdbsv2+ciC1Bb3c7fhb8v9Ce5Q5bwdj+/7ty
	 fSqexvDg6nYpuVn865AhqNbrhVpJtlULd1G1zyAuiv7BC5qUVGYIhMjOUhCUc6kal/
	 s/oevb9OIfHmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B2DC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972023368.7130.16343124929674910694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8c91079ebfd96aae8602ce0c3331a42e9ae4d6774c54f2511ed7a43716e0a5
Date: Fri, 18 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789720233
