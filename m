Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234642741B6
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759597194; cv=none; b=GfWjEzCFDkP3ujGEao6LxAqa43mnwTzfR4e9NVqmSVoTYRyJX7AyFomkUo8aeKzOsL9epiZrpdih/Sd1diITdMDTjD4ZI3Ube+FA7A3AcNdNg0m6XAu5mEIOpY/r6O4RWVVRbLyqITdE/CqDLOWEdjaCzR6vmkJArIOtQNci5q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759597194; c=relaxed/simple;
	bh=3oowbsSvgrDllC8J/gjm7upnrflAEdpBqbfsB4AwTek=;
	h=To:Subject:From:Message-Id:Date; b=bW/tv8pHmmj2KktD31H4DnGrPPTxHgXpkdAWJRv3dzZyvJhganNgVi0AQS2AdWv6uo9A/W4BPpmgbouOBVgUoqfrgCCdcSCtQR234hfJFILqBxWlJHa3JPidtUSXyH4FU2uB8fjhS/qgpKfywq+6XUeFtudSvwY2sA107MHk0n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FF+q+LHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FF+q+LHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A07C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759597193;
	bh=3oowbsSvgrDllC8J/gjm7upnrflAEdpBqbfsB4AwTek=;
	h=To:Subject:From:Date:From;
	b=FF+q+LHViklX7cJA5yZzmki8Hq8J/jHj7c+N1lIscYmuBD5Kp+KG8gnC8yx6X+kEo
	 ZIGL3DNEYQXAuuVQFx7Q5l3OxSfAWD0H3/1m3UJIeUktkUk2wFy8+eMdCyVYbDbJ14
	 G55DusREfgxCCHH8wOKZCnklQQn/GMf/WvTNcbfzf+roi2HONU7nKhmtR2rcpy6oh0
	 IBOdiN2T79L1vZLIFg7IDQgMGx3HT9YSjXZhVwvB68o1D287OnxKR5ys/+CT15dsEd
	 ZQ+dd3nFYjh0edAgpE+U7pdLbUXNkV0aQY+RTZh3NR7tG3UnAjYJJ+P8cjXYX5vKCa
	 38xqKoCL5xkxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941CBCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959719358.1510.9319722603981630741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e8a34d62e6377eaf3405df4e9d9967c3546d6af9fa85606d8120422bd59dc6
Date: Sat, 04 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759597193
