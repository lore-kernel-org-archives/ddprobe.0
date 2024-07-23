Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3139B647
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721706354; cv=none; b=RdBp0BlNeQT2jsWqLI5WdgZBbcwxqZ920dARSLtGgWriigTH0t3rjB2Kfk0uzb55k4NmXBsSvArZ9rWBgFM4nTWkHTAdKGjUVTB/lwvEM1MRKaCPiQgriZQoTO+HSEhR8JntjFW38Mv2J9RxEXdkKCelBGcJUUsXrm7Han9BqMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721706354; c=relaxed/simple;
	bh=JKYKEvo7L2KGEqfGSMw0zxJTocJPVVFlZJodUT1YS8Y=;
	h=To:Subject:From:Message-Id:Date; b=X1p6BvSxDdD60WqPlDrMZlNNCd5cNyCzEQRQ7nQrIWuWpPJ12w0WoFdmzXjgwmVIr8/V25TX3lULWizhWJQjsedq7bDuJZkfr3jVet2rwyJkAbdjxUKWQ7WemLZrXOyKihRXJuRVndG4on8quZrom6fXVdunuTvJEGVut/lsQVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=embkJO4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="embkJO4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6318C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721706353;
	bh=JKYKEvo7L2KGEqfGSMw0zxJTocJPVVFlZJodUT1YS8Y=;
	h=To:Subject:From:Date:From;
	b=embkJO4egEGjpsD8BUOl4kTEYWjpAtROcaYLgMkAblxYtRQwJSVj3cC857XuL1yB4
	 VwxIjBr3PXYaBbgZiVoQbieYoCWtAIoF8IAIusGMjzqFpXQ+HZ+7TusifLCztk0Kdi
	 bQk2LzssOKklnNNztp9LgfzG1d1W14Zc9h76EBj1OvDoZ+OOd6tXM9/4e/mfEsYZWQ
	 YGYDfBEi/7OENHTEgwEgT1ZNsUbyxV0g16mZiCfOzt8M8JQJuf8VikpxeSCdE6sivB
	 /UcA7HiAXByqFpLEY6V9zUYnCUAC4afZPFN4vafHwXrieYGIm7/mIsdywH+fZg/4IS
	 wJqZHk54mnDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A014CC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170635363.30558.18378027229719411048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbebad1a5d3e5ace802aa9598339958ecb0cb763b5a23a3cb0b08f69b8359c2e
Date: Tue, 23 Jul 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721706353
