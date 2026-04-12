Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AA5233704
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776015454; cv=none; b=Kd+zesxw5upAvd36Knk3Z7NpKwTrgBkZ/QryG08jouVmrfJ6kd3/8j7ioEkT00qWMC+K7Knc4JFF/NojofKQxfyjRWG85UpxIa648e1fo3nFaFC66FseiKMfbmN9jynlepokT6Ew/QlbRs0wGoJyExhY6sf/G6zEajnCvR4SAtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776015454; c=relaxed/simple;
	bh=CfFsE1qIUq/1ZZP4OLQMZ3ZJDgOJiseW6uFLhdSQ4KY=;
	h=To:Subject:From:Message-Id:Date; b=mmIYSZSk/x9/jMYcfwbwqmPx1gwnkzQYwhQzCTUGlYIkfGX5/creFXQj3XtuCgHYoXa3eonkX171pk9QIAF4kUBSLkptK1xDsusRxNecUcwOarIcTZ2vPAlMgLCWQd2EY7a5OO6Dp8cUI/4MarwrKkkdNd2ra9lEYlc9h10ewhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELkJKpyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELkJKpyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B845BC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776015453;
	bh=CfFsE1qIUq/1ZZP4OLQMZ3ZJDgOJiseW6uFLhdSQ4KY=;
	h=To:Subject:From:Date:From;
	b=ELkJKpywGeX7CTuIpBm0SQNxtKTg0OZUBSNQi02hEzsUu7d7Eg8AaqrTq4wrL0aNa
	 WjvTlhJS8rkdpqh2oC0VOZir2lG4t4bcLJnuhWVxzN6tqb8/xF8jpTUQ6bnkwG2yoV
	 X6lROKRl5uX5RoPqmuWyP7yBQOY7cf9pQG+eBs/4BMUM1rMtN4RnQztYX0MR2RXE5j
	 eSI4N34lfUMOi20hYh8kI3pktIFL8Seo+CJ5nP885ehvLngN4XgkMCJgJa6Z5Lvc/x
	 e6479MS1puBUJTg1eoKiFIwQdh2KTGkyDUbq6TUOuRJx1U5E5gtAsppcW6/2j6Dzv3
	 IG7/lQbZhDrew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA17DE937EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601545368.11513.18359618259092814488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ec6083bb2cc49c8d5b5dd56ca134783e87365fb5ffd7697af430acdeeb4cc8
Date: Sun, 12 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776015453
