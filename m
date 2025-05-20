Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DFA280CE3
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747767594; cv=none; b=NuFG8iOzmL0xwsWHvEYcp624FOx+7SOe2tIEyMw6DlgniDh9FWt54cyXFdTw/ccDMqvsi1c3+PhTF80fVjV8yezLPx6gVc46uA/m1oDsGxPrE2Sfonem/DVunpRqH4G8NKfpCPYeZ9N0EyQNJW2bjrleWLTWrcaNQHpBJIF/xxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747767594; c=relaxed/simple;
	bh=Ic5JojMg9vGDdzS11ciAxarLUdMxQ5CQWba+pU1uTng=;
	h=To:Subject:From:Message-Id:Date; b=VrKiduqJVtWxUOviBtgkonGnged05BUQ0/Mu/JBiMOqaarzgf7NaNDssc3+ujtZpSzT4stC5TbGyEf8NKGpngUj4R9adhJMO+bdE0ilSQEa1Q0lvSBjHh0kuPC+gBYl0K3GTiliORLASCqflrL2F6nNLwdlqUV45Zq4QIiYH49k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJOKn2qV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJOKn2qV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B0C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747767593;
	bh=Ic5JojMg9vGDdzS11ciAxarLUdMxQ5CQWba+pU1uTng=;
	h=To:Subject:From:Date:From;
	b=HJOKn2qVjSoMNixZvb/vQ9ZFiXHTjyDRRzq4B1Dk8tWWnwuwU5FA/B9pE1Z/jMh1h
	 wXGUpx9K9sqYusadX22RAZUT863WM+LQGHac8jddspcSYkhgIC16NnVKEuWWNpMyP0
	 G1dZuHWA1zvl0HuhDFWuL+BY55vh8QH+KwKb9E11boXvUTSTgXRsaS2XtJkNKeI9T8
	 0wi5OzTlbgauAAHU+MCx5od0nR/W1Cr3mfElAKje6LiehQhYDp4q+PrZKLrEphFKxf
	 Ex27znz6EFXuVu9BXWmZjC4sGM+MEzNAp4ynCP7y1PTLYO4NJLR4+8p6rpy0ggZwT3
	 PnjQZmOSBql9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E1C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776759358.32441.11465265127147966196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650e1440360949f75cb63b5edc3331be28799b468283de366d2b5f7ffb2e1061
Date: Tue, 20 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747767593
