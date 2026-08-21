Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8648745518E
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787304634; cv=none; b=OhQgm2JIPQm+deYSIh3OoEh+Z6zxehpOjChtqDcYsvAQn5cF8/9RtTHPnkRjzrSS5zs9540lWwqQoTuD08oQ/qDZ/U6iGTAgVA+SDn7XpHDoRVsuYZdlFIt3K2/MeNAHP3A0FrdCvnJMLKueihxVc8HWXhDIR8G2YUHPQcsuZbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787304634; c=relaxed/simple;
	bh=Fy2sKEExjhGm0YXPDjP+3HYT9G2D39OY8IA6LvJXt50=;
	h=To:Subject:From:Message-Id:Date; b=s+QWwghKT7rLT4WqWPaKB+mm/bwOhREkfbGQxqbJkZanj1o3PSH0GUvIjfw55/3/QE6oAltiCWzGhi2p6FCymOr9GlQWcIlVLY2bmFS9sEIaTbnzuf9n68eiKIlm5tEb/jxCyU9q+WecV7ovgsyIwcc57dUlP0eVOgc1chNxG5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry1E/29+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry1E/29+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF69C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787304633;
	bh=Fy2sKEExjhGm0YXPDjP+3HYT9G2D39OY8IA6LvJXt50=;
	h=To:Subject:From:Date:From;
	b=ry1E/29+yCNrUMg+wJtlIL0Z32kVWoDrbvle4jb44uo+hIJNOZC7QbHxBLccmwj4E
	 eKv87w81ZClDDbhf5bzbA3bcJGooKvPfrewRQf1LiR9rbayhmsrHI9DE3p1hfO+7cL
	 aRmUO4OaXVLco0D/2sFwAMiisPig4BWzxAQqO0gkFep9KmQ1j+687uc6NPJyOGacME
	 hwULm7Ntzn0LSRAmX/W9V/+9oZnZk61DjC2l8uOPAP6BQbS400Jfq5IDBVmV8m4r1S
	 bw4rmKGVlEfCWNDDfgHs9YJH1BOqaAxxNmz8RhZ4FM0MMHIjC5zCRJkN4MmKAY+liO
	 M4BSZw9Y/B6Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B985DC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730463374.16719.3589931472508551603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a114287af19e1ace48356548692b23a77aa26a960edb5c0741880e630900c534
Date: Fri, 21 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787304633
