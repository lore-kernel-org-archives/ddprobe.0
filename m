Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB3618A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705797497; cv=none; b=muE7nC8QkykFdYkYQI5mDlf031f6NOZr/u3op7HKQzGv5znt4HLAUPWKAXpSotfSN5LOIgsHR5MvdYtBm9tVZbwGSMMhJbuCKAqGXIcVcgoiW7wCE6d5hM9b0g2l5wT75c8ou8f594jS5MZ7WGi/HLaC8f4m7369r/0CpiI/68I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705797497; c=relaxed/simple;
	bh=sZJRmedApU++scXOXQYMx8PkcShxezgwaJBfXMHVFY4=;
	h=To:Subject:From:Message-Id:Date; b=nISlOtWiUclhytn4Pgk5KMe6jvzmUp3vRHMyGizdoeXVBKuPdRVg8vysqzCkJfdY2F56hj9W5kHgzudLAAo1rCC1TJgZP8v1HJu3bmh8Y/mvRJxXSM7P6myltuebabI7MwpqL6G/8FkkJPX/00tZMqoxjIH6du0JRguPfTOELqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebtu8dF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebtu8dF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E7FC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705797496;
	bh=sZJRmedApU++scXOXQYMx8PkcShxezgwaJBfXMHVFY4=;
	h=To:Subject:From:Date:From;
	b=ebtu8dF+4NnHG8+bHVFSLeqTK40CiGur4KFaWqC0fYNHd82SsYStc/qyDSnRptVhk
	 fvCrIIiSq7I1QGZ1+gehOyJaBWgJvJ77EyRU1VUJZMDFXFdKBKqPjKdmlJViA7n0FT
	 QxjljKK12CTOf+JVnf6he6P0s3R1U7vDDdwBvmgvidFswkQZpk/UjIlcWuPWWcdGRh
	 K3kM8DYEkMWLJxwFd+2zgvaFoKXew0w0T2HIGSviHdSAgPKmh655cZvD1u9Eny95m6
	 2rdag4dY/4PLtQN8wnK182Q9MFa/dwf3ydk77yWfbomoDwWEx5wqnXClBT9RqKeVrz
	 wK7X87arX3g6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60751C47258
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170579749636.21714.919666973526743559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc728c85efcf8c024638aa35eeac96fe8ce1a2a7feb28efeedb972e131699bf6
Date: Sun, 21 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705797496
