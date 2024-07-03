Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180A31862BA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720030523; cv=none; b=BO22+7FTQYcQEWFgMESjg9DUdsEdy38Bz9g+uj6VNGht5rmh9OTcL+r0xAH4eMFrTRaSxKy/8ozIn/p3eV6ui0JHy4mFdGaZhl42VqN37LHPh9N6pQTPs/6F1Uh6l299hVCSngF5YbUze5c9dQK8j37wncLC0BmHrOKs1w9dlWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720030523; c=relaxed/simple;
	bh=kVvTJ5ZpxBk1bDosTt1WrUNz8duntPUvpb3nVYfFHPE=;
	h=To:Subject:From:Message-Id:Date; b=ncUWJ7/eVzexwiyRe12UEnfht+jRdlb02ThTrT9BLw4C085jmJdQhjxvgsk9Uf7SqQTngJbpEiMryCDAYpDm58l8AKX0IwP92etoCatEYV7MRp5JkGTpj+KcnTjCKDcYMpY8R9PteEVQAWuH4246j0MBz97qKQFgj0d8BLpXdGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdn8Doa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdn8Doa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30E0C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720030522;
	bh=kVvTJ5ZpxBk1bDosTt1WrUNz8duntPUvpb3nVYfFHPE=;
	h=To:Subject:From:Date:From;
	b=pdn8Doa+E4WcnMZXdFTuQVPqNDtNLAf1SnKMvrhlpkl0lLqIm1zgQfd2r+lUeK1xJ
	 zG6mQc91Xnf+fZGQnj7LbjHoJVypdhu3stI62mEonUfqvbjys1xhXeJLbp3jsA18PG
	 STYvYpKDpitmLIytRCgaiL0v7RAroUjeFyGPhPNK6jRO9/hK1/g8bRsXXR3Vwe+uS0
	 zAdU3Eow9WLqQ78qartbqZJYw06YbBchzV1m3Se03TwMa78hxGqyO4GQ2CapswyHAf
	 yon4y8BLIqlbVEtV8drqzQ68fUZV5t4L6/8vaG8paQ/LD3usc9GZvi883BS551OcSW
	 2tXfmjPcSP0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AF8C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003052281.6186.11300905144487227640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d372de8f90333ab0b3b941120efc3a149c4e6cc908c80e80c6d91ee721a6adc4
Date: Wed, 03 Jul 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720030522
