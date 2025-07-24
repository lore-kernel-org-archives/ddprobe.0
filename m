Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193962690F9
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753355394; cv=none; b=gRS6ohj84zXdWG5KfXvRWOqHO5WpGmSUYCzJyYOSvWozZIJAzlgJLkzGYteY84BQ7Z3gVg4NKGTen9Xnj7+F0isRBAnjNrCtpQ2Lm4ME6ljvPOWlsp9SvgTeE9OXDYhxcYRZnnfBSw5TqJPmswM/sAN6W8q056NTOX8QUDOaD6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753355394; c=relaxed/simple;
	bh=EMIEKA5N/apxpbfC2pojpwDdKoud+mxVA2PNDq9CQsQ=;
	h=To:Subject:From:Message-Id:Date; b=OiBhWzg6svXpRkNNBgt8I6X6e9xjDiqszPrvUJaNfi9ytFqvJLh6pK8wQq+dDicumhEvp0Za/KpY4yzvUNkP4hDvxnT0yxVQROsOvrjgUKhoUc5JJycg7EaK5DJs9LF7Oeyggaqnwb9XdPguTP9HY0OJePisOl4L0JDcwp7bCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhMFanMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhMFanMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08E3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753355393;
	bh=EMIEKA5N/apxpbfC2pojpwDdKoud+mxVA2PNDq9CQsQ=;
	h=To:Subject:From:Date:From;
	b=JhMFanMunDJ7m8tTXeuQU1OJOWOMRdUmsg/mB7jHBYFlxUKJz2VNqZkb3EQlEStaH
	 sogeJqHp3Uyj0jlh5lVZigDyU8ATyKQm5k1UsHdmLkwJUqYdteGMTJHAwmegaGvBeL
	 VofFANbh62SBCLsIMc7iw7S3K1FV0rMEA0NceNhqRVyDBMBqKkbGWqxGGdg7fZpLB8
	 4WXZY5jSg3YhwS3+w5kkS6FNEnHBmsoa+ZdNRbftpTsVmIvT62PgXOmSuvvSwDCIix
	 OZkHTMHVmOZ08Zu0aNH02CoMjMrUhfPaQBXpS534oe+TNjfdJXboIp7Zpt4dJ75V+n
	 ncwu2ebEvYvMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCAC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335539357.15375.8318542948106855948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2091489bac1ce700443ac196f38092f003384da29375c588a667b2ff5a403c7c
Date: Thu, 24 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753355393
