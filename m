Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C74241679
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760038193; cv=none; b=WQBfvMrDM4P5Qo50WFJqoI4jQkvER7sNcHOgrg1KzYRniy1QLqppsfFQx3X67qEQr7BQpV7mxGKYY4yE4U2C+XxviNF+2t3fLVw4H+ZQpbud2KGsAnr45iWiGl4wZc8tgT2ikz09xhE+uMPfCo2VpMQMd1W8FV5HckJD/mymf9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760038193; c=relaxed/simple;
	bh=R55o2ZJbVmT+kzAVRmvTzaDm7R0hF2GaXvEZJ1tK3W4=;
	h=To:Subject:From:Message-Id:Date; b=HwrdWgBD7v48Pl1jgrmyNA7airJURrX+jYtl841S1xOm7DefpD4dO4VF3P/IFE2/WmC/sLRmzpCzYb/djH+UqzzdtnyKLj9c3mkemU2vuFdOvAlFmpfrqC53mqbe8BHl+ER9pSp4PpaxPSGpQDMWMLMczbWViuMvIznkIcPTXdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uX6bWMuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uX6bWMuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CB9C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760038193;
	bh=R55o2ZJbVmT+kzAVRmvTzaDm7R0hF2GaXvEZJ1tK3W4=;
	h=To:Subject:From:Date:From;
	b=uX6bWMufUFmVrfevrAIyaJRoZAf3+RiowNLJLJqRkTuofnDIo9yqa3uv4DaLHXVJc
	 9HsoPrFbyXA2Vt9qy0cuJq+liuTB4UXCc9HFwSgc1XJ1M/la5SW50miM8E36uMhiXE
	 3BNprk3ZRhPmlX9nFeq0UEWsKRGkQlJ0wuTFseRzTWVaiZLMTeQEY1CgEm7WHeez1c
	 2CwD2ueUv7I8zsGXDOLls4wmyEkDQOmBnUo1xipKjNaw+if+TVZ7fyJAjDBUUOa33z
	 u/jmEZXd5PxDRsOVQzLMwa+yq/oLOUAU/2CJ/o8SUUuzM7ylwmF310UmiPvDSYsGhz
	 5K/M5MVrlaSKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92818CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003819359.26769.15291971191948501098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b650919ce074e56c995c216800e6b4ff8fba5ae3ec72778798221552ab0d539b
Date: Thu, 09 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760038193
