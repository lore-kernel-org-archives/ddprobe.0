Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607F914265
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717914443; cv=none; b=RJFGy8mv4zMPMRQZidTvJCZz/sB56owpZfEQ3f5lnExwXLjuZILgJKki8eFCY5O0hXoU8sc+9TYIIPThjYXaUsAopu9ECka7g36Wjj2gkjJwLkPjfOU8NHP5BrZj8Tv4wKSGpDQ1AYQ/gNSzV08JI9tYWTfOYYcZBqNmlUoAhHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717914443; c=relaxed/simple;
	bh=FMmSnVoevIHeLLb5BS/N3wYrECj2tfevxJyaLuNLHQ8=;
	h=To:Subject:From:Message-Id:Date; b=nNw8YJJLGfRJ3u/rf5nG/IaR5WaI8QPW4y4lO3si9wNqUWwsn6NXH0+1vafFKPZHN8Zf6x7fF99g/3Q7zxZecAKcLzxFt/9KaZv4bytR2hTeZuQu0nqEnzFK8+Z0SLYcwRQppnS4XVROGg1MR2y1z/RPhalmIxSSwUlulIJzD7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+qJinPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+qJinPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5B7C3277B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717914442;
	bh=FMmSnVoevIHeLLb5BS/N3wYrECj2tfevxJyaLuNLHQ8=;
	h=To:Subject:From:Date:From;
	b=r+qJinPZ1yhnOhqL0E7727jDzEmuQtMdlYY3WJBHvstTQwiMlUGAYoenegehs0no/
	 R3qc0NrfsrodgRRNAY3Ab2vBG3nxvfZsZfIg1hyoUVY3oCsG6n89RLGb4GotIdIFq2
	 8R8wC3t8rN32ciseK431jWrWu6WEYwmd+JWOPpSQM/LdcdIr7hibQNKNiGEdfCBoqv
	 A5WHLEdsvY62VzbLFzIgYxlJ9aW3fqi8MGdSN4gzsKOb7Fo4wXaFGD69aaY228VktR
	 HyNSlofRAvkNQ/ZKHWpoU+lRxL4LiDm8raegR3mQYy6sl0pBpqcs5OKpvHuw3rABcA
	 DPHmF7puLkA8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62B7C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791444278.6839.15197873932213740220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c382256628c84a6c27f31a38fea4821c5d48a850a4ab15dadd97e3ef07f588bf
Date: Sun, 09 Jun 2024 06:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717914442
