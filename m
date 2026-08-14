Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5093B2FFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786716634; cv=none; b=TODWPrTRS3vtw5NsdvDY4nTvyCPlPhx+b36bp4p0xEvKGd6x8/TvkzFzGgzNNob3fZYd2/wOft5dCDxhh8KO7g7edIS6h/6bDkjgGSDDgdYif/CztVtUYMd3b2YRZ8hgRvrc+/AXPHePdw+dqYu0L6Jv1p8o1gd/FIa5b18kCYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786716634; c=relaxed/simple;
	bh=2mbtIkC0smVcebs3sInAsytaK83TbHY/j+PLtjGOX8M=;
	h=To:Subject:From:Message-Id:Date; b=BYrr+v5HAqlGg31X3zJdwuGZBxSDF+T5V6IceiWNidXHNS6Ropkk2H6/GxCZdFQJM9FMZhS8h3y34pi0SC8WAVJZUleMDiyAPr9kR7IVhY35loOGArOAogtOejjOmIbqW0DnpMRdL9CAEArdQbNnepBhcZkbZuXCmEGWmj2Km+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko3ZdL5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko3ZdL5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C558DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786716633;
	bh=2mbtIkC0smVcebs3sInAsytaK83TbHY/j+PLtjGOX8M=;
	h=To:Subject:From:Date:From;
	b=Ko3ZdL5V2+1/XChYMvnS/L5apy3Jr8IgsFmh9rVUh4BNVlcrSZlt3vybDG7izVLrX
	 OvmZO957qKcBi32A/Ay3s3654n0HrhYLFXqRNOQSjLWDwlm111VTeivV89dE3yCIN5
	 qM+nXg78Rn/c1J1gxwnZ2Fej8rdvPNgWnBkQftK2B0hab7srFfff/M3F2wGGzu7acv
	 AVwiI5iRTePe4EwkDvTeUOm7lmd+moD09c36IfjOQH8NXQ8S8UDUcWxwWemFu151oy
	 +Y4IsmzoBLqo7oXbZLNm+w8eu5RzOUFUSM2fOzYaT0G/4a4yIJmYUK9fvAhJsrieaV
	 eNSwTRus8IcwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0B0C5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671663369.9290.2059563871039549675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbe986d43563c5f3fa52f813b00dd33aa10f2ca9b2335ec5ec226aa0d1e0a7c
Date: Fri, 14 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786716633
