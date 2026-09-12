Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6425A26D4C3
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789245634; cv=none; b=pLD596GHoMx89HO0DJJoAtY4ANvheS3nGM+Fd1b0HAdslHOAqgMB3jY1s4uWC3YXsFpxD4M+2j4oH1PfA5fKxP0gsLAxTeT7C3d5KN/VNTtubeF5LldFomE4mslfzJHThUYzXz3tNZdJzJ24W6O9L40nGq+gyf6iRsxtMF7pTZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789245634; c=relaxed/simple;
	bh=Bl8nI21Y0NnXPNsShVT8YChzmLAoAPQQinSX9t4G8RU=;
	h=To:Subject:From:Message-Id:Date; b=a8SR6Llq0AymotYRohyp4Nk3znAgYGWmnClWjhg0q7Y3/mb/oBtWa3kOV0+Fe8XGTsTmlOKDvk1v9LcE8w7ReBJlYf2Dc1o92bnfY5kH+zFKg19RYLENelsZYGAXET1AHngRCZJKC5GkfxBwbR8pF1ojA2ngzt3Z5OGRtz6fBUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8/do75n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8/do75n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D628CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789245633;
	bh=Bl8nI21Y0NnXPNsShVT8YChzmLAoAPQQinSX9t4G8RU=;
	h=To:Subject:From:Date:From;
	b=e8/do75niEzKefWWuKv8Mis8U03qLnhESNXfb2pZeVnl5gVxVziwIogc1G75JtwI5
	 7eVyk/XyLlhUOKOoGXTnewzB/T+uxzqklzE2uTUR1XjQD8O+K3aSs/fOlLevN79iqE
	 nzmVgPAuzYiOV/guGiz6K8zwyliMuPVXZSnhjxyEg61zk+wq+RIdJvaaRStL+hoHcJ
	 JedXXBi8UTXUAbheuyyTS912Brh/V0IEQdPpOs6q9uHcNgHViiGflrvDLYJxmeQwcH
	 WPtRf0ApMBFPuvQttO0p+lc4Mgj3TmTlE5Or9/uBf5EMNtMbI4HFp1fn3/OvaO15Rm
	 sOXGyanv07mIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D44C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924563368.17229.530100910757511627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bde7739c2dd1f2bba9765aee3b320559bb7016e2937ee9287c635593cbb49b1
Date: Sat, 12 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789245633
