Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9661DA4E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705437497; cv=none; b=GTOHWQ/RDedQpAbB6td/QsN5oU0qBPuijeucnn02DsDaR2G828CfDI49D+P+qOdsPCoRErcxqeqZy2Z44aih+A4bacIJ+UYGAYR6pAoPBFLn0TjCLFeeDKiS4llw/SXrhiwuPcqOFEZIdJij1rTu84B4ROgPCPbiQtYEgjXHROg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705437497; c=relaxed/simple;
	bh=UOnvXZLd9nEXwyfw4739qCxZeppxpMC70b20RIuBl/w=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=lXD2tiLxqoXiKUOvapdGKt2/KS3Dg1D+LTBQNYPJ3UVuebCbhHk3zsnXRUYAhdzVd/q0ViU/96ilP2BImBletn/WfUd25YBD1iPLSt+qcGiI/o4ngn7IM5xB17ROr32N7fX0zMi1GYSeUsIf1n4YkheI5iN+mznRP3atOz55H0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8FKj3vZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8FKj3vZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD0FC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705437496;
	bh=UOnvXZLd9nEXwyfw4739qCxZeppxpMC70b20RIuBl/w=;
	h=To:Subject:From:Date:From;
	b=T8FKj3vZTVEsccUOVbsK3qtj6iiTMWZAAjpukfSI7NM54udi0ot0vSyWqcNMyrNxb
	 mJFPZHh1Wr8CetyLTIkCXle315qy3V/CTjVveWqxc0NczDyj8x889SANMfIVg2eA8H
	 hm56T86m3lnEcYgMavIyn3s9/W1zGZ+py8ttPX8sIMvDM0Fe8QwwohtQe9mR4Cl7KA
	 M7BUElNzxNI4BDLeq9DOnlbR3Tq54XbZUsjU5V41Z9/gWiCca1uctPt0XLdJrlp/FG
	 xd2HQBq1zd/1ooGyXuICu7s7UYOKnqJ1K0uzYLcXcOFgGET24OaLGY5UXbfBSSIKG8
	 4VsrEYiQBDNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6103CC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543749638.18639.7050834047497820226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3d500c49e9260bd8ffc3d0163bf0a7559f0bd74c7e893bad07a3474f7ab22f
Date: Tue, 16 Jan 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705437496
