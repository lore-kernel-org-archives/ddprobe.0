Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC7D14EC40
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719507263; cv=none; b=JYBeJUPuyKk0GCOzR1JWBZQ8bOBnkoWhD21u+hKKnI1/amVy9daO2XBbn1+W9SJ/YuYNJaaLe7pOWPcLHmaSKpr41rM98bHnI3Y/7aWYbM/OSOWc84RhOegH03WDIOumM3/1Z492dLa4SGJaqlSs8ZcPT29wOj6BSzQ5tV2kz6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719507263; c=relaxed/simple;
	bh=uve4Y03ADl6Woe3yPFYp+zL7b43W0oxRtXsFdIJRaSM=;
	h=To:Subject:From:Message-Id:Date; b=jUtyl6OBA1Q3tNQI7sjUfNA3hXvqrdoOh5Hn1NfF5olYSzNefbf0n8lQuP5vmxzymYQK5JQqr4cWFvYJHom3dB9v1rthRrVLbwi9fb75W/80Qt4vy5s78GMF0Kxokg5JqvVnJGD6/7TZGXa6esc7xmsyhn7K9H/BN+myHn55yq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFlbQfEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFlbQfEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6397C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719507262;
	bh=uve4Y03ADl6Woe3yPFYp+zL7b43W0oxRtXsFdIJRaSM=;
	h=To:Subject:From:Date:From;
	b=UFlbQfEccnC3HVd2MllJtufAmh8EArzFu73GsrNuAnrbDiw8MpxF/f8KPeJVl3uVo
	 qUDACEs2WwPJgD/nFO7y5ALXYehRZDOpmqrAcOyXN1zq/AhD6yJlQjgbOEiZfuPhtF
	 Ld+VRJhCH/NFrgaJB1k/fvVc3R/Cd+CQWY6cN4j63saTu0CEPu9+C2hFps0cxftbgK
	 DNXqRtU9SAVnaY64wKIPDsxgmB8srMd1tsP8lB4AkR4BnJOFbEwqWzaSB5Io+wieVp
	 +3X7sEucOODRR/uexdv4TckY5zKJxjIzV/Ula0RjlhFnEZIXxenJGAFxxXwm72tjLn
	 /rMOD2pl0RAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D11C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950726279.31091.18132576284681367544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28d5408bcc53e4f10eaa47006af2971cb6487f245effa2a5cffd4ba327e6fd3
Date: Thu, 27 Jun 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719507262
