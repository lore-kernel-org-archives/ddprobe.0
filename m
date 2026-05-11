Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BA6298991
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778528434; cv=none; b=W4lQUC07Sh270pS7Cw6sTV4kIs2viM2QJ8hYj6+LVRuToTGWx5zHfjSCFdGWMXBhW6LmCjut8/ZjUkvCKI8s4rL/pVegcbGOdWTf7QUcwZvFZ4a/BYSH6izJHawtfDm+8RfoB3P58VGNcSzQP6uO/GYbh24ekzH/XYZI4jSnheo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778528434; c=relaxed/simple;
	bh=fWSboXj38ucpPZK1dGPkGSaibGgX/NASYmGL+ZxYwvE=;
	h=To:Subject:From:Message-Id:Date; b=NpCSAA6cxm0NwtWT2O1YdrbG77AI+2wDqkW0xSY1KPhfTDPQNOKTXDZQwS+9f2+OXVR/VQF2Q9oda8SQWn+SCUga02p8hISHUWgS+5EWjD3mCr0OQt8vmxsfEWlVzyJSTmRgyE/1pz2ERrsKC+lJ9VndjP7gwgl0cidLYGHEppk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAZpPlVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAZpPlVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD00BC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778528433;
	bh=fWSboXj38ucpPZK1dGPkGSaibGgX/NASYmGL+ZxYwvE=;
	h=To:Subject:From:Date:From;
	b=iAZpPlVsblrNyzUvKc8iDrjWriQhxz5pbViZ8OokiJLONE1yuIo45aXaiqiJpdX0W
	 L4J88/jK/B+FvPeYsfRLUJ9DTbWAUi0u05vFwC5WjH5B/8Yo9Few7ZSMZTGKdYp3Ux
	 zoe1ZizKKh9BuaHpU2wt4ARtH6HHB1U3W8oT30QH4bQDm6F59Ga1bnQAX5ZqaoLzmI
	 L+8Eq+ZiBigh9nJkScCgPpggRRhkc+df473SogJY/blj9A1rfmF5ki4EJU0ftABs/K
	 ApIzEGeWXOPRY0+dEEO3D0+opCU7dLkgLjJGF2Tenl8Wdb/whQbBc6KzrSVD/xa97m
	 UPsUER5xj7N2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACABFCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852843369.24351.9262317673781312935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e01982849d466f0dfdbe24cf36e1c601d6d94cccca7855efd7eca840f44e685
Date: Mon, 11 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778528433
