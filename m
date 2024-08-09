Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEA418F2E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723203354; cv=none; b=swLtm01gVTB0ut7M391vG7dvpJaTKhTry7DIWTzb3ojv7ptZT75w5p/AlrzDaaldKb4IS13WgGVI+KGMPDl7BaLuPap7tg/RAYT43QKlKTYZmrXq8RK953BpYX2vgmRcqltU3Dv0BOW/n2LG9KowUV0NzlC0lvKWIJAo6JmpCXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723203354; c=relaxed/simple;
	bh=JzD57TdOsxJeS6zW1FG4fPCfB8DJR2L5j71J26c8UpY=;
	h=To:Subject:From:Message-Id:Date; b=YgU+KI5a//boBUtmWGR5Nva5kLlDaeZgh4iF80VF2Aw1C8jn0XB6FMRVywQkmMfLMG6DljeFCj5vrJPMMsaFnRjQKCgbd4GNrlqYaklA3YnjjNZzSov0aKLxfQZl3hZJfWUkMt1HfB8IzEaWSBxH35HnmtIB6bUwd3V0zDdPD18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as4NAC5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as4NAC5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4ADC32786
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723203353;
	bh=JzD57TdOsxJeS6zW1FG4fPCfB8DJR2L5j71J26c8UpY=;
	h=To:Subject:From:Date:From;
	b=as4NAC5mXjWv2GQhKEdG7VdHmGR4PI6wGKJ+NQvUv2ND64z5fgOXQzyt1tueBxFNp
	 7EjpacZ1s7yNU929G+saUrqMyrpMndozL7nvUXBy9rpxAirVMX2W/AEhw6+qEiYFnT
	 iF5aJqLIoM3P0asUcuZz1ZoKnyqzFnSEOLvm+oYZEYpOcK8QD9uCTXxuA6vjp6xIh9
	 Mj1iG0mJFIlIWjGayEp7eDoFoCA/qhybR2ywaicmU0ItfJE5Bn5KqFgrqIcTq922HD
	 3+bBhjJGL7nQfonVgwSYzJQAudzekXu9hMfNZAIo2+ZiHIekXHhZ81pa8VbLxHqOlb
	 JkN+XAaV0zmJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BE6C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172320335358.17862.18098542152254052416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30219c7edb8f03d0b75e4cf35061f81e06998cbde331093bd4c924702d2145ee
Date: Fri, 09 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723203353
