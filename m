Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B65D4B1E73
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746584394; cv=none; b=SeNrzn059lM0XztGz1LvRXFX+eUcbqLQoqRIErqaJqhpCbAgaR6Xy64DalMGDVgybggRPIYYDjIMsV5Xpcq3Z3WByvRRchkdkekHWSDDWNm/CYNNeYJPxB+R0PKLhARsD08oKfH6vSsrbLBAAnevzqlQMxvoVJOEuRCfr0RhHrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746584394; c=relaxed/simple;
	bh=E/vBACnlQzVrwcx0Up5o3q4EcyjInohNeB6KpADIveo=;
	h=To:Subject:From:Message-Id:Date; b=DB+543eoI+Js3j95uw9k1UaxSYPkulEWx5oCMBRQUjjS1ZeFtI2/6C0zNvHc14Aob/B24XzIF+6HiRmIU4mMK/GnxARNKcI8oFEpLPc31Z12+DutycHP9seEfs4Qwy5N4KuoCFaeUrZNQk1GTmAd5C70RQH3pRP8/I3UCBvTcxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXmBnafp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXmBnafp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D02C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746584393;
	bh=E/vBACnlQzVrwcx0Up5o3q4EcyjInohNeB6KpADIveo=;
	h=To:Subject:From:Date:From;
	b=gXmBnafpsKjnhMNfBrgtGlm7Fssp00yaaq7T7WkPBcIS1U19dgMQMJo2t0WXhWgCa
	 AeylOcUhoJOpYoUOPDivFiQDrIcMpgcXG4BJHtBZcXLnM25KVj+OjnmGhw3LdX6e92
	 Z9oxR/pKEhsmyIQ5op9TCemMXvFsf+2vdMq1ZGbhlV3l0LBeT+MXa8fvJVCagHsdKr
	 VuJWId+ir6F6gOreD34lbkmiZMGvBiK9NVgincAzFYhYt/dZRlpk6VguTsMh7ZhXsH
	 sHl9RpGc2uDFKa5OKUxevcFGM4ilb20MKTwA7Hsfpw8saJen72aUGYByhDE4vZjLJ+
	 OKAIra7Dyrecg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E52C3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658439357.10347.8074685789976780659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e3c072475106c0a7c8946bee7a22862fd86eb03f133f0bc5bd474a7734ac63
Date: Wed, 07 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746584393
