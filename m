Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15CC3054E8
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761409793; cv=none; b=OZ94qBQ4SMODYyA/UaFGCaCdN81AW+bOLtmX5eXdAdd6wmI/pUgBk1NdoICvT6puqGvYetIP9ECuRXJdA341b0v+JN8DMq+VcgOpqofWhwBxWXUr2dR0G6CUi0THGMKfLCBKACWzBUAZo9oomSrtV9qOjkQkZmncf14CBmexHg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761409793; c=relaxed/simple;
	bh=i04cCnbkRYn3pCIo6zhYDrywJNphisVztDj+zWaCzcs=;
	h=To:Subject:From:Message-Id:Date; b=hhJlJzzJJmCQ2ssaqq7Z5oq1/xUGiZ05MTaPbE9F3jtWR+5w4Ndra/mb0nRKbkOGA5x3KlVajj2tAzTBcYwxGFq7ogZL5ClrcTdghVtEnbguQZ3nqSF9X2OzIlfwNFZ0SD7Rmsk1pde5ejnrJc+PhBAtVeKpb6Vmb6MOHQumcu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYhSjYkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYhSjYkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761409793;
	bh=i04cCnbkRYn3pCIo6zhYDrywJNphisVztDj+zWaCzcs=;
	h=To:Subject:From:Date:From;
	b=mYhSjYkEOueKuaaLf2UTzpnyT8nUbvInwW8Ci42ClyC7LrrUrfvxmhwFRnR4FLPmC
	 E9NzDatz9A1xUFniDrJNCc89IfboNq87UEf3b7WqEmJKZKluBnB184UrTbi4kmJ952
	 TLR91/4Hg+F4ctgrVljX+bC5+JpxpUNX0MKJQaQXrC7Jz1au+hZu9Wcr0KuoKot6Ef
	 nCy8kwecRLzgJ+MP+Rm5Dl6xus1RHf9pLwA6QZfLb0Jn6qS6hyw6QloBTIp3EbjdjU
	 QIY8Ge5YznVrXbbT6UNaCRJvOPPrdIS1kMqoD5V75O+8EyJRsIFzOodwr55w0sPn8o
	 3n6+qwa9EOQ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6CCCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140979358.20584.989169092591517919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdc42452a198ec9d18ee4a408bbf4cc3279a20fc325c61dd77a6b5228d83a06
Date: Sat, 25 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761409793
