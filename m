Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267382D592D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771160094; cv=none; b=jFAsUaSKbnztzUV+09jfZKUFUriSQPUrbSTHRjiYXiuCdThHyiglKF7eUqxyjpCESFyAAR+ly7FZ4vN9Gu0LmyVBh715iv9wPDBJF0x0/rzT8rsScnAcr3SRB7S7VsqOlWYjFlGsa4Hv8cwg/KpW/ejKT2ho1Bt7IPfyZZIG8OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771160094; c=relaxed/simple;
	bh=vhDVVUIH2NeHaSLZdDS5APMthZK5KDHYQTZj3kKXwM0=;
	h=To:Subject:From:Message-Id:Date; b=i+n4x9ZYVzuu5qBquXNHpMa2yPbbHwZS8Gi0F2wrpzh2xh6Ui9zgp+VWTP4g1S9QzHtmVrcYw2YK7TwKFR+Udqd6MoPWs60UfMc8lIAftvjDukwESnnrnzMkeIApVV6zxZBt/wudTk/gO5KQSkOunYXHsgBUSLbqmbo/HUaXrNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYJn09LD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYJn09LD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B609AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771160093;
	bh=vhDVVUIH2NeHaSLZdDS5APMthZK5KDHYQTZj3kKXwM0=;
	h=To:Subject:From:Date:From;
	b=gYJn09LDMSET9qhdtVUx2OWn13o1yAkf362wFJFubIpx/ZE3U5CVv3AUcOPFg9ZYn
	 VfX6GIXBtPRLTQT6xIR3Pj7V3hAB5D3VPwbS0KiULzxVGgTD5fpYgQWQ5xcxG3FuRG
	 NPNQoyueyzLBXmHYJS8zoWE33a4g5XdBYkQfnL81ZWtYWLivhi2eSfyA4szrHSPYAX
	 wsVlb6NhGD6ihZW9FznWqeivV/B7LGNIMw6fyZPHbrpKctANXf1EWUKLfIiGZHwNx/
	 /iNcM4kbWc6OMAQwFaZU/tcvlA0vD6aZsimnyGZj+ALCClEcxM/Vk/+oxq9Xggmzv6
	 oqYgPVMmn2jHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1575EF5879
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116009361.31827.11696574223480463170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4f85e74422a00cb45c067f5f650b448e53d1db180ea6f493fa64e8b2575139
Date: Sun, 15 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771160093
