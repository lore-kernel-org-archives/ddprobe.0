Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CCC3CB2FE
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784533714; cv=none; b=tl/9DAEhImTTPbz50+oXI38AQUmqhGGBFeK9wsFPkgGHVFb9DvYrI6oudj2KzVTxvCKJ2kZfOeHgO5zWBuhh+rpDIm7IWZVkkWjA15CvLxoDw0GpE/3PQ9mDEq42/W3x5Fp50lnnsoSjw+UjwM70RzKnoFQRYfKvMCVYv7s5pGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784533714; c=relaxed/simple;
	bh=aplvkbakyIy9c9CS0SWUjZV+tfnmv8pbnLLceNbm1Ao=;
	h=To:Subject:From:Message-Id:Date; b=b6+veESyLJmFUrH53l4WqmzAfvefB/ivXvfK37QlN+NsTSgsLSbuH6GZaq5Z4VY2L6xPtoO+Bt4I7vzWBB1TCsKQgnXq9GZi0WTPmqAuPVB9xrWKp+113Y0k5zVrMPQFkPTN5MtCpDFJerL47kociSKwnep196NzjdSBtNKcTvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtJs2Jxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtJs2Jxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E308FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784533713;
	bh=aplvkbakyIy9c9CS0SWUjZV+tfnmv8pbnLLceNbm1Ao=;
	h=To:Subject:From:Date:From;
	b=JtJs2JxuYXzY51/1TdsmFErCVQm9pNRz3NQjD/l/mZ29JNKfi4XgcxSoogE0K3qHb
	 CNCByi7yyIzFUHVy2F28hL+hpU1l+WEvCrY0t20217ATBvIS8znXjmIrX8YS1aQyqJ
	 nbUZ6waijlTreyjBFC8G/cRcofxLWhIUVowSDG6bs+FD3r81IAOF8qdbmV9eREK59a
	 JhMS/PlKVkFjEQU/F1QiZdZJ0Thc8/MLUOBuqXQWSIfgaZp6+raDTlHp6V1zU79DtR
	 ZIiev86pwQPTICLv3lK9ofRzYwgrZsy4NdLDIdopfu8/HwqKBWiLYrOLC1SkK6ls37
	 EWd04MnD4h6Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9A2C44521
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453371376.11232.5216854845117102960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2087023d877104707c1dfaa59375264755c17f7c7249a4a782a25528b1c07353
Date: Mon, 20 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784533713
