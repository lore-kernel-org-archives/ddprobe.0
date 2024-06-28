Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730644C3BE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719579263; cv=none; b=GaA53Rl4V7BYkFtEf4d27yeXOy5n+vG7MiRqTa0hLNW9EePBHJ26mDgttcMODp1r9CvG/tTZyCNvZVuVU/wr1vkdA30aHV+AZ2uJRmVPAII63mLqa3b27sQ9dOwO6JSpKG1oNlkipCnuOws08ueVqT7aSR88hLBWF1uOmFyPXW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719579263; c=relaxed/simple;
	bh=kJvIRBma5G1VONAVICpL7lv4sW45BuLZzNs8iAL+nVs=;
	h=To:Subject:From:Message-Id:Date; b=ZRkrlolLPcwN+CJK6KZUtTUB0e1FS4M3y7F3vP5DFOHgUJrJrvLfQHJ3q7YomWWRuFI7muiVuDNAXkHNTZxrVpUpdA9l2zHn7EE12dQVv1qESnX8svped9k1EauIiZ0SH81tdcs0Lj0tbxZnJaSnQHCQ8fkQn4SJ6XRzRmtOfq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjtBUKZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjtBUKZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75A9C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719579262;
	bh=kJvIRBma5G1VONAVICpL7lv4sW45BuLZzNs8iAL+nVs=;
	h=To:Subject:From:Date:From;
	b=GjtBUKZhS8vgi/veJPh6EiAesP/QMQrn4BeGrMhW9cTK1RZULMbnGbZihJJk2tYGM
	 VH5XZKQkDF6G9Qg/2n+kSdQhgGB6nu7pj9Ix7qwbmpC9FrMLLyryj8Tu7mCJqqZTEx
	 l0qF+IuCbWLijap2T/qhVT/765chC/LH8feF58oaX/GIzKg7T8Ir1DyQxhs8lOTiuc
	 7Fe5kOHjqSpqfJeVKGzTtVPzVX7GOpmKXP8n0Ab1vTqFrGvWV1Tgs1mjJMge0F/lis
	 i6vz0jpsRroWlO5lp8KPTz7Qm7gUqDns1TGoLVI23fyCwlP9PLtXPaS5QQbG/JlyL1
	 s9aJp6y1YVn4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9A3C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957926282.8968.9050940501340784688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b41f2fe96418bd63b6e94724889cb8c54b0a2d49c84d86010801a0da07b741d
Date: Fri, 28 Jun 2024 12:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719579262
