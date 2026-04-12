Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADA7212548
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775983054; cv=none; b=WL83Ki5cSmmbCbtNxx5mEvk68ZiMNeOBuzdffQNPDruth54kDe+qke0PoFBfbzFYt6AtSMtRjU6cF6q9+rW3TebLJslvRrnctTUa0D2YgzHI+1tJYXIHoHAGLZaoT5SYSi1vYkyJKPveyxxo9gMvld4nSIs5TtVLFu5NwLGywDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775983054; c=relaxed/simple;
	bh=PyzHqc/FEE4ilzpWRzv6W80D+0BrVRY/hzBBtuaGYOQ=;
	h=To:Subject:From:Message-Id:Date; b=l5CIdtDGIJpFK1aQ9vG9dyTBYzlphDx52ZKM8OE/desBzo/3EBaoaAXa/9pWcKgRdrC6GIWPhXZEFpYEKiz4QYbPzDcF0oLer2P4rCpnR6L4hKupUAtrz79mbYe9m4jQketbhnCCcQznjD4r5YRRa7kMd9XiNMCpH53aBY6ycdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsYz04q3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsYz04q3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38A9C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775983053;
	bh=PyzHqc/FEE4ilzpWRzv6W80D+0BrVRY/hzBBtuaGYOQ=;
	h=To:Subject:From:Date:From;
	b=DsYz04q3c432ZFtf07zTCbq/rGlwMoHQo92Mp1UYgFOoGLCe8E8HzPxqjjNKvMAub
	 +XnUCCb9FWQ/mUFhtmJmMug1ntUV9PLw7whJCV+Yzk4NDe99Md9bKKLSJus4xosArV
	 mYzywLO7MGpiOKyprk5RDo6LRktRr0XT4oUzaTSAwMbO8KpmipVJe68++vCDA10I5t
	 HOuTANPua0K0FuG6QdJ77ZB2SJp9V+Pnxx27Y+drtz3zMwkiEQvgcNMvuz1kMMZELX
	 FWbCJDvIYxy1bWQaUShiiILXCYW3aDUw1ZjKts7DNF/j59ySS8gxxvrIwC1l9IYDGb
	 NT9kdfTnaSZ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD645F3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598305368.2795.12310346577763420541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d182e645209b4e5e47d05b063f5b6e6485b057ec8e2fc884e2d43ac690d4282d
Date: Sun, 12 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775983053
