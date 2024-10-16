Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE6B2144BC
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729104954; cv=none; b=MdWQIMySLX6MjhZxY27YxyCvPlV2bLT00B/ETRhX9ousmVZFqw5UAeMQGo/KRg5ZEM6tZuhDIDPUmU3K6uvGpV2559h5YCOiS54ZNHyiEFP1rSVohfb+N7vNo2o3VD2uOglR5HgIHVrXECN3UY+TPlbI4Y9S+E52DJIxVNZY5pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729104954; c=relaxed/simple;
	bh=PjM46KOg37DU0lnvG+DQLjJtGLvHlSmxpe9ukDuYfUY=;
	h=To:Subject:From:Message-Id:Date; b=QUIAzbd66nDVX9D66f3413IfBqqQWpCYg53k06RMNBac/Ja8lkrOZufrwwYLcJcZV06zGF/wMQ6b1lq9LZqDHV+A8HzM6vOZ6uwnPniTBxDYQZbZEZGppoWScIBg0TIAFLYPaoZ7mYqKsDG7/LwQP7PbDHUOk7rK+HjgDI+PiQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmD0Efhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmD0Efhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1988C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729104953;
	bh=PjM46KOg37DU0lnvG+DQLjJtGLvHlSmxpe9ukDuYfUY=;
	h=To:Subject:From:Date:From;
	b=ZmD0EfhcjQou9R17cSrv6//tvcGarcTJYA6D0B9QPMmTJJcP9PuBYUAo5HreIFn7L
	 qbv1zEoqXs8QXOIXWH+HKC3MHuKvHFMDsuntpoFKT7DCKtD7lHTiokgml5nrdNeedi
	 5kg3rs0Zh8P3tOTDIgEorSB1Vys7wJ76AeXXFHCMd79QMTY8AF3FX5PQQ+rOWTYNgw
	 wl3kCVnGivyTJKgB8RfpHSyNB8C9Cwa9pbkNqOTH5X5eSGLIIR8bn0Ks2jrnVvyr+h
	 3vPE+DyyAMzaHW39J7/qcQQGgWBkgRN4bQlNANJr0TZin5mA1KG+9r4hg/htDT/6FC
	 6pMBby/RUTy8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A8D2A53D
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172910495360.6792.17969524343517051996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e2a95b0f791bc01cc8788c52d887ef06ab532a904b7fccae32a132ff44db7f
Date: Wed, 16 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729104953
