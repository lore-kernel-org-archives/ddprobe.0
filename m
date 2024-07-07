Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C77633C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720390583; cv=none; b=DyCtbrnxKf3OZZw4AEh5X/gUjaKxd6de4mJrs5Q7/S5THb3QwxhfHsLzvBjvm6ehbW2iORNpdvNYaUTRpksoZ45XSmDmcNFhEY0y56N96nQfvjRpXuB+xZj7WBHG2ViQUbfsI362BlLcQWohJZmDjqB87LtIWsYcdYAfv8gY4Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720390583; c=relaxed/simple;
	bh=wy8BknGaEwQCrwQembzdZLRKPRM4dxOTfQrMl+G5D6g=;
	h=To:Subject:From:Message-Id:Date; b=AUjKHuJh1wMPAQuY6tvKvVFBHVMgkS2CwfIOP2GCazbVuQthZj5O0ihke2kQWBZKb/4xsDh6uGbCB1LqHZMdhkhZ+7jOdoF8ok92uDgTL5XHekXMNoArRbBcbJaop1a58ubBZnqUmdRJdHqP9V+6cDnekczsY2hATrUGlVilTJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGSbnRWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGSbnRWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E77B2C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720390582;
	bh=wy8BknGaEwQCrwQembzdZLRKPRM4dxOTfQrMl+G5D6g=;
	h=To:Subject:From:Date:From;
	b=FGSbnRWdmyK+TQ72m+v5U4jyTNNPdN8DtY3lpo589KYxXW4RPpuL4oYPLcYWozGIL
	 kPrbBJAB/EmqFfOlYE8znVdDvgvZQIMrDKZmWok6Wp7x1+OhsbyCdkj3HiEpA46rqu
	 Ws5iobIMx+0vOToslFJFNvXUtzqy176IZKRZc/j7cUWNjQXuMgc0npBiUwgA45vjx/
	 awYh3uKMr2/DQ4JGb2tNrt0FyqJsgKpGtWFIG+zEbbQCcVGzw7gzH5koIwTzDQp6rA
	 gUG8L+HzwPJn5Fn0QCklyN5+Dd1+cbcMiN2/lrNiLqM0C0w/UtwuTJMd+8ry+6K18G
	 NY5rXR5o6UjlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB49EC38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039058278.16253.4449876941328263141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26a1da51c2632da04979cb860ccc1d32bc47a13920b54a852bf78831495038c
Date: Sun, 07 Jul 2024 22:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720390582
