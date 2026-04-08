Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABCB31ED7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775689534; cv=none; b=kWA0u5Dc1oOm5Sc+TLTceeLrueyDxXYmGKx2wpptx/SX7GiQNb04VhkIBHlIN1lteV39gKOeoABFnBrcCifnfOe0whqo9E70DXe1Z3NCAimrLGN0vo9gSlxoUSdW+Mf2gWzxqpu+k1uGyaxajpGWBcqhDkkflk+v96wHOAZJVAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775689534; c=relaxed/simple;
	bh=YFB5kZKVFNGemfI/OEDDI5aXdjtmGfjN1qOcIkmGvkY=;
	h=To:Subject:From:Message-Id:Date; b=lQd/R4K7FnR8PqKhVqfSP8LYJNYSZJ4zHOkf/AVElvAjVddpZQQ7fL3OuEjvmNK+5Qps1srof7I9Qu3cIAsPgVSDwuv1bb4PsT00q/9FOGIH79FK0j5sGF3nGdDiH32ci04vidl2hE1QNi9tomF5GJuPhhF3dyUZI9bHQp2ABmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1sKDM1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1sKDM1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D5AC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775689533;
	bh=YFB5kZKVFNGemfI/OEDDI5aXdjtmGfjN1qOcIkmGvkY=;
	h=To:Subject:From:Date:From;
	b=W1sKDM1luM5Ts0xY4jvRM6if7lEZ8XEb9V0j/hvLcNLXNSVhpSgRtqCuPahEeueR5
	 vClyhRzayQQRoPenQN1RKKjd80FjL5uJQSyvyYQ+16/Y0/Senc5S7GNMc1bOIYsiV6
	 I6hrUZ1BAAc0sZ1ZkRCL2P37X744wnn6pa85q0HlkpgrfAhuGRok0CsQkXDCW0I+cq
	 vB8+pyDqrPNSr8lwGw6YmEDBk4D4JTylP0yi2ydXdJ450OfQYxcimf/S4BhEPjv3A7
	 aDmMHYANUv4F0XdTQM8LkGcRt6Em0lR6Yy6tLy/9x5Z17wdeSZOXTjp97CUm1C7Frv
	 G7dwx3oXoBhXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D5610FC454
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568953370.23363.13241159185160708805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6442a575ba4e8f64f1ba4fed511da2bf87316d056787ddb9652340e1a5170c7
Date: Wed, 08 Apr 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775689533
