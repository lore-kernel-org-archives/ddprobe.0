Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2CD645
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712120897; cv=none; b=XvxIzRnANBmvLaTCa8FlZa7L5WQKv9m4QjFGar2cG5T9U97JuP4Nox50Hrt6mXGw5rZPql56FTugSze2+bq75pyXT0INIkE8vt9gc+5Gh64Wivcf1SaEH7kN9xyx0P7Vm8bcT9F22weUf9F1VXn5vpq8foEgBGeMWsY5v6JhyYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712120897; c=relaxed/simple;
	bh=zvpsU6ktRSzxQa+D7YnZ2ABFcT7URInrShgIuPKHuUk=;
	h=To:Subject:From:Message-Id:Date; b=npJuFhADlMCAbSymScfmc9Cw42SXVgdNi0WekAbw6Iqn4s55ep6EZ6O0obNE7gW1WkwsInZ5LWNfkrFUd6I8LoShjCijiLXyK96rPD+/WiNqyzzLVyo9fqZGu+hiF/hp02UR/mgLkmcavYBITUJNuu8/sUx3feVcQk4pZeud/7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QU562nNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QU562nNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BC2C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712120896;
	bh=zvpsU6ktRSzxQa+D7YnZ2ABFcT7URInrShgIuPKHuUk=;
	h=To:Subject:From:Date:From;
	b=QU562nNpM6pV1nUhm8yzNosBq7mMtCroxHzCgASgzvCUsAXDCxbYZePytZ3pFvdOR
	 39lQ/JbRJ9TTSoB/LgQIdwKUh8gk9nbeMimSlp1JXpobw5FC8aVdW8d61EbuNItOhB
	 Hir1p6nk6riOQR/g1Pps2Yta+R34zlf8uUQBa5DigXC7MLfV04eqtkOfK3hBAaY/wd
	 NXwGtldC5nXG9dHVQwsudJjH0a5NnMmnrARobVXF6J0o1n29xCIQfnyz8O18IpN/Fk
	 uO1oFDypyyZjkNERGhcpNlBAIak9JkGQN8WRSBd6djRT7Hh/4hfRGhWzuHxVtzu9xx
	 F5wsZB0FSKitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BD4C6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171212089637.4523.17302763019156709136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41a8c2096ab173c83a8fdb92a1d90c7f32cbf428b8d763b07731347dc39b094
Date: Wed, 03 Apr 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712120896
