Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A32186A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737628554; cv=none; b=dDdoT0gITuYoHTibAKob1TB79ubIjj1R7yI4XWUnLR1kIdN9pU8U2UwWiPcEnB+y5K/fd7kAQ1fr92lAvCDWhfTQCS2tuAkpScpwkrICnDcbAAr1ycubsHWsruJROBQAE5JidZa+VJXUgabNHovq5Lyi7vLZHe37e1WVRJZeMOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737628554; c=relaxed/simple;
	bh=gnvLU1Ma3tidhsz98cuOGmYxoVoLjNmKeOMvjeIvNQk=;
	h=To:Subject:From:Message-Id:Date; b=eEhmQCg31kYxeaEgit04gXb5MCVSs9efofy4Gj+n2e+v+Z5w+RzqfamOxv3cu5aKRhKSSFSbkPKWBKwEUPffngpkrDnuvrlqOZToQyJyN8GrhHwc4F2AgBD0zJzUL87oAwwtMCfWVJBP/XOHPzd1IPyH9QMigo0cjv1VlUoFFco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgxf41ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgxf41ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB832C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737628553;
	bh=gnvLU1Ma3tidhsz98cuOGmYxoVoLjNmKeOMvjeIvNQk=;
	h=To:Subject:From:Date:From;
	b=dgxf41junLuTEOv+V0kZ8wrFHZ/3Q8NgRH8W4IwGuBmsfwhETcY2WHgP5u6KBYHnb
	 pmp5g5NkJlMMHuGAGZ8asByDgy1E0rSc5W3z4pzRiAXyQWmaA29i/m9y/ecKFkb8Nu
	 BWvHKZVwm9YsUgtm+hNS2uf2JKAnNy6wrOsTKvt4JmasdD0QM0apPj4dAVHQHYrwEo
	 yh8s/6gHsa9ZXawQ+T1iVZEwS6qnSZsykAW1sDUikPK5IypthuSfltJPRETfUGOT0+
	 ERbjDKkCrvPhZ2RldfeQ9Et/e2dDTbmvB8heUvU22m4kej60bukzt3Zfo19c3ztKNg
	 Fwxkv4nMoVYGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB9C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762855358.7628.9117227739578145192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5665992a5ab29a4ec4caee52f6aabf015f4ad683887004493fa2e5d553fd629d
Date: Thu, 23 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737628553
