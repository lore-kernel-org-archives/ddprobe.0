Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D45B33ADBD
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769590434; cv=none; b=SinMG4Lxy24MeOtJ6d10xmbWQKwyepTZSObggAuRhNlb1IfKRY9gjupiQqV7LtklhgSEzTe0pJmv7oHqvhOM17OIxAwKkHw6hVGVxO1l0IybE8KATejHz4ZwlkbklmfbxXCJ8QqtRpt9lX2X6nh+E0DuumB5KFIzr42GsvRI4Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769590434; c=relaxed/simple;
	bh=7wxpehOzFPHild2gQiw0zJ0IprsIbS3hGCzL2b/jj1E=;
	h=To:Subject:From:Message-Id:Date; b=SuG7oOUpbjhOY4EQTs5jgQlza+YTHwd7EBJh00OTt5tPkTaEcMs4IZ+6xXtq1AEFOGgFQ4Foi/KZrpKavRCihHCJ6yQ8DQH9MDDKcg7vIXH5ny224/U02FeBmgCJoVTv8N87VLR71r2R+7gdW1KuN+Yv6cimUWpL1ad6Iiy2qSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i794MBO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i794MBO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF3C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769590433;
	bh=7wxpehOzFPHild2gQiw0zJ0IprsIbS3hGCzL2b/jj1E=;
	h=To:Subject:From:Date:From;
	b=i794MBO63hbO4+zsPDVzj3W5PuGVDPQ5L216lOlPSg+lqfTs/ne12p+Uh7QXQU9Py
	 s6XMhUv1pyKl0x+T/DOffDrgxzadaWWu5GvdUQLGufrWttxWBn7Gd7TDcHCVmLEY0k
	 b+q4B/1NgZevwQSWsvsz9LIl5D/Qj2znYgEjqURtJVKbhzeh/Dgh/7At73Wz83DLjy
	 +0OlCVd58kuplgLOtCKTCaunUQuUh0HCjJyVVSmjWYtZ6pWGDH7MUBqO6psrKdJC80
	 Gyyk34I5jy5dAJUa1DgTj4QQ6Tgxx9D5YFoTke1qqc2jOMDqKcT/qo+Z7LQplbY4y9
	 cGn87P1lwvOpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A91D35694
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959043358.13424.5887751589110536839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67dbc9c7c36837b2e8fe1196e40bbe45e1ae1b9b3bff989019a21a300fff79f
Date: Wed, 28 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769590433
