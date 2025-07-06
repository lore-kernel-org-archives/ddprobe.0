Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B113191F6A
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751824794; cv=none; b=hmb7D2WkTemy88AD1X/WJ1/nZOQ0pIGQNYsZh5bBrKPoXZnibv5UpR+Q7TrvImctGEfEcQiDkDx37sD9L0O0LXo1kuMU5jiHOHDhxFtgh9RaKOU2d9nwEaQXD3FGbaqTkBD8HQIa0AeJ8sQ0XdNdQLNvTug4VQbzTkECDDnVrhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751824794; c=relaxed/simple;
	bh=ai3L27kfUOJ73KasK0iq0YzkqJIO30ny0kHruD4qqcs=;
	h=To:Subject:From:Message-Id:Date; b=APpcLVBV49Psz1vDk8HW8270Kt2w2iiSFaGnR/YLuQlVuLoK+fQnntJlJ7fV0kmcmv5msEP9eS0wttVMqncy5bPYW40plxdKrLACChEh/PvfhK1wBnQtaMSaxzoprFNRIoFT99m9WKCzSjvPhgbwg4Jhjziz7511j4yc79o95gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/2GsCKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/2GsCKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EADC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751824793;
	bh=ai3L27kfUOJ73KasK0iq0YzkqJIO30ny0kHruD4qqcs=;
	h=To:Subject:From:Date:From;
	b=A/2GsCKmds6O37fWHQb9vZg/oRErrZKruekSYivmal47ItCH0RLJtX0Tz/eBsMbsG
	 r3tO+ecNkVbuem+EWWPCdxoDI8LtT7na7C1YCSUi2cWCSoFRwyXkJkpyiNN1c/2tHD
	 5H8w1cIeQSrcfSSD4e7lUC0KPVpAZXK2rJn8k19DjOrC6e0Vem9lV1AHq4Hh40016u
	 KPOlmAnWiPYXAB0JFMLS6mBYCOisMIma714EQwyLwOsegawkEzuHDd9RzcEKSjcwG/
	 JPnnhiaKeCpTFZyue20F81eO45uvogwgyHpzpP/9uOk80k+SO/eJrMtQ67/lq/4x38
	 SSwcZ3SW7XBLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499BC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182479358.6455.7671449007661601128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76018eb959267a4877f5b08204d99874c93770ae1124469e786e32393003463
Date: Sun, 06 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751824793
