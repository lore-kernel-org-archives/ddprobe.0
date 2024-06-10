Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4ACF9E8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718020643; cv=none; b=R+wzNmG8GKe7XKb/PIGE6JXe3oJjPqvP/a1DEf9cJjTmzL4IearFcc7UGgg5GI1MRPoWPIstKsNvKHTeHgCDnJ8PsRI7/Cf5DHoXBMLBi4R+TNSmASsAw5Uvexk3B68H/C1A5Kr1ggIVlW20hWTp3oASKUfT/jAJ4Uk2B1YRnuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718020643; c=relaxed/simple;
	bh=3rzl9pWQYVNoNSgOPF7cOj7kbnJ5SbcjJounhil5BVw=;
	h=To:Subject:From:Message-Id:Date; b=hynyK8Mx6LY2P2atpeRuqhpWoq2X7FtMSt7H/J7ptSnSIesEWawc4emJ/WLRwF6ScEhe9/Hh6lN2wgJSqumAxd7ZNQD56T9vvp/y/Dd4Gox1U2jCJllMqU43WPr93/Zz1TXGIVee4gZxsAIR8K6sgE3yfld2Ka0PLSxN5QSlVJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqdcsgzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqdcsgzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE34AC4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718020642;
	bh=3rzl9pWQYVNoNSgOPF7cOj7kbnJ5SbcjJounhil5BVw=;
	h=To:Subject:From:Date:From;
	b=mqdcsgzW9BxfemcVYAtpWvsD4HlBekMJ3V3a/CM98RJtWl0SP8gOt0ZUD1zkwDJuv
	 om40td4lkiWy7149PxJxK4MbgURT3cBwerSTsPXaaoC52nzLbcJmPMYeDwHMRTh2bH
	 xv3VBwgMiJD35HEOrCqb/k5rA7yGnHadl415FbtxRlU/JCxqfzZe75Zc1pjIzY6iMO
	 4Du29x7nrfnP0Ao7gvdZSqCRFKsnATBdX7Sp5YdSq4nJpGXhrRFP813rcc9Lx5u2J4
	 VntfM62bN2zHckVOy8HAwVjZvD5qUHkSrDHO+cWBxNunIM7/cDWtBdunBl/g9XXAgA
	 4OEDH5OdaZH1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79F1C27C65
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802064279.18880.10556915286491881553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742bb9c303da91fe6023e25ccef61011a8b014e6a538f17923756ec87ea89efb
Date: Mon, 10 Jun 2024 11:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718020642
