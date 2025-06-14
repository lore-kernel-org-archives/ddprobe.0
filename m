Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310E91C5D4E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749901794; cv=none; b=jSfCUsCUt5y1ia+IvM3yA1Y298LVkAjZI+DajOhcISc6xPAL9mvUEgQDIPCEJAMnoLMgRRq6BiMwTwzfXGQECSI9No7KDBrl6XHAykMUrJcc1HXU05uyljsRPkULeq5/ALUyXKb4thC5HeoltCahiEUoIARZlOgNs05MaKT3kBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749901794; c=relaxed/simple;
	bh=9qPLqwueEKy5P76S5HYesLE7vLes/l9WHgDUSjyBrXw=;
	h=To:Subject:From:Message-Id:Date; b=uNcHjK4g3Qrpr1gwzSrnEqhqvTcihK+IS7EYZjuExKRkTuM5Ghp3Xo/Bkovvqm0MN8gZ/4cJroXDZAoPP8IPUHAG2j1ENaG/rlukPiMaZg7wovvSIlGWJpjZ1TQq3r/z8x7w6Q0/qtHpY4Nl5fDMI0wpTXQOf/VceSDN5d/IF0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pal9poC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pal9poC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B3BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749901793;
	bh=9qPLqwueEKy5P76S5HYesLE7vLes/l9WHgDUSjyBrXw=;
	h=To:Subject:From:Date:From;
	b=pal9poC/leAlY1uV37HKjbjWQC03xArjf1Vua2fhW1o0ncsV8SspuMmuyTH/DnZWX
	 J3epoLA1AZ0taHqMWoPeo+79yl8QwqgwQx8DrzJXUYf08Pecq6qKKPea/kZ1Q3BLCm
	 EaY1EBZ6b2tlfRjoI3I+BZTI0JDVYPdkZLXMHlxOoT4GXD4Ze2x1yZOQqlgQdhgTyB
	 pfv4CQv2T3E5mwGHyMBlKprbano0TmmOnXxZ8kw6APq6VKu/l9d4UP8h+3LFFTPhzO
	 qtGuZuGsGO6G+FonPrQDDKEmwWL+/QiVijk0RF6JOhq6qvXKJtKxcZWzWEPw8X3yXm
	 EB8k2i3NUJAug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A94C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990179358.22952.503209066591638114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78746de87c4e260a84f7c5fdbca9e7b312bdf20612b5067c639804bf56728049
Date: Sat, 14 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749901793
