Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F7F3FADF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780670674; cv=none; b=YpaA6ysCpJxt9wyV/4TxC14VlpU/RVKM88EvCf6z3o4wqk94RyvW2hw0PA/LFzteDpYnqujhpz1AAgoZIVsfjAHDdfwyTq7QeOSoXMAv6pr0Ee/lxXloTW4DDy9l2SD/O9TCnkNYFT8/vgTkvke7nKqctPih8givTN5dTO2Mthc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780670674; c=relaxed/simple;
	bh=wEjtBpt7pSys/SZv9A/yQzx97GtO1YWHf4NQe1ZixEI=;
	h=To:Subject:From:Message-Id:Date; b=ROP8VGs/yBBSixEQfQxatg4HnRAIQ4kl6NpgIeYKlem68PhomoEkC55Ljo5Lzyo6ZnoOUJHEOWVpNTYWbE0mJWL+g0hUpkvxF3hKeN63+AlXz1v6fH1wbgTrA0Q5dHR1gLXumlvGQtY7dIlIHvuGpQzfNXNq8ljBQYDMUBXSQiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyFt1zQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyFt1zQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6696C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780670673;
	bh=wEjtBpt7pSys/SZv9A/yQzx97GtO1YWHf4NQe1ZixEI=;
	h=To:Subject:From:Date:From;
	b=YyFt1zQMorWeWkYpbG7LyNOvwocM/7kKywcy1gsRoFy1xVpJBGP8lEk+7gelMp4OL
	 uDWwXju19JwTS19KXHl+q2ozsALfHDmD5J+iAL4CndV0p+0LZ5WUktTB0RyYgMarfC
	 tQonXuYppFEWjL4ai12C0mxpbKStLX4R4QgS9ng8NBttR/ZAXH3t/gFpGpCt+Pe17k
	 3qVcqPW/a0HcE1CL2gSwB8JW62p+D2RQWrzCgQUwsYLt5lOix9KVcIJYNQXjKpzcsA
	 jSlfQ5Iyh7tG1QuAiIsJfDoR0OxKdnAeVR+L8daDtWAisl6bXVaRWwvESOWbTcLww+
	 6DmvlG2Wc9RlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB970CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067067369.6248.11648522631617151085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cffe2a39b2fd2373de24f42fc31ab687938092d1243f6009ecb5a32840bf55f
Date: Fri, 05 Jun 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780670673
