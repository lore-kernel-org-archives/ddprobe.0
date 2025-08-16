Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96645789D
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755305993; cv=none; b=AhdoRXGDAliG9J+AIp+JMMKdbsuN1hyh2Ljy/gBG001GD+kqVdDVd+qV1YeIvW9UuvgwaqSVnRp6zMQKMqbO21ITaKSya3QRtcs2GO2zdeTTZu+bJsH0MmhXqRvXepPw7Z4yz3fOtC/thBM3GmW/xnXrxVAsLPgiu2aLFPKSUZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755305993; c=relaxed/simple;
	bh=wcn3qmZDYCDQG8q5f6zfVhEtVZOpLyL6W+akcyFfTMY=;
	h=To:Subject:From:Message-Id:Date; b=DPTfRFUUm941lpWnqiyIY7uqEwoYzfrMmuvatRvthzxGUC7nJK5I4pPIW7SyzSH7HGkKmBGVoyK/u/0d++y5/5t49Uo+DQLufwG+U5JGlrAhKs1/wO9+LXtUBuYH/YMeGyv56Dy5pjXMG7STgvpJ4u3Kx1GQCtJIor9w9xT44EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spP+m/Aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spP+m/Aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB7AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755305993;
	bh=wcn3qmZDYCDQG8q5f6zfVhEtVZOpLyL6W+akcyFfTMY=;
	h=To:Subject:From:Date:From;
	b=spP+m/Aq7HDjg3+FuJzblQLfUTfELue+BGyQorBYs4MhSlTyVS7+1rvIwwY/6NPr6
	 OwIiPpBy6HrauWzLAfw7hhpXeWgyVH/6tvS/BmkQCGAqIa12SP0py6poCTgLg66u8+
	 Qwyvq8zdTg50EEPeBblTjOp5ZvR9BMN7mILYnf+jmpQAqYlPB6poVPLXTvKFMyI/2g
	 OckL3aHlcE3QfOmExQG8khCpzKqSgUUxrcZuVXK4bEZ0Y+ip6QdAhknd/bXyZymoTp
	 LVgvvfQQhMubTfkxeC2N6Bmn4LqI2gdFAVuE3d9BBMfLW8cldxyPjkkNeLZt6q9MxN
	 FS9EJlC7fX23g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91955CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530599358.17644.2339006379112452934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d8fbe545ca254b07e9612bffa30d45bfd866f62753bd9233d87794934d7e20
Date: Sat, 16 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755305993
