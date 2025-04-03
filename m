Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D78136E37
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743645594; cv=none; b=mj8WYuo+jvUlBaC/PQuZ2CZ4wff+x+u30NQW2PCbY1p+VrHl5JabJdmWVekmv+3r3AtaTec1ZO22Aatneeulrpsdyoz+4mPjdhJk1Vxzr6/PrkMUsXBPDgcsIRA+ZoGphqXhTQLQKuEqDhBBF/4OZ+u9NQF1omwKj2cbetkxX2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743645594; c=relaxed/simple;
	bh=OkKAn9vo9yWcWUur76Om27cbnIKOrOJaZi3NAWC4sM0=;
	h=To:Subject:From:Message-Id:Date; b=uFgcbBT2G4oNUsyKc103svYCGh5QaeR4dK11YTuUAH8HNio3lIXz7GVl5TlIOm14oL8kjxQsEcJIVJFj4m2/u5YmlOE0EsZ1V6/yFwa4I0k40HyZiyZb1Fu01t6G4rWGTFaVX7bY8tlv5qCZzl5ArHTZky7jaTnundrTjkYJMLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdD+MPCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdD+MPCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89A5C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743645593;
	bh=OkKAn9vo9yWcWUur76Om27cbnIKOrOJaZi3NAWC4sM0=;
	h=To:Subject:From:Date:From;
	b=NdD+MPCuFCOzTDlVoGvWnDwmMefu/3UvHMe3mqR5Id252Wc1X8Krr8D1s3s7uKhoF
	 3tVmezv97pVluZgpzoixu97/7aGU7js8l+UzhJhNNjju6D+/UenxqaIfO1CAIWtp2G
	 lXSP9geC4X0HlQDaTpfoSxULo+tZ7l6HdnxZLlZPI1FXfsTDbPrT9NJ63D2sJ1L23w
	 WgJOs/S2B99GR7vx8LdvGVxCiREItBW8JXHKkeBDa/dnB85Pp8w9E1patczdAJp+il
	 ARX/LPBsbiARGBYOPvdFA/KoNm+wi6Qphhiin8Nyv0Sv+Fv2vRrKLjmZPeHGNn47u8
	 ZcFqf66W6WjLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A4AC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364559361.21494.10698390480008549528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60beb548257903c61ac35db58850be72e4c7e11cc20d2442930284ffd0a9c36
Date: Thu, 03 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743645593
