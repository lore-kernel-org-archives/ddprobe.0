Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E21161
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713658223; cv=none; b=EOtNAZVuCowUYeEENLb3jko81eRh6PZDOrpgbsnN3FUDyL5UIlOVnKgpKp+bh117z0H8Fzr41xSDMw7uc+vW39CVyy3B4hMDblELkuE63buZhB2xobUGeLlnsvRvikPHPlTa0uhZ7udtigUKvDF+kxOkfQ6W0nT+zZF92cPHk5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713658223; c=relaxed/simple;
	bh=hYfeWv/PCUYlvzMaH/IuYP2pMp3MOnYZ96SSR96yy8Q=;
	h=To:Subject:From:Message-Id:Date; b=bITM/+sf33w1vAc77g6B9ATsrmtq2aQpH5+9x96N7VJPtWEpj9y7CyTW92X71VSR2/WQ6XpPECDqOsQONHbr7sWng8dfCF3jeduXRllSV65qsf1eqdmvh8Glq5KuYreMlbBzHVT++egYYnpN1mRgWKFOIkwlMsB1vPFVrHJf1ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRQcCmij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRQcCmij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EA1C072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713658222;
	bh=hYfeWv/PCUYlvzMaH/IuYP2pMp3MOnYZ96SSR96yy8Q=;
	h=To:Subject:From:Date:From;
	b=gRQcCmij55vyVn7IDaD9fIuOIuXxkG2rqtZyExWo28BIcX7DIqDHmlrggLQ/GhD7d
	 aa0/bJMlNyhNt2/AnYSnQEUANV007ECsXW3aZmQDHOTC+R6a0R+SsgzK9s6WkmKiJO
	 S1pxinEr6UtFq2T079mZWfw0s2AFahDKWLGXDM3jCAodAYF6l3NA9/MqvlLggJUGuj
	 W36fY8tEZ/T2kuxrbfldbH98LjlyxWqb8j9Q1zCEEIzwDAqmqZxmSRFK+4EodMm3OJ
	 kECfaUcmk6Th+a3Q89MJRzexshH8GidFwsLmS1Cvrd9A/EJXPuAJBA0+ac1+uK1jbL
	 eAUyPMQPtLNOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBBCC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365822277.25388.8964027428227930196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3140dd76736e8e4d587b3b1ed541713a387296e8e88a80987b6b283d5764a006
Date: Sun, 21 Apr 2024 00:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713658222
