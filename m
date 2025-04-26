Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C1D1AA1E0
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745654996; cv=none; b=ijMaf5cExLItJmJufHZSFA7UEczuTfoBXsQGmZjMDkHDzxp3cFuD7uvINi6ZshcfjyNKojkqRL0tknEvWnHWzTL4BS6btwouRlju5++kJoNshk0fWGv9TQansmSkZTfp1Fam5lx7nle2ipQXc8FA5lmIpens7XVB4gByaEfxZr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745654996; c=relaxed/simple;
	bh=xy6OuDwXvuRyO+md6QnxslTzxly3XsgkAICUDwhyfCc=;
	h=To:Subject:From:Message-Id:Date; b=kUl/uhifcUdUV+z0jm7Q2bbx5oqXlH38uJwtdROItl8LpRNwJipbU3aCGKv2sk38oVjUuFXxP+Gnk9gENBb6ZHW8dTOQkcNGoVN4B1pEapufwzP5trDQ+DTMWUzF0FL7oEz/4ioKx7Nor7Lad/ALxD8uG1PsGPwFCawMzFmR0Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuPjZR6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuPjZR6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2614C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745654993;
	bh=xy6OuDwXvuRyO+md6QnxslTzxly3XsgkAICUDwhyfCc=;
	h=To:Subject:From:Date:From;
	b=OuPjZR6GDw5Aw5dkrLgxuOJC/gGW+iZqSf8e1kGGdJHrNYZ6OwKfHtqNyp7tHqd9f
	 n5VSjpswwAaAEQnZ6jdoxkTZolNQUIS85/oMkQy8nSC/wMyThAOZGe5qMCfmVr7H/p
	 5hn3/tvpCAVmq08DhrrF6Vqu3rG0o+JJ8tFuPLHWxEsF5SfvUEaN5fNIwR31F4kyKD
	 C+r7zZo193lNWhHeSp0TNV+HFeWJq3RfacjQnOVzpC5rNLc8MyWnAkR5EGfPHVub/b
	 SjaWUlTLkwQ56F82lNeTAleCc0q1/kfFjJqIbmLAsvQeRokCDkRnrCwuZq2In7NlFP
	 oQ2yDAh0FLtow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D7C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565499357.13948.10791276957967938480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b72d63bb238282e567b3008b1be4cca7d85ae62b1391243dbec14e54087b05
Date: Sat, 26 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745654993
