Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771001AAE28
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781322394; cv=none; b=eiayptQc8dNQRr2ZJkDqqyhLM/0yJEp1/b66SYIBRTNkU/yqX/jCY8kn+JPD7EwwawyU6uet91Wyl+Ddw427jb5rerxKqXaVIU3N0iRGF8s7fEGnBMwJSkpOfAVcw97b4A+UMmb4Oa7fgleNVQkDdJsuRfStOFeu9Oi9X63dkS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781322394; c=relaxed/simple;
	bh=TKTNmjjIfigRefwHRcKJRn41qYClyZrC/Q0vXY0DIgI=;
	h=To:Subject:From:Message-Id:Date; b=mTUzbbEDr5my5s4HrMNJBI9/YuqhAT+di9A74et4tvcXrAIsZ2Nl+g4tiXqn3RIv/qivTQC1V5soMhv1BCohz08ngaCJYcCL+r8u5Qn6hRtkhI8nFGVJXS2w3Yzl7ZJ5rVxuimriau7cnYnRRbwVMirimk/N4qkqmK4129QYD6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj+CCofJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj+CCofJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB233C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781322393;
	bh=TKTNmjjIfigRefwHRcKJRn41qYClyZrC/Q0vXY0DIgI=;
	h=To:Subject:From:Date:From;
	b=oj+CCofJC5h3r+R3uE6V2yezNGm51D4Kx30pyeCP7fpWbH5FeQ3uljsy6g9hIkfQ9
	 UxO3ylXENpQjx7mxCRp0+7Q/f0333UhhAZefA2wacNeHECLqdKm/nfSWj2tiSwwrw+
	 bmnqznM+ibmZHPoh4NrrC2/GlMGc3cNf8cCfyp5eoxp1FkcKSBXgId/6bNg1N4gZVk
	 TERpX4qaK7CMb6KlPdmEpYh4Ueqbshy3ocqMnIU2OS0im+MhHaS1HY5LKfozzKdjeb
	 PgEDAUpoh5cjSYRwspQK80OSCXMApB2mkaG4XZcdrxLonSAcNBY/MpD4OcanNT0uw1
	 DbOt5utpi++PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DD3CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132239369.22745.11968421635868291917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0d4249b759957b5f1e470f9bc8b3ba66fa446bf0bfc35c55618994397b7b94
Date: Sat, 13 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781322393
