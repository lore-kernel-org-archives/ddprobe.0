Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A05425DCE9
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744199994; cv=none; b=Jtg50d2+6xt340JSMMbXX8AlamPwUus3AbGb1odyjUom4cBtptYRYhyc5F31tGddPyYvKmJueem6zTG1SlSWhU7V24uNYIxYzT8WJ/Nz982Sx/EBgHD6cf84sWjL3Lqy6bw5ifNuybuqLdc5MHBmg0Vw/pGsQSvdhPLuym4jjtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744199994; c=relaxed/simple;
	bh=McS0SRATsXItlbfLuBUXgSaps1ovpgJ9Kf8rjRi/ZaU=;
	h=To:Subject:From:Message-Id:Date; b=alu2UzvuC+iHd0AQA4H/GXBjzLlx09brkg2tvvOx+nGDVOj2He4RfHqRjF4H8us52+xoNZXnRzr9YQhRt4/N5rWyu7kN6Pr5OWEB1gtIu3DP/TQt5HsYdIfi8sHLI1EhMja3sjx83qkZDF+/sfZbenaY+Zfv8Y5EkRdAGjanV+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdOha18o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdOha18o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744199993;
	bh=McS0SRATsXItlbfLuBUXgSaps1ovpgJ9Kf8rjRi/ZaU=;
	h=To:Subject:From:Date:From;
	b=HdOha18ow0DKoVKHCCq3NDyAc+MUkbWmDkpfjqVMmlVytaglKtdfSGgXlBHJ5itg4
	 1OBn9RBT6VmaCAnFiU1eO+6uPD9BfXBFOBkt/Dz8w+ekq51nb1m8ieQfWy1SKW8G6U
	 gwxrxWBwQOgNKp6uEbnyJLrsYZfjinaCcBf/wsA/i2LXgl5ujXev18zaZAlAuCkgL0
	 jfwVr8zliNSj4rcmBlsvNEjvLJFUmTdmvRwW33A6FX15PPqZyogC89qhVpRRI75HL6
	 O2CItKcVQ3RBFe1I+9bqCXyiLg54W6kU/GwD8CNJV3aagCmqB9CNioCQ0YAAIFFj3P
	 ZhfwrT1HyHRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91138C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419999358.5258.8430207616449877798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a952e2032f7d85f8ff21d734db3dd742c2c7b8fdecb28fb0813cb081b314f34b
Date: Wed, 09 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744199993
