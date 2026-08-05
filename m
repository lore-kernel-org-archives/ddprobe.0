Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A093590AE
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785902434; cv=none; b=CQR3w9tm6O/bzm7YOjzTfgis/JTvCzIOdsoyDdYnt5/d1cYYSSewPixX5CHlq49pz4QZEbeG/qos7Okf7wfNvQuEJ1nx/T07iucFDbwTn/skHnaUUI/5zRz2zgLWVbrIkRFh9bsRgoSEBdf6gTXZWg82MvDhnuQZfrt3vH1bhjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785902434; c=relaxed/simple;
	bh=hLpUx+aV+6AUc79a0cENDmx7zHm0ay2f0x6Q1wsAnVE=;
	h=To:Subject:From:Message-Id:Date; b=PLKxZNXhynkOtyMcfqmiNsma5jrsA2egjxcz2lFdAB339DdPE/IJ3oivJ7fNq1GO8EakzKIC67Ycr2q3Wwb2HgAzxOZ5xaDHGrADY7X8j3pUgMzsiRf0Ks3W2Jz1TfBjHCatkYoO9unXRhx5RPiMR96Lh/U0sDL8w97iCEpE2Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2nKKZov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2nKKZov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4263C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785902433;
	bh=hLpUx+aV+6AUc79a0cENDmx7zHm0ay2f0x6Q1wsAnVE=;
	h=To:Subject:From:Date:From;
	b=c2nKKZovHQwxOyAUGaGzfNAi6BWdoBgfQRhPsXWDBBtHQUwRfyyrIrV3X8vp/do9I
	 WLYhzMHQjy/xuSK0k86yCcj9WWdBrMUUzOK2GgkvvZgRUX/BiVCzLTZYFFT5EWjrMZ
	 MRKfTp0QHKq/yttgJw138IbVJfE9f96g4TSekmsn1Pk/Ce0SZnY1iPNx0RyducS9Ek
	 wSh8e02Hxnk5J7nB4S4IgfF0APEun3AP4QYi0BlSppV6PhY5JmYUZ/VBsBGY1Yi/Fc
	 rf7pPDqcPr64XRIHurY8CzSn0Su1IEJfcIRWh8pFXLGthbv3jo6y2c2WfO97sd08FU
	 +dtUWxldiJFWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0533C55182
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590243371.12713.11701769139579956089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aecd2753824ae7bce74ad4ca93d9c40066acf433fb2a2d4d5d64960a57833d2
Date: Wed, 05 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785902433
