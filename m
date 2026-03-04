Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B8B375AD3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772596494; cv=none; b=dOfbo0sZw078quKPSQWT77Hpm4oh9rv4buoQQwnsS/pUCgzXjE3QglbXIY06VYtnoO5dtOMqt6LJHvrMENAM0T3BKBPOBiwlfeptpEsjLOr7t7JGv8LPgj/GxuiQ8hg6ydSkn/5DEypFCAnEi8sltJG/dKYEF5dk0uZb5kOu1II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772596494; c=relaxed/simple;
	bh=QYf4Jlzv9LiqNr82cTDKOS2rLexxYvU+F4iGQMYcFck=;
	h=To:Subject:From:Message-Id:Date; b=YNVL3R3xB1aeqJNYlhGPNakOr2DO5I/7VGbJw/GomryT/dRQRWkadMMB7FXAwWP8KGi7S1QCovMFRy9gehgu9Xh42vbPs3POCq42eQ3KAPesLZ+naYEtJY8VrH/6CeyHJ6bESPccKS/oHmos0sVDjOJ5Ia6EeXldE8oZ8/9dCkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtGXuT+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtGXuT+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96CFC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772596493;
	bh=QYf4Jlzv9LiqNr82cTDKOS2rLexxYvU+F4iGQMYcFck=;
	h=To:Subject:From:Date:From;
	b=JtGXuT+OrkTyqJ53kD+IvCmY6k4XlG8L2yd7HSApMWXDrxo7jQ0amYj4Q7KOiz3x1
	 SHK85FfV+adN/IYmwhHnAWkasrkAcjFYoFqAlpOu0u7MVpmsWgz3ad9TCIM1kQ43Y4
	 w94fBl9JGacwszuyq8fcNAgHLlwntrPud5tvuL7PKJG3Zq5md6UNJx1YUqzDBdOIsd
	 vYFlMtPbbFDUDkW37DuREs8RJ3S6KEUxmW35UcYiFGiDg18vo4ji0oH5obzdQWVwUS
	 XFGt2+MQ+rNvMJYi9yWi27uf65gk4XiiSD/tp7AcE2MXoXf4UPoC2XT+4cxRG3xo0t
	 zWUN2U/z2v2DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9577BEDEC03
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259649360.23719.12448445883736930882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46336e0e3c563bf7ee26779cacb8235b14cc51ec5dc65616daba45c215cb95fd
Date: Wed, 04 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772596493
