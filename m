Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF79B1C6BF
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710690497; cv=none; b=DWEtzVA8HTQsHhrbvZ3Ii7rp4jdrlqeWtehzepsgfe8GB1RR0/WvwJlKUI3LfF/hSU2ESkLU4PGf5kLavUOgohizIsOFObt5ZPEky2C6WtN8Rq5Kpt+GKsHznixboWYKYD/JpD76JQo9mb511iKMgQWqw6Q+Btjos4KDhhkxPQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710690497; c=relaxed/simple;
	bh=EgvLy4bjuJ5bEjM3EukBGjLJhZHKQYB4uwF+PYy1hhI=;
	h=To:Subject:From:Message-Id:Date; b=h8aAM6v5nQw7MP7S+Q9X/KU+9X5Z+APKjNEBw+I0O+uomVOxpekN6qRb0EW9M/33SPTtouYCP82EeA2ruGzs5OpmrkCgX6u0F1R+IixVmE51owJXJsxG9HZpgep7YmBgUh3fyPPPZiCluLgR6CeZAQhMNDSKNhH7M7+4zZrKJxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUd0loaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUd0loaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C818C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710690496;
	bh=EgvLy4bjuJ5bEjM3EukBGjLJhZHKQYB4uwF+PYy1hhI=;
	h=To:Subject:From:Date:From;
	b=NUd0loaIoEqecKBfXG940EAitZFXz/IpqEMbViLbUn2KT6P5rqEQdWlAqjd1YEaMm
	 2B45zXIfzsFkMaMJCTiUZOzBj2lcq+sE6LIQn6T88WvqYGYCiaWYOA95ZHydsXTeXS
	 ysn56hyEvKlCdeIzfxRxDMZu25TW/4mwvMGhz481F2zZkjQWfXIFJ7D1+ac3d/s7U9
	 DO8wMjFF5kEhDUjBcufAbxWqIV89JPJBLf96nr1WFeo2TKxlMNkB9MoQsGbVk3wF5X
	 nRzriR25y/Ex8/YQcCF5q0j1/L3bLy9YQEGw4btMcUMAVuoZUV+2N8kP8B/5HjM7xf
	 NPkm4YmTzs76g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C183C54E67
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171069049637.1504.3584454459311589598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce3b7bcfbc628a825f45b773812ec6460c3c8468b8333d7301ca15eb1ca8880
Date: Sun, 17 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710690496
