Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35847207A09
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769041434; cv=none; b=EPUwqjOtlhhdfiXHWhN0bbttDviQ52S931j7H7kIkmLXuPDNt3JxHld2w0FkMMuO2w9J3mj6ju1Gpqke7oAVfmBDdCnYAQ82zCuvlu+STf6gf/7p4erEMKpAwubshIqVKxa6CBeioDh7OKkPAssszxDaM1Zala2TzpMjB98Wccw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769041434; c=relaxed/simple;
	bh=nr8GtWVntsHcBPSuczVdby0OmdKfeFZ8gL5JgGQy9yA=;
	h=To:Subject:From:Message-Id:Date; b=GXdydG1VdYNUHuzAJ2Wrt0GGSHWhCkRfIrUzUHmrCE+ol3QkYgehhLF5Iyj0CPsDDGifXEsR+rxRxx6WjXsLCkGzbfFvfrm0K3xopOj1O74XWerIiXYp98Ihfs1kqzizaX5A1x1ayP9FSGE2qjLVf7Sc98n+NPUqWenpoTYx4Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv2DGphX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv2DGphX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC1CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769041433;
	bh=nr8GtWVntsHcBPSuczVdby0OmdKfeFZ8gL5JgGQy9yA=;
	h=To:Subject:From:Date:From;
	b=Fv2DGphXPcv6t+OJt98S/kogj8Z+8mjHZfPrvCxnJCYPsDoegXeHp0sopv5/s3KdZ
	 qZqiz5gjVizol55nejbIxAVJ6FP5xhfid8VueFDlPXeaGaWTpUyO3ohtSVLLnT7Z9U
	 HL/vOjzEYDFCI7H8Z2eRCScAkMx/+jmGM0A5g/0O4Nanmw5l+u8cCKOYawg3Z3Ckot
	 wNcF1Vp+cfHGAdUugwcs07gg9wKaGMJNv54XvD3NhTWv5zM/6bTlJQBHn2LuTB3dty
	 GG2CvnsDrAsmRgiple2y3q4CFcZMDpfCnDNX0nB0qpyXUIONgONCKRDItWVpnJ/huR
	 5azov3/hJF7VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F0C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904143358.21299.17920569711481936429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cbac94662f088c77e69dbb1507484019e22679d9212acf7a7ae69ba04ffc2b
Date: Thu, 22 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769041433
