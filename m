Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B91B0F19
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749772794; cv=none; b=iJIRwZHk2xvxKQ+QJj57sLtnPsJIgJ6lCZwVcuZCLVo3nNNbRj55XOjC92z0ti/V4nPDOm2dpilivnfAeCoFqyvJPGx6nQ7NOq2V2+pjw3fdOdWAiSx9LQZ8JzQBrzCdrVhkkulyLns4UtJ7+cm1nkCRXikZN38Km7lrsHucQmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749772794; c=relaxed/simple;
	bh=dHJPYihA555Nbum7t98hunw/ISltAg5bXk7V10NjKz4=;
	h=To:Subject:From:Message-Id:Date; b=B0cbYBUeQpl6H412tzJxc+8Lxtjxo/aJGauDereiGU5sKJ46mObQR0A+tDx8fGARfbUdcvHXGqXFnA4wyDB99HqP5uYoWPVWpd8CEeuGS6vI+rP7+8pXCpIdDQuky/JKIA9f4wmdPhgAPO2K28EvfBXJvZL2dlOJXMj76nxYBog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFwRHY+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFwRHY+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8E4C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749772793;
	bh=dHJPYihA555Nbum7t98hunw/ISltAg5bXk7V10NjKz4=;
	h=To:Subject:From:Date:From;
	b=SFwRHY+QxQ46ujxh26y56YMhMdrMjCY8qtSKEn8pLOHKo65gJiOSsXoPDQU5jyAw+
	 NMnGksPMxulTFSY0N1lvakEjeWMqd3gb+1ahMC/qxhGpMslSLCraZaQlxf73TTi1Zr
	 98vNMZ+oBBs8GiHbuo8CTN90HwbiTS3hGBYkCl9OMM356AbUiIGsbb8hFaMt4xEljb
	 B47PqdXU75zqAVCz3/N/EW+s4IEy7DPhGGg+4ldJIhJkD9SVTFNxBt9ySkdlzREQDu
	 ocIlyxsuDvVR51oOGlundFKLEXjy5hseB6PWGQOAQibWejuhGLOUAV3O2sYVmmorVn
	 YKUzB8zU+LlLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95234C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977279360.29610.14061139652051278214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34c08c94c8d93cffe4bd774d493808d1461e77fbd985a8846edefc1dd0b9475
Date: Thu, 12 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749772793
