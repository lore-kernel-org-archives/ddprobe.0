Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F7A24FC0A
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747130394; cv=none; b=kqYUmsDG/nTrNJIHiaKKTtrPB4HxHL4vPGFzfnHPZ+tz7TcVJPAp1dIcYeL4UoZeXVRJvB0PxdGDgiECpUycO+zXqI2Dw0jaJgjfZpUhPvrgwLTX7r6GEz967x3coeX8tUJzO8gXgETRBfGqhejORsgUz1rDNhL9beTrnv0Izp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747130394; c=relaxed/simple;
	bh=mvs64DvIG3UY0x1Ga/EoP824UW6tu3WF5lkKykX9unw=;
	h=To:Subject:From:Message-Id:Date; b=mDbYbXJIwG5MnCcS1Y/ibsCvV811JUBd0GTcNktogYq2lgXfuXFGStbIzvRFgYh/tE8l/QGpqRLOIsxQmfNhRSg8iHFm3ACg4RCQrsYCcqokcbyO8BiWGOt/vhnELVaXZiXfHXXoCC11LLg68TZhTWiyhkfXueNPVOxb1dOHzK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx2epux0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx2epux0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E1DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747130393;
	bh=mvs64DvIG3UY0x1Ga/EoP824UW6tu3WF5lkKykX9unw=;
	h=To:Subject:From:Date:From;
	b=Fx2epux0pg7txXzEE+PiWWxOkYBvjlY/2ZEi29alkqa7ceo/nyR8K35sVCJuuSVua
	 Pjs4LZeXY9XSm1YyhdvQu1pX82T8rCpxQCuVEcMR1aXFPZYET98uNpLMJoqi3fjFTh
	 PW6TInPCWMxJtGjetQH+aQF8I0sAJZWVNcin+LVv8hiaQY1WTtBQwCOjkJc97qD2lb
	 m8Hja+5VZwlc0lvxLT7bRTZxwPkY42o0hRknHIa2f6KyAtHFiu0w8lUDp5yUrBm6gA
	 Ei0lISYfukHty3hu37wkfxdg3p1I3TAyGkniH9xWBKVs4OGc8zfoaOJDO/Zawf74Ir
	 1w5xl0uUwpIog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FBC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713039360.23944.18071231119456032617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ff4d755bfdad05ebc471976a1f42c06f93fdd5c226707f1b8caa2d8e6d884a
Date: Tue, 13 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747130393
