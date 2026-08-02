Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1843C2D
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785711034; cv=none; b=kU+nMGuMS1/7/l41D6yqzK/SIvNlPd5I1uQmw970zRhrgIBYKvemuVX4KKomxtsUrMaCueb0oHG6YktxuYHLwhb1WMhz++y51D+JkYP+EKxqj6DoYsIIXEow9VgQiThJCR4XcYMlbcu+HyRfVoo7eE/FbJ2TN7z4UpF5GhVk3tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785711034; c=relaxed/simple;
	bh=HMBL/MB6eFlu3XjzOTaXiLlktF+VKlSjKhm6Yg3aACg=;
	h=To:Subject:From:Message-Id:Date; b=AOoMdk5mXqTLhC6BZV4e7sjWXRiR90R0RNYA6SPrOqYe8aXwTbXFpEFr7nGDsnSkbekNllUIb2o80FJ5E6eeAK55DCJ2UBg6v1Wv0Y5ZhA3txENZj21F/tf5wWY7JeJR8U/nJLoZW4k0qOym7jOVUZJ5cXQzFflXqovP0UrsBYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQwKUaxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQwKUaxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11F0C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785711033;
	bh=HMBL/MB6eFlu3XjzOTaXiLlktF+VKlSjKhm6Yg3aACg=;
	h=To:Subject:From:Date:From;
	b=gQwKUaxIQ9t5RoZ8TwVCWcNmOqJn0C75ciH9ZTwe/85TmBbfhiz5mxYujKzM64TZL
	 iy6+MCs3mUm/XyPASi7YuUvIv6VUChkDMKfTr07JLXk2Ab5iopHEbQFzl7tg05aHKi
	 tuHsNJJbfd/1g1nvs8u1il8meTcyYanKad3k84anem+tMMpN44Jeiq9y9j6yVnh3tT
	 KQ7VGz8sPCwYwi76NSNUtFLmPmUSqWZxmk92hvT3gW4Fmyqi1mXXPBTLC2ZQgrm15x
	 beD78zUj4ZduMdKhcTYSSkJUpu6wAQj2Mamt1/3YwQnsgxzshUINUYcQ+I6/qBTMMP
	 U7lReWoANKSgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB17EC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571103368.24472.17722566263628243555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f982fd4c3d62c8279c3bfe15bcce3fe68634a49ec3342da5af0704bfe91ce4
Date: Sun, 02 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785711033
