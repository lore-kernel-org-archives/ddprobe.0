Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E3627D77D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758762594; cv=none; b=oMZq5PDlTgcQzdqTAcgd8b3LNHi8DnPxITky14fo0rgIXSZp6MnHxkn2rm7d7bl6T38GflFAkdNl73tEsZGjQVtS2bkk4Lkh0oT/Rm5QELeujOqkBqkjpwbhBlUS4aPd6gurB5jLPqfZ3x+4gXW9FVpoeSqYaQL8MUI3XjwSXxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758762594; c=relaxed/simple;
	bh=1IWnLdrkLVIFx79aG72ncO8Ymraju6IvizIOaZTT6yc=;
	h=To:Subject:From:Message-Id:Date; b=WrAfiI4Q1wM4lbvXN49lycFzJAf3KgTw9TPNiH47XryQ3sdzrEg2AX7MuEVXzSxKw2orp1jrW2ef64K3pGjYpcsBpcLoDjMkE7Bi9NSiya8jAgFQ6QJXbgtceMyMb3uXMVEn6LRazw9O/t0G0advZOD/aLL6JObQbhe7iZiL46Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ekonjy3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ekonjy3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A460CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758762593;
	bh=1IWnLdrkLVIFx79aG72ncO8Ymraju6IvizIOaZTT6yc=;
	h=To:Subject:From:Date:From;
	b=Ekonjy3I5cOIYDq8FyVOTWsoxI+WAyAwNEgewidvnLXtvgj29plDzl0AApodS0H+M
	 r6S81I2lqQNgWW2etA4xOi3bFnxUYMDzDEVjrzlo4JIoOl0yaolE8Sckr4J7FMsf4L
	 p/+ENf/8aRPuRskheLuIyBdPi48HdggiiG2Vw9PyjQT+etV3t2mpIOUl0NX+hIVC91
	 ck9mjs4cVmwmrjq5mTE13o1sti7ROcSUoa6fv0ScUXXJUHeSg4cXq+6aW0fRotNkv+
	 +rfhzHwLeGz0S6pLW7Jp5R940WNeN8JjgoHe2BDMgId4ftSlWvWmIT8Nv+E7Z+zAro
	 vFVgvLwGe9qlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079FCAC5AE
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876259358.23653.11624740560838310919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88591dbd00017c31b8c94e4f82199302e19c93b8c04701294cd3745dbeeb7f7e
Date: Thu, 25 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758762593
