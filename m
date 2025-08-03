Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC382135D1
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754233794; cv=none; b=KS433dnHZhHqxu+AAL2/1kUxBETVwKvr39N1lmj/B+RwRuWhvtJaCQj2owsMcElB6W6iaTceyR1dX5UqkOeWmYOAVAkBt48P5UyYsrM7X7w0tuQgJ2EeW/ajeT0frZ0qu8j+2Dj8GwRx0kYvD45nOvMn4VYgRUnOUmgj1ju1eKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754233794; c=relaxed/simple;
	bh=t6//3dzFBH64UF1jp7UgIe5xGub4NDNnVJxA0RQfVGs=;
	h=To:Subject:From:Message-Id:Date; b=Rmgla6Ntzxd2inMsi/G40eaRh2MZG/8yVrQ+CdTJMN89fsIro+KBDMrEP3pva+chyj6PPyt1+ZC7PAVrWrRHpZ42QNmBdwARDIoKwr4qKMSnGTfmXXqtXgslnrW7B7osdqBwLmNAmiNdpMzEyOYjjMzMpCFyomRIuXFM/hzwRTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HK67uM1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HK67uM1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE25AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754233793;
	bh=t6//3dzFBH64UF1jp7UgIe5xGub4NDNnVJxA0RQfVGs=;
	h=To:Subject:From:Date:From;
	b=HK67uM1eGqjy9Jx9gYanQFNOh0yHhYuek4UQik7FakSkycvH6jfDNZqxSteZgbX+e
	 y1PwRT/LisLLivc++umtMn6n1tnp5xTvVjnx9E/YVP7t8+RJAS5z/V//qANUPupFAC
	 5qU09olkup2Y+4MxULfONYwp/OO1g3vTG33dbsU3wUEwnx5tg21fFwbmdtaseSoQL8
	 g9VA7bAAyr3dHAi2AxiuOzzPLul0SqLz8mvB4d8SYDvLXRcixPg0z7hXHOfiITOAZ0
	 6+zUmQxFGR8fnc2gyIc+8TQ68XKjZXwGs67wOqqMfmdO2zfvdKSvkY1DTb/UCWtVsl
	 H3egwEyF4m5Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957ABC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423379359.16196.15818702245694216469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdb80057ef5c57d2af0bf3f5af3f830bec810441307a48b44937d2bc8ee4c0d
Date: Sun, 03 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754233793
