Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8469279D2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720344983; cv=none; b=UpS/Uf/waS/OumvhFJ7LQid+LqSiR3b5hQQ7PdU9IJDCIO4yLi5+zmIVjZpIrkfUo+Xvo2oBKW/FC0FOa9KDhL0Qo2IJNvAP+HEQ3oMuwkXTwP2XvjsRnFMH6+J+GUY1p5mpmZgR9N+KEPH1CreQaaeYxE8xy1D1oKJaJHcxGRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720344983; c=relaxed/simple;
	bh=S76zVDPs3k3N2xcVp4tCgkjWD6tLzD2OXy1C2zqmHPQ=;
	h=To:Subject:From:Message-Id:Date; b=iC0ISODBIBQ6u/KW2X4D2CSY4R65zQec1JJUJO3F2cpULwUCfpapW15B/UjrSOwyKHc2iZ3mz14U7pwYB/sa22VmJF5k06O+uOsExie03dR1uBoHX7DORfkMtPQTK+AFMlgHZqfoXNBbvdEib7zwdsAyjhTNdpLFL4NEtjY7UoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBOxS16v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBOxS16v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E91F1C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720344982;
	bh=S76zVDPs3k3N2xcVp4tCgkjWD6tLzD2OXy1C2zqmHPQ=;
	h=To:Subject:From:Date:From;
	b=uBOxS16vKzwXFGK5uSgNtMleZD5pW+eFvOB8IGCfXC9Z+LgmfOn/4IxZ1Xx1oZ42z
	 000kNTTN6YuClP5d0n40NfjkFEzsSSWAv1MirfRKxJF7rhpKV2FTTwCxptWQQpiVq9
	 fsinHyzPvMO5y7lw4yKZ+TR37fWB250qi5FhtWPgTiR5XKx1jlGSatytarJl3sGiOq
	 NZnqQ54LlVNJ/tREpD4blL5oM5NrEJMM3GFOhPMljQg4gzf3wDkuK7Z1Ou3qhQKcRn
	 wHuVjXgVsToOtwel3Qc/tpqw4yHSYsj6m4UzrdfNplzfEskusC6JLOTfd6NkVLWq0H
	 V9oBFUiB1kX/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC351C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034498277.14516.9729563176590587941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3bc82b9e0d44c3e905d7baa4ac85089eaff185cb692190944bda1212bff4320
Date: Sun, 07 Jul 2024 09:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720344982
