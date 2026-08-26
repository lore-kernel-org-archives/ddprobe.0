Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B29DF59
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787719834; cv=none; b=uVaxTFd9wTDwf5c73uYfxfVP8ChcIjpDjNPGxAsn1mmWyAv9tjEZupkbCtDzMzzPLTQ8wysGKkzvQc3sWwJLj29Vzmr4acFuf5KAPm+NZ2wqZTSw/7u16Hh3VKKFkb/AsVsEjiZx4VkoBF11EwXq5UJ0QqM/j3ZsW0Y+2svY9pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787719834; c=relaxed/simple;
	bh=fJjJOKEF5LmS8yJbOQYxo7N8YlZOfb6zmPxcVsxKOXw=;
	h=To:Subject:From:Message-Id:Date; b=cFC5bmsE5yidIo/pntT+QoibIG0tJb7o+a0chA9q6ONEf07wfRgJonxJ0DYBB7XIXL/QJbBcO8MV5/Of+4e7trUi1eLllUHkx47qRFwQB01mq/IXtO6VlbGKEPyQqVmpVwqnv+hFQg3UqEzYvwOOOiJcb5ELIGyf0iLgvS76vFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7m/thZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7m/thZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB723C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787719833;
	bh=fJjJOKEF5LmS8yJbOQYxo7N8YlZOfb6zmPxcVsxKOXw=;
	h=To:Subject:From:Date:From;
	b=V7m/thZ2KHPfnO7hMnL4N3KvODzKoOGpElajvgZ+ddRuJoJrAornyuJhZR9xaeHOc
	 hQCbyiQtL9n0zXXsIopV0YnpOGWm7Vr/QFhAA26anigYEb5aYcwv7BHMCH2Ck31okJ
	 2LY/H8jvJOTTDJGjNlyLAlKMraIIguKXOJt88ZnSTBWaJoa3UyE6TbGjnQrCD1HW5/
	 S/0FofXW6Bk0ol0mGcM0tsJnLb6zdySVUU6Mfs3G/kiX6E5PdJb59X3TK+owfueo++
	 ryHVvmwac+93R7JOFWsOk6CXTqIaovd1CgPzF+t6yJ8h3ByJVE4SziGgQFMysXDEOl
	 g0kcnhiLBV0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54CBC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771983370.19800.3827857471758249686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479bedcad7e1234a5a22cacef497f22561615a79822a111f1a316bd98c0e7bd4
Date: Wed, 26 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787719833
