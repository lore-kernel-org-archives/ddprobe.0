Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A5554654
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755368394; cv=none; b=rZNHkvu9UbiDErElcl04EQty3zC7yXL6mG3DHEid7zvwxDY8fX4bP/7xtAz83eSmYmNhgzGc61n1oBcP3anpoh1V1RC0cwwrzeopmXptJFCn5+oumT09Nka0BFOjpX4speG5noNsu700O8yRgWOpVAk6xWyrRfnz2n5wyuXlUUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755368394; c=relaxed/simple;
	bh=dyghnMzSggIu91Q69sU165ZkwyX7VOwsH0KglcyZTxo=;
	h=To:Subject:From:Message-Id:Date; b=XsYPzdqs4tgxYwkyzPj2XF69SMdYb8hPelP50+4UqX316WgM/1jKDGQeCsir4hk2vEXM8BHXbhJcrdbqjE4WbZjFGd/jAwM5677CgJ2oXQUiVXJJpWwqcdnxqFqaG+nkOmUIOF7aZL+QhF57PBVzCR2W8fqkbSVBNPlV1C4jx7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx76rk0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx76rk0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A506BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755368393;
	bh=dyghnMzSggIu91Q69sU165ZkwyX7VOwsH0KglcyZTxo=;
	h=To:Subject:From:Date:From;
	b=gx76rk0HTkhKoL5cfB1r0n9lctT+9G32kA1cdMLfkNzgaoTJjC3SbQqCy3ZewQtQy
	 oO+DOz3CCtMFP3ocnqtgXzc8FDI97LiWmDEVXsWRhwsqMVhzp9Z5G/SafFYnp6SReI
	 J72q2aa8vekonwyG99Opd45WaHg85PcALCWFBHlLxWYMWfOKAU97QLHYcN+RrGzjQD
	 gPWykiNIjCV/MryMi1QXHO3Gbhtcuw5RANOB0ynizGelGUPGK1Qg50zarU1eNttpqo
	 slUdTD/wxnNn/mcPjfI3U+ov78ENe685y6SEgT/yZ0zF/T/znd+S4wKcU+QQI3raVO
	 T4Olvucf5KYDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F4CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536839357.24296.8306844766163610848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab71872595e587f52db4938657f5095d456d1e424acfe86df2251888e26dd4f
Date: Sat, 16 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755368393
