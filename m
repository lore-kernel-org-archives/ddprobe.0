Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3356F2E1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719617063; cv=none; b=Ss/YjwW8vd4yrm+fKXalymSKNmgMmqpaIva2DmolOb5evfE1bsh2T9736x62JWPh6ISFHrhz0wBmlD7xgQVa2it/Vzdkrto8aUvhCzV/HYWLxfewFhkvH9n8gzWYV4esN6q6aeQDQ89lN03ST2Rxm7obY9wPQt5VT/7AleZjVK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719617063; c=relaxed/simple;
	bh=d5qKLaweqGBqn34rpVQhonseVFqTFl+RPZzMo2v/0dk=;
	h=To:Subject:From:Message-Id:Date; b=WP+HyANlGgMaNJwLvk3w1HiFCZPnDvUPm3r5tyD2I52mapZw+r88juZOZIB1UlUPSTFZLZCcNhlLl/OiFYzjBDCaPveiSWVObvaegm+yWkAtjN0Rx6oJLRfABZKcrQN8901Q1tZlEla1IzDT3E4G2bPQsi9424JGjWBhQJhvGE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k61THtIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k61THtIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8AFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719617062;
	bh=d5qKLaweqGBqn34rpVQhonseVFqTFl+RPZzMo2v/0dk=;
	h=To:Subject:From:Date:From;
	b=k61THtItohYswwsF/aGZwd2JqNJNzkUPfVshlC39cPpRlC2xdtyzXntrQlBd3YBDo
	 /U4N1urqbBynKMCUblE8PViLSGhCQYUql9zxAUOms2dq7lTENT/y0L4bK2st8PraE3
	 tlQBI6tbLyj/ER8OqoYAIbPzKlwyf9MRf3ZTC4kUOWb3uh7XtspY/y7Z5MNqAQzdyz
	 lvYBZZizY9URb+u1vt1trCGgSK5gQMUf+Z93eY2V/caOYOFMwagKn5GdVUWrevAYy/
	 7oAUnNofWemcv2B2Z+ofUQtIogp7jUeGG+NhJQqXu70fZqWixmCZYn+zVqG6OE9KhS
	 ovhDeaO8XZOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E3DC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961706280.28503.2190482185341257135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae1545ca3c8a3b7a27e4cc894ad4c0ad9fce12f555fe9266457a6ea16596bd0
Date: Fri, 28 Jun 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719617062
