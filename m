Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F002AE8D
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758867594; cv=none; b=X3w6wllKnNriYpj2X+cFpIema2L3Q0+cj7izIU8LViM0rKTTLwOpXhwD0AGualIHffdJb9PNWOTX1p/fO/Nre2h4kMyZQKA/d/YLEJbE7xsMDTOsT4bNawX/Yfj87eVZCZP6w7uo7AuHrYUxf/gYrz1EZZj/tuyaVditqie3xrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758867594; c=relaxed/simple;
	bh=mRrqaOv4Zpy5BDiEbIo77f2PGilNGt4hWUEhmrMk9nw=;
	h=To:Subject:From:Message-Id:Date; b=S2PG+oRqMoKZSeagQ1XO0YTQtWhbqSQ7eajD703HIa/M9MvIQYNnEYhg8qeocEGZtey4mla9/akekWrghCycskHFIdNh2iscrtwNb8I+vhpBTzaGWxPiPyn2MHJn80PqhPoeThLw/LrX1jSJeut3oCfENI2/wbuitx+flsGgwNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpwFRD6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpwFRD6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8079C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758867593;
	bh=mRrqaOv4Zpy5BDiEbIo77f2PGilNGt4hWUEhmrMk9nw=;
	h=To:Subject:From:Date:From;
	b=YpwFRD6d3JxW3XKrBYbo7G311yqR6OmNEG4zXWI5t/x1S9L1VYsgo9dEEOmzfWaC1
	 EyL7J43I57bCgLCYRiXFw9sDGB2nklJa3b0YhQ2CJZd/NtM+3a3PQL9C5ReDahOHML
	 jRaB4TnDwAdmNfSFLGpsLjgL2PM/Nx2dumy174+WsCpSXjtxZ1ZhfHulbnL+0l2KjZ
	 74t24wY3zzZGvw7JtjhQIvalgGD966FE9Ar4bo8pSWMmsD/TusLtXpJMci0k8kt/kI
	 akWG74KiWZzzQMqK9g8CGUHBQoQFPhymKwVKCKC0vy1nniMxRTS7WObwC7ORIehCEv
	 BmPP13LnN01Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF6CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886759360.14700.11416914800221830598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc74ba77f387a08ee4ea47ae595f276d5cbf82b7542a8e3a68d10bc5be5ae15f
Date: Fri, 26 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758867593
