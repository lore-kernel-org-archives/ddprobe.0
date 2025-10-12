Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257941FDA
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760240994; cv=none; b=Kpcd9knaWCfG6jJ/kp6chzWYCkB0nwio6hiS9nvceMhHZTRmGNAD4bcpoXkA5a+NKWcXb/kmRwrqdmGM3j/5897MyKJ3JGgdpF3wTz2M7tVo8oittj4kPXoqZnVgt79hZMEtarw0mPkO5kSDDdYAF0RbLSvpV5+zuGPnrfPu0Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760240994; c=relaxed/simple;
	bh=j09qV0Su0YY6r1WvUmRwt+bMelfnBq4IAce/althw4Q=;
	h=To:Subject:From:Message-Id:Date; b=P1/uy0G0ZSDo1HBE9mwNLTl42gUDrhWphqDrPm9NwavL9Qn39kqPIq8hYLR4jwZ4FTlV6IPva/JBLoBcVGNcomAaPmn6bAzBROp8xtEoi+gscaYKqW0yc+HRaMH1naW/v3/dS5EiT95NTNHNz/5S2xz57ksC1tsoqpytayrN3YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDpnotE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDpnotE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C7FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760240993;
	bh=j09qV0Su0YY6r1WvUmRwt+bMelfnBq4IAce/althw4Q=;
	h=To:Subject:From:Date:From;
	b=KDpnotE2RBx1OAuOtbABpzi570AW7lHoORyO86fdcDDTOMzKZ7hlJBJ+Rfwd+Ej4c
	 bpuQEn2l4jtSlRhfNqjfeq2hbRR+Sfik/83FGlf8OuFgTUPvO80OZ9cDd52miC6Tei
	 /5DqyzwG6Uhwi3jIVaCFLOZeU4XahFWQziPjqRAtPZ3aZtg9OFQVotrp+Uvjhnydah
	 fx958yQDLT1bqdxqoeJkre5pBaCIkacQyIWKy+zVwrzQ07KNPMMVNwxuvBVPL29Xq4
	 nlBi82qsnz4HU9/tpP9SKY3H1+/CU6TwnwYX5hS+TZQG6DyGF8mFlPI3gvSKknW9Pu
	 uQ3db5H66in/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AB9CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024099357.23322.8044755086184795241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8972dd150cdcb6ac7fef521130c449ed985678c223d174064d6ff1ae9ca3430
Date: Sun, 12 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760240993
