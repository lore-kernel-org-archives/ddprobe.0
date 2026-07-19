Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F9D1D0DEE
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784466514; cv=none; b=ujg91XpCs21TqV3+UgtNhWFPsnVH0WuS5jNyQueS0XGQiGfZfo5XEx/QWAM5lAgicrRdLAQt3vf0rvRJIx092FUYji93zMeQK2pH5mj2WyXxXdZljKWeJRqpA1dB9OJpbfBt9v+rqxC3cOTsGBIMJltV6vgnopG3/E0jHBsyxKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784466514; c=relaxed/simple;
	bh=vne3kNVqjEe8LWb/7YkXVOYKjDwXlwPYb00KWnKkgdM=;
	h=To:Subject:From:Message-Id:Date; b=M2Glm0I8etd3cMz4koxfkUo1zpL0e7UGUeNLOURrQnDE74s8F5hJsEsD5XfFSgT4eGo5ktbhLViN1n7Pz0Hc8EzCZFyM1zKNrqaALSJ44NMJ2vy15b8RSyKaMMijk4oPCy9hnaTLmAbxPevJfXqXnvP8TJFYNUtcylC1SfusZyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDqgIsT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDqgIsT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99F8C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784466513;
	bh=vne3kNVqjEe8LWb/7YkXVOYKjDwXlwPYb00KWnKkgdM=;
	h=To:Subject:From:Date:From;
	b=WDqgIsT/l+PRypfy5JdqM7skEo3Jg4CMjQ89iDsdCVlK/LO7ki0FHo6GzyBg7fLPr
	 n911dDn7JfG1ak+T2d6j/uWQ+LvAEnre7Dk+YJw2Js0bOLPfNrSexJGpQAfPeTnH0U
	 5QsxmTHfTEjnwwZiEGgZoUVlW05G//WNb3zERnX5L7XL1vVIZMRUOnoAg4Lyh/rCSb
	 qthZ/+DM5f1rO7Wtnick8bWTkVhc5PX3LDf1Bn4DxZEMNxpg1L/585RL3BBHZx17Hz
	 KrQq1QFmYL61G0p2PR8XXYoG74EGbN1SIVpK+IJFZ7j+g1rK6EYI8/7INwn9oD0L5h
	 PaYryfHfj+k7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A13C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446651371.2601.9966553559674734302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e326a889e4c9c90d55cc52223f79daf5e6eded631bac22a58b4c350633c63372
Date: Sun, 19 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784466513
