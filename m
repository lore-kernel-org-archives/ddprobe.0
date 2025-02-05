Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AC338F82
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738782955; cv=none; b=q+AbqGX00mKAPHlUs+8iJ4F1uzLzRiYf9G8XiR49Dn6V2G10UKVr280UJgO26bzYsgeH4ImgK656HaTN0wVV6tDriIGrEgUjCj1x8KjzGjJAps8awhHVHp3Qdsh1X+tVm5ylD0pJehe3376WCO5Mvi9LqqXl3KPlI4xbJd9OM+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738782955; c=relaxed/simple;
	bh=es0ZnYJm63aXAK+zZIythQsn58mJMUjUVI09oii5eks=;
	h=To:Subject:From:Message-Id:Date; b=qvgSQl2DMHfS7Fo2B0dIDWfdVu6nuuAFIr6XGTGxGL9ll3UtYKRbfUMcEwP5LvAMLEe1rzev30OZPqOpQvM48v70mUkHRKnYkEr+pTg/wcjE9QwFM6zebKc2yTmIz7G7jPg//75/TMewzbyHzQRDAy2cVExAQYwcUImIWgoGtGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kERDEFM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kERDEFM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40BEC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738782953;
	bh=es0ZnYJm63aXAK+zZIythQsn58mJMUjUVI09oii5eks=;
	h=To:Subject:From:Date:From;
	b=kERDEFM76OnNsWHuz3n1Y/ZIYZsa3hUg0jof1QhD7mAdSPF4SS6HLTCEgoqzk+XTd
	 50fLmrpcSaRC3+MjUXVUJCwE+hYSqbfShBKAqe/Gr1Z5PP1+X+D+cQRELbIprY4MYy
	 hDttGwG52Z7C4RBQoTitfrQH+1DMGnveRlqxiI3R8iUHB1Qh7eJp9+fKKuin8cmN8f
	 rrLRrRIhFcykdafSADH9h6c/z0HuL0VuWbmzXM9wooxdzkgGrYMXq0punVwyUTb4mZ
	 VBJeZT+tSdAtofG/z3kzmeC0d03bI9fkJiUA49/g+LCgRXtsfOjFzdd6qonT1pNqoc
	 CdUsoZOxSNGqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D5C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878295358.29208.6635430007380274335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715bcb6aa4141b90b61421863a6c72fa360a04b8f51775f1f20e0e66eea595fd
Date: Wed, 05 Feb 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738782953
