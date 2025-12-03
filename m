Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B485AD51
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764765174; cv=none; b=apUG8tIFd6d53fG7PAna7BxvpcDLT14KLaQsiBRxyd5CHxJbHx+G8spFd9MIF5srkRKWksjleigB7G09uW3qsFQXVAWujxJCKWFb5bKmiSyao0V2n+kMg27AkT7NgUBXoZdOzfPiGaH7QbK+cYvxbsE/1sZjOCwntQ6gD3ZI/1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764765174; c=relaxed/simple;
	bh=n9vx1f4FknTvRtHXWhk/RL1XtbA8hxQg07zGoP8Kv9M=;
	h=To:Subject:From:Message-Id:Date; b=Avnpn9YLBR4mmmC6+3UThibd0q9D873TgACMjcy6n7aPE/3DcPWLqmHnwi42DrOxaxf3aaMkXlUYvKWzNjXcuFYeMDnGFno+4Rljb1N6kCn6YqbyeJoFlFHwQBOLr3kYIYA9Ya5X378e8HhujmpqYEjcjCkVC3uddHebTMzlG/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtRwryPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtRwryPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7564C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764765173;
	bh=n9vx1f4FknTvRtHXWhk/RL1XtbA8hxQg07zGoP8Kv9M=;
	h=To:Subject:From:Date:From;
	b=PtRwryPDCjQcVnVQ/E61fiy5DbtEzblIhKMirNmmfbHpQFHpP0+SCb/w78FEHRX2E
	 wV4NF0WhO5VqIGMgYoWlJb6zIjVFkYoIYMXdoCJ7NYNpTCj9ohCtrubmZbB/eeJFbg
	 Z8UaC02BijKYK5d3pP4dcMj52+a3rwMPOYxy2cDDl5kVpgPdHaLxVWOQNlUIVNRgiR
	 N7D26d+xxkkl1K+/Iwl1hMJjB9YGqi/9sKWgjLFo3XVauoXWMEb6D9Ck1aBpBxsykF
	 CmuIrwodGFj2+os9FxhkMnoZc6Dh0DL6Y6yMb3/RQBh7sl0CLAnMK717OCjyYsQyfM
	 0AgKunXwRz5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C20D12D57
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476517358.3015.12391732378296354631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166bdb7bbbad8fa1f78c3538ca18db22daa85f9cffef1f12de51119ba249c73f
Date: Wed, 03 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764765173
