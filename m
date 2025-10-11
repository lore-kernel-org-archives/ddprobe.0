Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C132BD11
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760144394; cv=none; b=ZLU+dn6+PgyYt1u9ryE1fmaekvOD8R5F6/EmDFNZZ6sOwyULQeEiPnRqdd0R/e1N6vUa/N+fNVHVNe/h2icoyDsbNjv15CKNvJ1thiAd/syMmf5wmr3KB3zVo6DqJPXnxeN7i4vU5Lc3oveJMLVTULUQC2e25cQLLEqJUGutkv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760144394; c=relaxed/simple;
	bh=Nt6Bjium/+WWJ/ivpLealmwSOEHlOhCOpHwUU7m5/is=;
	h=To:Subject:From:Message-Id:Date; b=CCDNyacupNLFF7hKz8+SxD8WR5cqCRlnxXnxm4bg2m/E0xhZXJv3OmgH3OYa9W5+r1f9ufbOmDAjtfTQdf7jyFODZD3R4Fz7VmgFCfl7bZsxsHoYXLgByWaRELk6+/Y4tPegka3iOFvAWHiuK4CmF967EYSYsowsJnPoO+cmhL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/x2Gsy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/x2Gsy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E2EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760144393;
	bh=Nt6Bjium/+WWJ/ivpLealmwSOEHlOhCOpHwUU7m5/is=;
	h=To:Subject:From:Date:From;
	b=V/x2Gsy97p5MYd58SQIJ6hbCpPa8w7B8yGeQZmAS/kkTW/IlEzxqWBTa/2C/ibOUC
	 JLj86R0/oX+E66W3iFIOuHOj2FmPqSCZuXEwyaLY8lijhX8y87TKLLZJMZwQoveaxM
	 PE3mresTf/uy3Rw3KkE7NsD13juVA99VAKpnO3OYFwj7KKIlQpq1+PDS1bGEF9f7HG
	 m/lVNemI4xrscE2eju8E3qa/hgMqaTX+2smxu/qFaSG8C1X0/Aic1BrWmYlz6LidRH
	 j08Nd8m4nrcGQqFSZ13/3PAKOiS4AlSBG8mBT/8p5rfWy5akBNOWHkeNQ7wNpYHn1n
	 R0etYVWgt7r8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E0CCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014439357.13137.8343081840310739532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868d4e14172cc2ee274dc6c76063d39615147b056ae7b25a378f7e6d02c007be
Date: Sat, 11 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760144393
