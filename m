Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630F5B674
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738028154; cv=none; b=UKEivma82WrE80+zKBxvIbPX3sHh0+d6utE59DNE2HP/ZxF2bDpXkM1/SjBgXl7+7jCWc9skLUtCydJxqe1UlT7KgoVw9aAirMP8CCZhbaQ1r+nogs746DgTi9UV7bFUyakFoONXA9FIgyn4bou7wUlw8ZP7mlJXUgKk9upV7hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738028154; c=relaxed/simple;
	bh=eP7B/+lUEXE77EIGP7r48/ybFxnwjfm0cx6WQbshD3I=;
	h=To:Subject:From:Message-Id:Date; b=RF+B+wZb1JCleN80PPA9d1Ezad7hJ6h9+ux5k4xBaefWBmQp/0s2EjbdUPiwiWqbUFWIELAJajKGKPjPo8eaN6oTj1i++NKPsPKINPE+Ebhpa+a04AF57D+z4qLH/UclAoaUVuNN1p5y4JcRta1efjr8zz9womFCkItEA2mYJwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTkMsXr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTkMsXr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2787C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738028153;
	bh=eP7B/+lUEXE77EIGP7r48/ybFxnwjfm0cx6WQbshD3I=;
	h=To:Subject:From:Date:From;
	b=LTkMsXr8caLJY8kR71QZ+n7pauo2Fd90zUmouK21pYUV51p55Ad3RlxiSBdQ1RKou
	 j7Mf652oJeChxwx2Uwrxywb8tpMb63IheXTF7QkY4zz7cTIPf7KubNE0KEoOMog+ZY
	 YsJNkhE892/XUvUu0Lqd3sgIrB9gblKcSTmVswOfBeG+zCIT0gJFIRYLdEyuCa+F2/
	 cfwGSUiHTSA94aZrtKx35Q4ARDfOS31Kdev3JZHzqceFPZ9m0C0qWYllSkcRWNqw4N
	 cwUdklaluXeN1D0ZnQacJv7oOSC5m7+t8JNT4RF9R3yFc/GitKLOuyFduye0afXlhV
	 Z/ybNd7RPZbqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB378C02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802815368.9823.741416825836101806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc96e3e1b7e0eedc5d1ca210b356d9af2f5631534a9f6cb95f835ba938e355b8
Date: Tue, 28 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738028153
