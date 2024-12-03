Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAFB2C697
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733188554; cv=none; b=ug3qIdO3V+kvXQuNumT5Dt4SnUZ4F6gUE7i3DGqjxUBUmpQtybiMDaHl4Y3PNg++qW/YgLkWEQVgwcZS08PKtF9pRD8k2Hwj8oAg6NJcr98Q9yLobtQy/MZMoPJAgD77Xv90R/hPEWyVGny0zBWVXmlbLQc0MkUw6aLn8XL5oIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733188554; c=relaxed/simple;
	bh=sAECyArDXMcQLg/1vMfQErZx7+kOZEqto8oyhtQnmHY=;
	h=To:Subject:From:Message-Id:Date; b=fR2fuicCY+Ecr6eeycKxikQ274+VYr0mAKyxio+Tw/Av8XO5Hy+apfTMyGBDAFZvk8w1iiT5gTKSEqWQIwEG3r82wy/JByrlfrCwwxd6I3ULFXtrXIImZW8pMGpoKNDpHx61lvozkNTik2qNg7aoyZ1Fje5vEvMCEZD+uwleyjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRv8uA2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRv8uA2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C130CC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733188553;
	bh=sAECyArDXMcQLg/1vMfQErZx7+kOZEqto8oyhtQnmHY=;
	h=To:Subject:From:Date:From;
	b=fRv8uA2m59TKP+LrFcP4SiY4eBePvin1tX3l9Ps6Xm2tyhzfm2lkHql2AUwIId5Xe
	 UCpoBXlhKH8hDTlrhDiUOG/Jy0WIVy1xY2L48owRUi7H5CmJlqXBTQlg+WAI7Kb59y
	 +NzHQDH4RBu5ZEfPbXxEbjoD2zlui0QrsuMokIQvOuXbpzXxDO1eT5+VcblqP/QKwl
	 zsjIrV6a8usimpd77p80JCDRz69rOTDZjgynDfBp8kDcdWt0zV+zqRBPGvihennVC8
	 mj72m1ZF6iFNPmCbrX5p7BCCYQlqn6F9yxL2QbHiiTxI+c7fCPWG/pE4cDscWfYuEz
	 kq6hGgdERPPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50D8E6C5E3
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318855366.32738.4190443632803002154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b598418d6e78d20fdfc05f814cbb9e9ed8b188830d151dcd1dabd62410cf04
Date: Tue, 03 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733188553
