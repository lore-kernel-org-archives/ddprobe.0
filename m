Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FE01A705C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753459195; cv=none; b=lB4K2Omr684LrvqEhY1zGkk/xPkimC2Aj3+AWynqTiP5QEXHJwEH/XTVDh5JiWHGQtokhXErf+Ip2YwoNbGc6j4vz1RpNe4sjcwE+P75J/xp6GXh/iryDWrDjIkiBLaZSF2rs+VCVY+WNkavjL/rDGQU1uN4Vf5F9u+HTNhxNdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753459195; c=relaxed/simple;
	bh=pENOBBce3smUtj5/QEQH7yDcbnqxHYj+mEala1uKWhA=;
	h=To:Subject:From:Message-Id:Date; b=AZXjJVy/fgABBmc2oHh8ohX4HZPq8UauW5CgqjHW5w5iNZKKenBPN+Kih4TV8z9D4epZAjVHfbiDWOwL4d2T8RnpyZlD+IDaJZk0AVOlW+h9WFHzvSs5bpuCRRXdXx79BBRF3gIMzmYajaFOtHJoPwhsy1mBtZ++tuuVfnDAxmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfnXDFmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfnXDFmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D132C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753459193;
	bh=pENOBBce3smUtj5/QEQH7yDcbnqxHYj+mEala1uKWhA=;
	h=To:Subject:From:Date:From;
	b=KfnXDFmDG3iyi/anFsY1VTxQdjywRUwoGU/b+nGnLS2Tk+7YYxPRM4OprIH93A7Ah
	 TVWGaPVPl4BG/r0FO8numsll4sgihpZgJ0D/9tIjV/IKQLuUMG8x8pR1hrxMt7Q69s
	 afgym5kthl2/M0f09mY5AYs9PZ8uezmnwR/Akry6cI90vtbEf+si/go6h45Y4Ruxa1
	 AbbMvocdaCHpsv3eVKpiwGt6HGSsMj5r9cMnIAekT6AtY07LnihTGxsk6FAR7UVOXQ
	 dQ+eCfmvg8z2x3XrLxceEawX2P0ajXrR7ynEVjSmi6UJd9VrpYXRpkLd1FY3St4muN
	 NRyuXnFWNxtbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3AAC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345919357.17418.6153441781135252823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4cdcd9610afe5c9a46184597af9d8035ac9a0276b3326d8ec0866ea6359ad8
Date: Fri, 25 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753459193
