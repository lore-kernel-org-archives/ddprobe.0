Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A0C28C037
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766637234; cv=none; b=SOPSfwfg1g7frtSUyLJlQaR3r12zqzxCoqtZXVoEgcy1RZ0FWF6ebxvzHz8KCIwKtoWkruDSbUgRouJDRug23SuJhTNAy/Cnoz7yCUgjM/UqE4Qez5lhIOB4Rh7RtUCsVIHeKshl40i2A7P4WfUON5lt15pf48/cReNiqJznUIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766637234; c=relaxed/simple;
	bh=R0Vpiow9mUeEaHHT6gbXtI7SplMYvG408oEJFrUfjFg=;
	h=To:Subject:From:Message-Id:Date; b=smaK8nn6jZXEwSL5yoOd244FAJtlOWLmIKudIxAE9l46b2U4JcMIEvMPmgJcOQeYgrlKvDNmISlWo0WpHjSXz4mMg73no+xXveYjx2Gsu45UOOMHvidVLxAlbauIEJ0VLlYSkXORIXxVLbloCRjvRhVG/SPiAjmKuVjzsP+THYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2TvOnPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2TvOnPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D01C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766637233;
	bh=R0Vpiow9mUeEaHHT6gbXtI7SplMYvG408oEJFrUfjFg=;
	h=To:Subject:From:Date:From;
	b=Y2TvOnPqXHo6OBhYGZWeEjBWVJLUNbomGLx+L3pGxuYw6csSvGbk+tw2GWkWhD/Z1
	 WLUcubiq398sNs8paMjP2vA5cwdaZFUQMqPgH0VcPAFxpEIRypJ/3D1BiYTl/NmqYP
	 FWJesXA1T+xhImHhVdHu/Fy81JT5l/V13V853b9Dika4stV6JL7HyNcofwyOEO0zKG
	 a0YTK9TE9MuNPdmDlL22xt4R0qoNS7QZ7Q1FaEo53Ix/ESTl2YgfuP2/laYSEDw5hF
	 6W6w1h8Lnjb6Y+n0H3auvtKWGqEzmYiaKExCihaTSvFz3tXy+ZxrKlVAOSEIVmdkTN
	 QdityNSfSGvHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F863E784BF
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663723357.23805.470786882865968304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3728a541aeb186d5d183c148c3d1e68e979c2b44cf39bcadb5c8dc23ffb301
Date: Thu, 25 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766637233
