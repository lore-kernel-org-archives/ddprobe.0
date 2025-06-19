Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F9F221FC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750328994; cv=none; b=tBR8LiE5edyOY361rrfDuFsERxekXuTR0pEJ9ya1Av5LrMA+eLX5MrzE6EIhJTBgDntnSCK+p+f9phEJZcVqZjWr3sABahbKA8nkdIt3skFbHf2RXvt8Yd2qG/m8FIeLZ1mEbXUKnjkzTdGZaTWbii/0TFFxaok/OYD2nHskB6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750328994; c=relaxed/simple;
	bh=mglsrvyUysM5ipxJkvcy4qT/GvYqCPU1jFHhzP3lqMk=;
	h=To:Subject:From:Message-Id:Date; b=KidxA09lzND44TasLYitVPetdJYTrJfgVFYkmNJV2afd4kcFvmQ9YLsbKyyB/J9sPRQnRkWkZU4VlkMi7MUuifo7P8uR2eKYzvBwGE7LkzOshjZQ/HN6DNMCtOsqOH0t4sK7AB1NJAbIZPI48cjaOoljVZZuo/Rh1RttNwpdv6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLmu7dpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLmu7dpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F4C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750328993;
	bh=mglsrvyUysM5ipxJkvcy4qT/GvYqCPU1jFHhzP3lqMk=;
	h=To:Subject:From:Date:From;
	b=FLmu7dpLFI0G3aldAZ1LRuQeN6DEz3TAdjmji3lp1FXQr3hrlbEmRU5TJE3kot269
	 2TfMNdvtlx45xiW0+tFZR648pNHdiMzqt9zRC9CiODnYuiTgSTZ/8S/SGv7Md68x6i
	 029jCe4aiDJbft3/G9hd73EBCgUY6UWLjSty7nOa4r1t4fRbu5MLRyHAh3p9Jb18zb
	 FuT5+6iKjGxdRhvziE/GTkL/Db8fFyAoAp++usBT/Pqsd+jGsT1zMO7Te4hFrDtpdQ
	 4eti2H/QMaTm39NCliUgv+b2htAM6r17CJETebPgXB3xa9hugds5VZF23LRVxJXJg2
	 ac0PyAhBaAFZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A4AC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032899359.13412.17597486373256237936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc82f9a2672374f741d0e9e8075bb7c6b4a42449d9dc123c5b1b38313cf4e7e
Date: Thu, 19 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750328993
