Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA0728EB
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748104194; cv=none; b=j8DtZcZ+SmyncBkKaYr5swJTps/emVJUFiZZ+ADdU3WIlG8Q90Qs41RQCs0XzGb9BhDeP7VaYv94ISC0sEdU3kNDONZ6Piqduglr/t/jqYFqmNmNlcJSx7E5O+o0GedJQzwXU2LQeDfjUrHUyA/ZcFURw/kSrwLRC4HumhdAK0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748104194; c=relaxed/simple;
	bh=nISXJ+PYJe9wiGNls6ksUYPkgYbV1BdGYbIeeJT6coI=;
	h=To:Subject:From:Message-Id:Date; b=tM+sDnLoUeyYV8R8E1Nh9HCheW/E6SM++Kb/3r3bvQC3CXjt/q2TzQ9Ix0/7N7YJLEvxosvNN50lRcrW/5Bd7WII/h3sV09rMmRvJL6EKr1YE7v2PTDjUw0yjHU3kR30iU9mTJmQ21w4lRJ8AKov7tUR/uFceF+3B+VmEMAmXlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jz5W/VlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jz5W/VlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F90AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748104193;
	bh=nISXJ+PYJe9wiGNls6ksUYPkgYbV1BdGYbIeeJT6coI=;
	h=To:Subject:From:Date:From;
	b=jz5W/VlQh7ZpV1HOkD+sVMBcnEbImzlfrCpCb1okbPKoLaa8gcw9HKWYkAFSZXYs+
	 A0nyqcxlHaiLJeMYeFVOGhqgNDJBjA4m3zGfnO7DktC+O/PsKh7fHLbBUU5AyLiDz+
	 VA1JrB1RbR8YVHb1ud4M+agRHsg439iqgCxWXvvFiyw78MJIpzMpPkemL9Nb+pTckw
	 J0W0Z8rsR1myNof8ogAKu+m5ZUKK2EZvKNPna1lGsQwxgev9zzQpaDZoGgCU7rNhCf
	 TFASMYh/cakwLmv/zPOeXrqnpm2uBjo2hiOceMKKZxOmvmJiOnPjP4UKltcPXqKZMk
	 LXLL91en+ZPyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EEC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810419357.8644.3662072262318641023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be8cf9b542a9618d7998ce688ac3d46d9a9a27a3caaff060012263675327d7d
Date: Sat, 24 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748104193
