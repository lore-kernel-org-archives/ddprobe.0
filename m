Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2200631717E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775025294; cv=none; b=svfu08BjvfGg/0haWt0oPi4CUBvxGOdJJwmvIWJFR87qgN0ZG0iGj0gZtu4a+kN/7iQUbcitAG0t2AOl47ubRD+Rs8p1ydoXKZtA3uX7DRtMUX3n81bucG6EIFp/t/WPLxAucVLaKOUN0F6yaHZKU2KQjybW5iDE7VuOe+0OcoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775025294; c=relaxed/simple;
	bh=qiJXemq9+AuQgLD3ogrwbp3IpqnYqKnsQx27pkRXpCY=;
	h=To:Subject:From:Message-Id:Date; b=AF/a92LjeEE6UlwqT7zfQqYB39jdlB36bPjfAXhJmHaMWOeGkkd9/Fdk/+whpjMAuQcoWXwb2pkxiUEuyf11thQ9RN4xHZwMKlBd+4ICtMmGDGA7vy+ye0qRRVgw8iLGpthlDUD6KBr1gnE17E/OpBRg3ygBzAyGPEbP/aXVhfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dih1qtO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dih1qtO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775025293;
	bh=qiJXemq9+AuQgLD3ogrwbp3IpqnYqKnsQx27pkRXpCY=;
	h=To:Subject:From:Date:From;
	b=dih1qtO6XW9pUMt3+Tf5EouDK2iDnj92zb2aoGNZefKOK9vN0BIjFfOy9vp+kr54b
	 mdZNc77XIEVKB68M2PK8bvzU4e76ZhEwsG0U+h7DmC1jcIrfyfSZuxXqmwAU54515s
	 9BexmSNq2ES8dd9Upn3GTzXvJWP9BMANQFvCMmapHPg2sVzNEQG7rKo5hBkeysofv4
	 p/fDw9akY/UUlpdGqT1Yo80nLaqvoIG7sEXUZXmEnqlXcHTFKsqw5zY1orW4OXLi8t
	 Y+G3xQJmQCug6uXD4RPrrwU5iq9FqJG5C8CZ2HxqkQ5y/yltjqjUQEvYDzn9DenAjs
	 eiQoR/f/BKLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9323F1076372
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502529359.26362.18072632255899530281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9e708eb842ecf9bd5be5a477d96b3e17a04440ef8888fa4b61f2eaef4e520b
Date: Wed, 01 Apr 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775025293
