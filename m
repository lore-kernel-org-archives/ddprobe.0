Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BA01DC07B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730129154; cv=none; b=Xg0YqHzuVzAGzHH2mqwMmosh+ABe1qQS3GLsTKvfliVtpHO0ud9nVaOGKABtu5s4foHAVf6uC799rKlyEa558jMTKFPT+O2vpZnUiRqtX8DQ/2b0yKZrABaRhlyr96NAMHi5j2/13ZpmrwTgTjJ/uU7ZGyCKpybHRabIT9ZRNg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730129154; c=relaxed/simple;
	bh=GBLT438z7kLLJTQ/BYaSBOWvQekupGme9yYLPvwdE4E=;
	h=To:Subject:From:Message-Id:Date; b=oimwki5HRHhONXJON2/aa85qBwoDbNVcIYKQhQu9tI9k+XAub/MqWM08g6s4JIq3ovonXa62dz8jIOj/AyRVjL/OXrGc30TbXDWMxOd3Tja/iv2YAFiibqdVRL7Cs9lLua9XQCtf6LpaKXV0ML1d3+3pM1Jl2FHJu7MKUE52ERI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXJagvT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXJagvT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B47C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730129153;
	bh=GBLT438z7kLLJTQ/BYaSBOWvQekupGme9yYLPvwdE4E=;
	h=To:Subject:From:Date:From;
	b=AXJagvT5gcQmVJHlv6nCDyvUr9MuT73slEHx4irLcXJeSoV1duFppVjDhw/SauV7D
	 6+buXS56mwNufyYQa8zUjoXYDS4XJOSepPuy2kC6Z+/v2JKP6Z63PmtYuocEix/aGr
	 2mON5I4I+JoQc8UMq0PuUdXDmO9rcwMmjN04/ZmnP7AMJTEaqlF+pWeQyWYhR24RyO
	 fSztiF0iKee725fD+QD6zVKVL/rGmJbvk0wTMsDkZHB32ARirFvnyRcMw/24r4xxK6
	 2vQGtRmREK504ufuGIW9zTeVu4v6n5JlWzKxwJF/TvGaVkeTPJJ3g6CvNTlFq7CH9F
	 DuUITK5UpjSlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963C4D33990
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173012915360.21494.12567374849834691525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9287b7a6e734750e403f27aa7a95e09fd2a9fe2ae0f32efa5391f22625cbe2
Date: Mon, 28 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730129153
