Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC7014AD1E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 18:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718302703; cv=none; b=APZw5/ah4r4F4niHYm6Kf33PV+dxzYTRPui3Nnq8l8SCUbom38DJoviXSos7epuVftjZXik7ac1IHrtm4/ecLPCyLyl0dUVcO4HoR1DBzu2WIYXP5yLGazFFBIxsMGcOQ+jK2tK1cZGuaXAhSU6mpY177JH7c0S4r0K5FqstGJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718302703; c=relaxed/simple;
	bh=xAvtK1y4HRQ5HMpPoRJhdRrF/JZyc7C/rNncupfOQoQ=;
	h=To:Subject:From:Message-Id:Date; b=hVmmRsqunR/HU019xeaSUpZM+yOuENgh3yvw0tyvCjyETzMGlLQIm02HuTMVSaipc0uTaJ2s71ylsjsVspgPxEa4tf4a1Im5mMPLuAgHfU6IdQsYdZvtKgSO39IlNmM4FLnaDCUp4PaGD1VjF1YWMyyFv4Uf2tLrSlPG/njV7Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDjzRaED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDjzRaED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC8BC32786
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 18:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718302702;
	bh=xAvtK1y4HRQ5HMpPoRJhdRrF/JZyc7C/rNncupfOQoQ=;
	h=To:Subject:From:Date:From;
	b=jDjzRaEDcsYLX04oH5F8UBzC8KgbZ7c00MvIcxbxtmfVBd7vGrYooiqPhdux8PrSF
	 kiZoqDDM1p6GmYP1DTNLZQmfwd3GGUMJMm8aEUCl93+ZGH7HqNTEiD1MNyPB8fr6sr
	 l8dZtwMwSmuTDXabq4p2a7vbhRNwetObccozH7XFl20f2IDOsmwBwhLGnhej5INPVB
	 741Aq5WNYLoW9C5Aa3vYZg1qH1lerPb9MFpIdefOjxGMmY/2CbcxQumZWd//MMet+C
	 ec3X+jzAGDVuFKI+cjtSm88hK3CAO4jsnbQ7qagOJH0utS2p1h8juCGB6ieq0q/xYn
	 xIv+ZVRlpD8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAC0C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 18:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830270277.22721.14203230295644225093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386701b47c248ebe205b8259ab8a23c38588c49fc01984a8fc2175204453872e
Date: Thu, 13 Jun 2024 18:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718302702
