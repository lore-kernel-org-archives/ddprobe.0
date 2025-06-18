Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EF5C2EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750213794; cv=none; b=s4WjjWQPqpEuCBJNjFczuy9l/hueK+xxz5sWnzfhWteA7uKY1CrSixmwvBXKEzVHU6ck+0Cap/JuBZvrAM6ncyGS73uR6MnfEgFNbBSwpC9h6Rq5K3PT1cGxOgVLj0ljn2HKAmnMZqNl3CZhmo9HSXdNPbNxbyfkE0zXZeps0sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750213794; c=relaxed/simple;
	bh=i+FBCzPtCp6Hv2Jtv4LEuDPIDeiCetABiEBAoYQKYaw=;
	h=To:Subject:From:Message-Id:Date; b=uZYL5RgU0cajyilr8Q3MYe6kwj+8Hv9zRh5YC66Pf24yGYHtlp2sIgOMzLQu7dNhB3V3ex/Keh0XvXH6HbUfVoZoyXz1JoNjo/lvN9tslhVDw3hhDN5nuuaPKhTDO/FZOx3O75iZ7QqzD/dfdc8SEiwSTEG9dIwOxRmxfl5x+RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFVOxweb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFVOxweb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A573EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750213793;
	bh=i+FBCzPtCp6Hv2Jtv4LEuDPIDeiCetABiEBAoYQKYaw=;
	h=To:Subject:From:Date:From;
	b=WFVOxwebHAQtOyUdNpeo+tyKJhg3hyURH4eE60N0Rhv0QChg/gQpqT2s/9TaLSLTB
	 XwMGBpdYufkSG2sGFBNHbDAqO4OgVxkVHf0F6aqxk6kEYNQ3X7NK49eBuGm2WWaxf/
	 3ni7+YPbFNXWD+LaeaU4JCv9YvViyO3RvbCtIOBV37aArBICKJ4wfi5qWHtn+oOmS6
	 wgi4EizZTRpF0XZAf8OxSlrle1v+j0D4VqExEerdmcLkocDv1HN5STSooi+hVL6KeQ
	 uG1rJp6An/T81ZJSgzSxHH8uuMWBqnAj4wgE4tzmxDmY/E93ZHi2oKFiQ0jUwjqHxO
	 jjxuvETY5OVgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A1EC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021379357.25180.11354766050617694078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157742b2832dcf10d279b6adbb2ec285c6565a17ecc4f8fc989674e5baba7038
Date: Wed, 18 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750213793
