Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DE923908B
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748002193; cv=none; b=hH8rdLLfigble7YKzIdM91L83GFSGMeDt+D5bTK2pjKTut8wD2mq5bZUCM1fYTqZqY0C77laWQ7n2faSiblIijvyGQ4Pz200uEWYQemB/kTbqZQRdclfap1F7dMmiw3gpoVTc1nqbf1BboQY9Dp4dZw5ONVhxdC75FJ1pD/ka6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748002193; c=relaxed/simple;
	bh=YLb98Ltx3A2f/yZ300rxNzJcTdmpIrnfgFiuH7LMUkk=;
	h=To:Subject:From:Message-Id:Date; b=JgU6aoH4KKaxDVI1eXdSh1psJWPKJ16XbANFuZLLzFqE5iZOvXbOIZwSew1fEJ01NcXv2C+WNFUGszzDJB36wZPNXHtDhA2f8TmNU/Kk9T2uOy9aaVUdPC6WSKyKB+XPwkI1jnXgWn+yHJ7qvsHwUK7LzGD2srjZ98l/4lm39KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PITaAGVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PITaAGVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0603C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748002193;
	bh=YLb98Ltx3A2f/yZ300rxNzJcTdmpIrnfgFiuH7LMUkk=;
	h=To:Subject:From:Date:From;
	b=PITaAGVYOKdfj2wGOqhBsGhMtFBOhFvX3HWkSN+VAwm4I49ZpiT/Kem/jNwiKmSWt
	 1waaj9OZCGLUokUcQRumCor8LWYj8n+lJ6PkTg3En+U377ryLuqQ4D0+oQx7+QavM4
	 UtOSP6u85tgEj/MqyRL+0StgB0crhnaMTKw4Z1Z7nnrnQj/hml01gk28glQZG4z5W6
	 7Ik4SP5S0jTLtG/0V29OlFAxc494vl+3LdR2bQ1Q7Xa+qOz0xpq38qT9H2hHInlAM6
	 Cs8bt4N3+tU0b8fwK4CC8iZfkBSj/5HkWf0tSmE0m/17UJQ9VGP6UPKVdfdIGFKkik
	 NaNgtawSQ3Vag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E59EC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800219357.25414.14671948951335561099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee028b217231de61e7f2d169ef38bbaf4741fcdbcbc16010c2235eadccf1bdf9
Date: Fri, 23 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748002193
