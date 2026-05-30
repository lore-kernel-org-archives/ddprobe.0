Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A31221D89
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780108414; cv=none; b=baK1ide6DgY+qjUzyaazyo60ftjyTYDL6uBUZ83/zBjXdn4Jt0oiDuL6KUnJC5Ou4y8906aqMqDPlavQCqMDSiW08YCpI8w/VyQUAEo+UKSfBIhIOHS1U6LknB1znEedwiCtKWMmc74MMVlbkA3Kr8/TaQgKuKK5kcAjkeX/sFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780108414; c=relaxed/simple;
	bh=VhYZ/1YZ6kki8VgRSAfRq8e2qkVG0LlfUuyuMk1AsS4=;
	h=To:Subject:From:Message-Id:Date; b=NtoiaLnGFUb9q78cthNzbBfQ/SVd+BT6M5xgH6Cn0Ro+XMoeAK6EUT8FOmDv6X+Cv15Ux6egwe3lFUHc9nBGF5/MOmw2SUMLtb82FF403TU17p4d3wnk2rjvUbUtzNIGTTMZX4z/FcwQnLLR2H/SZwmwyRGs0sbokYUC+4M9mVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALK8lTnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALK8lTnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FF8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780108413;
	bh=VhYZ/1YZ6kki8VgRSAfRq8e2qkVG0LlfUuyuMk1AsS4=;
	h=To:Subject:From:Date:From;
	b=ALK8lTnrU/pqqWLxNcMeHyBreHqGmEAkO885lRw9lLEMU8M0QH7/LBsYACWpPPPh+
	 KaFsiKGAJu7FHGHwCDvuKiQ/pnscYZlx39IZxCDQc+jndMaLyhe8Zr+ukFbJHnh35f
	 RtUl/iO5rrYIAI1NNaTwiiL+m7YUxBvooPQ15V0ml2B1zDFpfQmpVDLSBU1oyoRbP1
	 F5Tk22Gz4O1Z2POiJOkZ+SrSdDOlBJJR060TRW6udzJ7dWXpyMhLm+lKSGf1fOKEB8
	 yIdKdlZUmku73wn/3YfDQsUQOHCVxBR2oFzdPutSQF4IqkFNhOWetglnJ5v16faRXu
	 tAGCllZU1cQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DDCD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010841368.26029.2535940701841558205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d01bc65a94a1567ca21e877c3ec97c483330a018a4817d71855841dc2c73e8
Date: Sat, 30 May 2026 02:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780108413
