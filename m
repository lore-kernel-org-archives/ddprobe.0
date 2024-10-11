Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DF219F118
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728666354; cv=none; b=SlgiqA92947BRrhCElXyF3Oisc0GsIc61tyo250mOy6lIMjKYoPW9Y7Hc+WiJ5Rw8SWbhRl/xS/1lBUIQbS7dEhccqgRAnf0FGBxTm0QRMPFFfBQp+c+pC9JhvN4xU8nXYVe4ReoWAUB6G7cvOsn++IEBetsKpDfj6pi5B/hpHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728666354; c=relaxed/simple;
	bh=ehyJxtv467eWJsoL9hkWIN/mFa4VVK+K+6BccClmtes=;
	h=To:Subject:From:Message-Id:Date; b=OMamUxRA1476PXtK1f0EY9puCyGiNUkgv4FAUWnP1AM3HRsouRAgR/KrohJQEjBneuZVyux4SWTEhyntQmLqGYby6SgkDb2sdmtDKH0JDM4Z1siZL1tEM0ic2AlvS0qN9gVotGjuacO8mc1IFOVXucYk7vy7QSK7WJU9+2tgOE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLMQeavr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLMQeavr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C74C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728666353;
	bh=ehyJxtv467eWJsoL9hkWIN/mFa4VVK+K+6BccClmtes=;
	h=To:Subject:From:Date:From;
	b=tLMQeavrGbM84cFtXodg1N+moAGcWckU5rrsa2qMEHA50O2dvTx7f46f8+VPHXUq3
	 +GFgElT+3TYNKAZXt3UV96mdfs9BLmSNUCcvOR/GDnqHwngBGk12LFhJCkehjMWB3+
	 0kejpKkT3GDATiT7Gi8O5rglgeMirw98Kk2D+TbaqwetxAmKh6N5qt9fIa5vu4MCEd
	 9G9uis1+NplEjyuB+4vXCR16CbpgY9ltELYRN+XFonf7Ujf9tESOKcRZXRGaf7zsJS
	 KOuW8SMKBQJMbAjwknq0Hgr9vnh1zSuW1Gy35MgDq2tN4X061eXK5Gtq+9qBCm1kjM
	 B4E6kWoIT5M7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E131D24470
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866635363.16452.7522122650919182579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fe15fac6a202e75f9fb5cf946a12d0443a0a094992bbd5479c4bb0427c750a
Date: Fri, 11 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728666353
