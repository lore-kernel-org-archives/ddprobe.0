Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCC644CF44
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781625394; cv=none; b=AnsmCifmaI1unv3/aRvj1Yg3E/nvjaZu7h8Qh7fVmwslG5N62lp2IAsx7yGlMSxHonv5cVjAyS1koVY86YXoMxCTR078jlIcocZ13Tp4S2irQTIZZsLB5IuduZQqCp5CEwNIMpDtjm9akbpU3Vk7HZYagSKT5R0C4gtxzaPz2P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781625394; c=relaxed/simple;
	bh=MVTIugqykddIIfNmLcbAUWZ2Aefdel3ptnW5rEBPs0A=;
	h=To:Subject:From:Message-Id:Date; b=nyirignp2VcSKc6ZMIRmc8fM1jvPFbCGphQg4wf8OrBFBc/nR7NOT5leHSUAmajCWGtxZH0zltYbiS6dJLDnFQEyt2GJLwQ3p2tYCqhC10L4lncS8Jm+/Xv1CQgO/XK6tRE7+LICmDd4O9pIU7BeQrkSp2MueAhZBHVQ4aOyOWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfbWVTix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfbWVTix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DD6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781625393;
	bh=MVTIugqykddIIfNmLcbAUWZ2Aefdel3ptnW5rEBPs0A=;
	h=To:Subject:From:Date:From;
	b=lfbWVTixVHVgq4cRQCESilfRzslJALmFpzszAdcah3YbM+FMiWEVX1t3fnGyjc/B0
	 4oCOD4hr2RlYZL7aOxY/y8YcRnOcyU7LF1Gm7Sn8a2YtCsSZWwmU7nZVth9+cFXS85
	 UotV4YOS3c/UwYNARdPFIMsTj7hywpWStR/KLjqcb4QWGd6CbUutxY39gWY5BceK3G
	 m2rVkHV1VihW1t21dJzCVy5wlG+VAIEws1z+yaZ1YmkSLK4oue48JA6d8HGTMQdQHX
	 O7piPjZqxHeJVswZ6c0DmF89336ztEsrWNEPx/RFjMImxv1O0l96dLZ2OCBjSJzxz1
	 /lY/HRC7JuJfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3800CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162539378.1517.10900853246616763310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cf1c2ebeee8cfe6327753e348094fc1243c2f10f62d42624657f8410b7e4ab
Date: Tue, 16 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781625393
