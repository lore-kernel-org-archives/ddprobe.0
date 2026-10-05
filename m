Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C6214A84
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791225634; cv=none; b=jM2FdkQMBILMeMsVu6evz+1hkU93CN2cTn8ADy9Jr7xwwb9M+kDNp0St/N1ZwTxcyWLeOyC8/TqfP419YKRVJO44SpdLMJO48KC5vhYGcGRm1EkNHEWxcsctETJOdLx3R4K3FjAo3JFb1fIzjRuREE/EDm2cyYDuByb9VFk1dxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791225634; c=relaxed/simple;
	bh=ZuBiDuhoXc+SHzgWYHZfyia3XiVCx0WYNVYaAoZlGtY=;
	h=To:Subject:From:Message-Id:Date; b=Q+rYbmmWDmQFOjZAnhJU1lnUVbaGR0WSCQxdhMqy5Dpxtj9R7GBfyx14VYxg/Atgo+IVaD2z9u3N3mqykATzcbsGbSdXv0l9dhYXNQOu7F1OON9Uc6n/rCtVsNojt6yBAK7ImJbtikFtUtttdXJk96kNsmoJRiNLmLnivb7IHjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxXcdaM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxXcdaM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDADEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791225633;
	bh=ZuBiDuhoXc+SHzgWYHZfyia3XiVCx0WYNVYaAoZlGtY=;
	h=To:Subject:From:Date:From;
	b=NxXcdaM3N2EtmLOFUIADWA9YoZ5/v4MM4OVdLoewJz53mK2ELKJmTLjhVnBLptxUz
	 WW/DdWLihKeBOek0Fjcx6cnA8aNWBWACS9rCyukfFOfrkTo3tCiF+6QgLsW3POi3dz
	 nIEjE2atbexrbdhnwpUtuSrFornpz7EE/ldKFbBtlWXYNKK3Xq4dwKg6Lux9UGX6Zk
	 wFicZ2uNOPKq9fb9Zvz6XeCKQdcYHfuK3sxMWP5eHJ6GHsMKBV+z/aa7RMm3wnPeH+
	 bXgdezSd0AgT+pfOEeffhCzO9b0IaqhnesJ5sXWFErGcVZTc1tWjENqT38Jn+eFGFD
	 4jty5jpUDfDIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0098CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122563369.11234.11404013063656613548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b771b6dab44df8cc03b8b7b328b963c0525f50611825cfca72af214850d040b0
Date: Mon, 05 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791225633
