Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AC63AAF64
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789681834; cv=none; b=AwcKfO3nGUcIcKJqml42+aDpZUmzb2AFdYwiCB0Ezv8+XYApgLcWnCiU+/r+gmaSVG/iNSEHpEy1snGClnROMw5R9J+zWr246wx6ke/49oASOlYBQQHlLKwFeBAr+PbZuWyVFLlxZWgEAMzhvkNx9ltF5xTCMpMLeNCFS8VrFE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789681834; c=relaxed/simple;
	bh=RrY12JS9+ySS/GHxiMfU1YtDSTaqq8UrfoKn3ODbekY=;
	h=To:Subject:From:Message-Id:Date; b=KEFx1aTaKSGUN/2uf8zJ5JM29nF0pHhjizRBuVxclKItvcUFQ6T8YbJ8nk/Wwj45LxgszBjPZQAuuT7z7sls0Lcc1gZSCDyAbjMrWEa94qpr2OOh65wkFaj49S9ANZmu5OD33SfPP82IxJ+N+8dgomJ4DBqk4ipZ7wqCX0N4sn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM4Pz+5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM4Pz+5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02C2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789681833;
	bh=RrY12JS9+ySS/GHxiMfU1YtDSTaqq8UrfoKn3ODbekY=;
	h=To:Subject:From:Date:From;
	b=hM4Pz+5sghq6BxvG5weF18mjko7dNCI7D4AzdZEwCgoit1M5mS2juBoIyMN5VZF35
	 Vm9ikrrl/CHhxXIyCQs8BJTyjbFSLYk1C4vqhyAeClT2daPSGKiqlVASbpY8ye6EZ6
	 tJcWCWxYYEbv9pxvj5EdZa4iPAA/bSvBT6apiwdElH4AeXNs7+e/vt1tIl6rQn2sHb
	 WbjZPDPRmDiYRW/1djtb+/jxMYOehR4oGVR7WA+TgMh+CRm0g9toA7oXNgufHDqu0w
	 ULsADGCx7FO6jQGq1NOmyuKaM8+ECsQR3irhdgatmHGogm0D4rivIqDA+B5hroiUNo
	 T9vJTMn2q4eNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC86FC982D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968183369.1941.14652676199680734395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7f8d29e30d0d298ddc0781edaf233b04ffc6645e3bf00815dd1e120cd85cf6
Date: Thu, 17 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789681833
