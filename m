Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238CF45C0B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756846794; cv=none; b=csxm6ipLUJU27Mm7R7rdc/s7Fphqf2b7RaibJD37pHKPHrXczmzstkxaF04ikB9jeieq17MWKMzcHaf2qghjykZE/F1sTNpkeThKTqrqmgRDjlgMUXBFCZhWAysP4FFk5A3ijnzsHpc/9RUiXLzMIqdwUtU7uIStz7DuxHetfDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756846794; c=relaxed/simple;
	bh=H8IxwoIrZ/1krtJh63jWmbDcHRXc+qkh/9knop1HDr0=;
	h=To:Subject:From:Message-Id:Date; b=OfCSmCc0iBc11LELVotNZsOvjq7OG3Owo53pffiIvFOK1Dq1uDNcfA0x+SQIovsyuCCpkZQHK/ojAY2+J5KyWLz2/8qrZBQgi9+sIlhEuuiL5gyeXZdKRZN0+wtQ8equ+LLZLcdA19k2UJSSuyMVXvGPGTgbylKA+vQ4BLxXBSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzppdCUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzppdCUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E92C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756846793;
	bh=H8IxwoIrZ/1krtJh63jWmbDcHRXc+qkh/9knop1HDr0=;
	h=To:Subject:From:Date:From;
	b=dzppdCUZ82AaibY2w7vVSp2aPj4BfbD+noUvc78BvWBgOLwj8dtpV1XnLNeR+uGmQ
	 F2Snh2oXvJD2hFIBUm968RPzBYG3wtTGjSYWR/OQ1pePMTCv/9vX3Ba3MzB6oRD0yd
	 OSpwzgVxr8wsSctKSUD1Ic1BgK9R1mPvPp6zMxxoBiNRah8XAgKrj41u4fM6uXHnWA
	 USBR45Z3zbzq10I9RXeAEfEn25TTY6Xjg/aD6blf+WYmiW0FsRnhBJTSHT9LsWrcUU
	 GVEBzeMG05GBBEAbPLatmZiRd/Bfx2hPbnu5SwWVwdEiumr1VwZl6OqBQ3HFC/d+RJ
	 UsjQuvEtGBV2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE9CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684679358.10293.9860251568535641059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3574e34b01e45b5c2c720ca7fd4616fdd04a5ff78c19cc12f871702236cbe7ce
Date: Tue, 02 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756846793
