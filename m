Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448F92E8B88
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755761394; cv=none; b=VaebcVCBNhFfozqNnzuyyUY11Tj+VrFKoQsOGlmLMylvnczFe4gv4gk0xLRQZCCRwA9VGln8/9CuDS9IOXeplr8Yax01B9xny8fgUYbU2UacP+mvWG7gVi9XcSoA+DuAIypX2HrTCCPD2yHWNVdWGpapN3DG84LWFC7FK9Y0dbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755761394; c=relaxed/simple;
	bh=QVW4Bg8Og91Z8jhcs9B6f/9RRcU9HZRnRuHzXmEFVa8=;
	h=To:Subject:From:Message-Id:Date; b=AauvkfuFp5MiqsfBhf0uGaV/xQo8CrvDWvjIHGj2JzJ9qjH6z2fg1QnDj5mrYGV8M+SVAdwR9xSSo0OQ+NNyQdlajnkTHXio2k+wBzBHQFrWA4uajO8g0mBo/WnhIJOISBvlpZIRyH+ZcdYeCcCf4K0TMF6IHZEy/gE619BG/H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjWGecyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjWGecyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F104C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755761393;
	bh=QVW4Bg8Og91Z8jhcs9B6f/9RRcU9HZRnRuHzXmEFVa8=;
	h=To:Subject:From:Date:From;
	b=DjWGecyAvo61cwxhEqvgytyln+phRor82uf9pQYTo0uAUyq7kPT60fXKxvSP7v+5m
	 OVlkkfdsVA498SzNKzcDhpLfhaR1zDPvgohzNo+/yRyKJiw/EZe5TNQzLBYA4lmPZB
	 paA5xCkO9CRjSXQPQaUBRFhlkOKUwgz9OEZzPEb79Bh8CRJUOvUFklTERdbZ2z+FrZ
	 DQvjBg54AnIGxBKKnogNzy7FZW8tbqORpeUVmWTNJK6bxgXCTjolLe/3+v4Thn2OyE
	 27VxqjP394oy4q/vA0zjKckENLHAzGAOH8DGj5R54BoAQAbJfn3vVrqrm+FZj8aMuw
	 JDF7B42C8jmGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C98CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576139358.24100.499931756300632110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48b8d4d81d052ba5237136cd1c81a8a92e9325c0fa22e71a927fc71ca94adf1
Date: Thu, 21 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755761393
