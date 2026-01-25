Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107051A76BB
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769305434; cv=none; b=OHnCgRcu1EcgtglH6i8enUn8cYQyqI9CjIG+mw3XDhcmYDvHk3TKSr0qgducjiknfS5Z1wnot6FLh3apA/ViamX8LkS+gCWEnqxwfPsKYFpyz7kq7tVjZzINbYmv9TVNcIHLzxTyRnQhbLFc4USKdw5vXSFL+dasZmdnKIA7LY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769305434; c=relaxed/simple;
	bh=+ckNZ5OZXfl3IrZaiDb52tid1iE+tcqOAt+aVIyir+w=;
	h=To:Subject:From:Message-Id:Date; b=GjkYRJa0O3qAbm8WblksTp3z+N8s0UflcMmmBVf6aESj6cilLX2Q7wvWtWWYgc4nTC/YeVbW7N+qwNUl01HN8qJOf4Ej4JUmda0pvyJrYBdmy03gQCzjGaTvG487v9E6H3QgwHKVRgI+vAlw+zf6f6ew85y6/kI5WBSEsRCaeaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+hFgnG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+hFgnG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3048C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769305433;
	bh=+ckNZ5OZXfl3IrZaiDb52tid1iE+tcqOAt+aVIyir+w=;
	h=To:Subject:From:Date:From;
	b=J+hFgnG9AN/EJol/IOSxYaaR0BFL9cu7gCT5OZDa9sgP/j7gP1yWjwfu5g/12As9y
	 MtT/MG7Nqn1lYyu9J3zi0xznH96xGNEV8TxqHIIzM3r2ymvNsLszG/uKCyYTdsM/DC
	 FSE3MGuOf/Eh2sl2RXokYAw7wMLFSfx/8Q1JD6R/Zpf57RuAJIQdJ9S2Mt+bHDZB26
	 f9BNQDCdiiYB8uBsbbtQohRD+CqqFUDNYphIDG0EDZAcsonUNZQRvra2TX6bGoWXna
	 P/N699wrbvjPol1+/cER6zf91OfbsCA5FV+pJVqEjLc2Fej5bJraBRRzjKvW9CEQ1A
	 iVtC7nF4ES4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916DED74EFD
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930543358.7464.4345044583844108494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333f57c68a828becba190015a9b999b401801397c03cb5f94816177ed66c77eb
Date: Sun, 25 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769305433
