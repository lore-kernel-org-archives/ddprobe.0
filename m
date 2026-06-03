Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9AC266581
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780448074; cv=none; b=ISqcixhGGpr6g8+3IKNa2ljSvLOvyr6jEnTZUnURqMJtB6oz6FijqyYQ7JOpdCpt2NfGkBmdBtqRpFQa41XdCxSsSzdKLxXUO0k9MJ90nuyA8LsUy0bqYgcaPKRLnZZC7mx3X+dfsRDHB61iTD6lX93J0X7UVl21yLjrpY31jwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780448074; c=relaxed/simple;
	bh=R+BlZVb3PpU0vhj7KLVXqLQiZnKdrra2yo1sOx7wz8I=;
	h=To:Subject:From:Message-Id:Date; b=M0P5QKgSQnpphKXr2BzpECLEKszmuCLWNHlitJztWHPvB2X16R/7U+4uUWMd3pp0zF4bJ/1Lh3VT46IuBCNTsYWf7eVsuNwJClxpVBQvD+SQwVBTZB6Ipo3uVeCQDkELuQSvGTgrdeTSa++/77WxH7cylMR+SMXfJluRdJOs+OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNBS2Lk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNBS2Lk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10D7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780448073;
	bh=R+BlZVb3PpU0vhj7KLVXqLQiZnKdrra2yo1sOx7wz8I=;
	h=To:Subject:From:Date:From;
	b=kNBS2Lk0YPEis8ZYSJAKmfCIZcVTmtUAQ2DtqGVBn9S627Z+3A16oIM+rJIhYm8Xt
	 l7Ot3YiDNCDSkpReg00zX/CLgUBiFqE9f1fJKbORFAWERf8qTE9IvGIv7U1Um2iFr4
	 cO6WmMC4I4UgEzfXxxcc801hCbJfHJCf6AE3czg88Z3hzpkRvtls0FDgTF82jy5I+P
	 b46ZOVwQjaSlR252bxunfYjHl+7lUuQ4qgHv8zPQdk9GwpXa8p+ma4emHLl2xPZ8x0
	 tU9SAJj10vJASLxKHVLu2EicGkzKNqpGgTQ39KdQW0um9orosm/ki94h5dWgAT/tA1
	 Lzg9CdKNS3wmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA26BCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044807368.28743.8605200568102505347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f9342de83648912f2f04769e9fa157995bb0270e0f6b3190a1505aeeb685a0
Date: Wed, 03 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780448073
