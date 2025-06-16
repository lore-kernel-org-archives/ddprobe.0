Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139B43C2F
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750077594; cv=none; b=uXo72b6o+iSnIJwIMFO5i5Jr1PqhocXXLH+OJ8xlhv+sFzxVLsrY7HGjhtXXm1C6xTc6AoIX0BYLkF8wMdFLzwkGqah13N5IEs2W2wm4ZlaEBw+NIwXa4kjmReHc2+B7BfLJnNyWL8hxVHNP9GEzTpTqGenl/04SyMTIE569Z0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750077594; c=relaxed/simple;
	bh=fPMaTo216ZTt6O9LCkCAVOVLkKcszr2ZArjKPUqJSIA=;
	h=To:Subject:From:Message-Id:Date; b=fhIYTPFiz9AVLAV2njcnk8b1ZszkwpbLNOkoSR4Keab3EB5y/ONigoKcmKJyR2IRLELC5od/LYqK/CcUDhQUOCcP78tQiOY+yvOmI+dc0aCZVS7UqdPLoe42ZsiHEOesbIelrn9xMsakaNcwPoePB/+l8DGUP1NRvE4RVZzv6eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFjS+oN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFjS+oN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B5C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750077593;
	bh=fPMaTo216ZTt6O9LCkCAVOVLkKcszr2ZArjKPUqJSIA=;
	h=To:Subject:From:Date:From;
	b=VFjS+oN2DayFS8BuVplqNKZeVXzhKuEY4R0Mh2dxY1JwkgDo74eg7fI4AGSEyQHqj
	 xsy5TDBKDC8CIT9iKs8RK66Z61qaZlRkuq3yJxOvEWPYiMS2m9Bj802K8jik4fkE4H
	 DKHdGRZGizdDbwBDXh3+7g4WOaBUsy/ngtXjmajEafrbhvddTn0Y70PP6/9n2EgYBY
	 0exLbqzkJy5bT/si0lcQIVmtZ2Z5HhIl7WT4UeOuSL4moQ+dto2YbBST+1rtMK77ud
	 J3MYgBwMFx/iNwTZuEdgiGTw7LnHnQqQkDsTpggsaLrpHeBu8Xg10Mpg/Qpmo/CdRx
	 GDEVo5ycMuciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FDC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007759358.28507.8461675628760263203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52653fa30bee61d2fd256d18e79d4ea50da81e8e3d18b81fe063f69cdb614a42
Date: Mon, 16 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750077593
