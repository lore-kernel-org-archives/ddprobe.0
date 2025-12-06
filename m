Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF772F28FB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764984774; cv=none; b=vDmKKbM6BUBQUhot0d0tvHL3CJWQCKsBbtvYXBJDB58cFM/jJY4kbIIOOOfUo4Ju44iDUjw9saQBOHKsDtp1nzv6V3HYGTlR+lvW4bAdySFs1L6xWceSFxGrehaaKFlf5gNu19Uvl/GNo5gz8FufyD6NjmTB/lXloeX5mW6RqBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764984774; c=relaxed/simple;
	bh=4K1IEhTzbZlWLhb8k76/zgMmx3EUvED3M2bjc/pycWE=;
	h=To:Subject:From:Message-Id:Date; b=ec0cNd3RUmP/5sSWd4kmnl4Dj1jYff/kAxvQQI0f44D6lPpDvnAYUPDvNv7P6NQHAAIQ72d483ZPsv04DAEBOLaXtkPOMm4E6MWxKrPnLN03g4DLeqXlf8R0BH+Ge2bG2dbG+Gp+Qz3ZgRDLVr/mYlyYu4JZBBDXE12YfRDBkIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2PxEUj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2PxEUj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD378C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764984773;
	bh=4K1IEhTzbZlWLhb8k76/zgMmx3EUvED3M2bjc/pycWE=;
	h=To:Subject:From:Date:From;
	b=F2PxEUj+yuz59X5eH7CrsICTz1Lv0wuArGpCVzItjBNALFu39pEg28lWGcszvs0/J
	 reEmtjAt/Bp3NYV9JZfhy3OsnK8MHXyyY/UIHwhtEaw5bpJoBGMvRaJCfnzAjsrN22
	 Hq6hL80QqfXecJw64R6KvmM3aBlkbU7ZxsKQifkrKfOS2g8hKfvc00w69QTDwbOEd8
	 pqVz5BZEZb0dmd82K+8n25yDHLX5J7a5DRMoNgDCMThpmU/gePjnUbKvdNEgyKc6E6
	 yk6FlHTb86kYKAgoYtExc+i9hlkhw/Yk0oqPb6vdOCBb4VAGQyjdbLpjiQtKdeY2iH
	 UPIdOw0TYl1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2446D3ABD0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498477363.12248.6156197663313243783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2411b287f5b798156a6b1f806f88e859a7eaaed7fe33654465bfac49d80e0d4e
Date: Sat, 06 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764984773
