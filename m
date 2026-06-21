Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450761A3166
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782047794; cv=none; b=JZYYH4NCwLqkxYubeh3WNsZTSx1JEKm9I54AmtoNK8PGFslF53DDaL/s3RvfCrFFL7mjfg12x3mYU8W6gQAb0mlRRmQZddKNoy4m3xhX48nHpbU452gEZtsHTdC0l05z0uEsYI4p2G17PSYsXv0DG6bmgee7qd3hhpbJ9MhQINw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782047794; c=relaxed/simple;
	bh=UnzCNt8gYE5UuaHIxS3FLrgomFHoMbNF7xaqUctQ9c4=;
	h=To:Subject:From:Message-Id:Date; b=gKi9B6kubCtPXOjQm6SyynPurIW/y+zpp5SwHfPnpSE5CzE7lxDATuJCG8RbXhh7ui9wCvbHLg5Nj2KnnuTIgqzM79dMi/MPnRP1fCX3K6Eczyg7Y7+QIaU6dW75H6+e5YoSes9cLhAaUPHPXlOEJOupC8YEaQXwBbtfMs/yJ64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bhau8nJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bhau8nJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C82C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782047793;
	bh=UnzCNt8gYE5UuaHIxS3FLrgomFHoMbNF7xaqUctQ9c4=;
	h=To:Subject:From:Date:From;
	b=Bhau8nJyAz9jbxejJOa/qOT/Rd/bZ5bMjoZIQ9IgU8Bhz+q7x8kBAANi3yMl498+X
	 IvMNr1hSO8nb5sGHHVWl60TLKYtSyyywNeokXMOO6DSCgIEOfgSW3UxjOVFogfHuwa
	 m4dp9bomPWIjvtdyX0CwCjXPs14CcQRTnAMbk59+auxvwUeAfLXrvz+7b+uDkph26C
	 4q6QN0bDdUI4sMjmGt5zv/soi+fyyAflHdLhsk+5gWxotkslcg5Iea3Qyedpf5n/Yj
	 BCu0vOkr4kJmBU1LKvoADFHZdxMJlJal1Fb8yfGRrA5Ds43Et1wrwWlMOigYF6jw/Q
	 axrTgpIIIBqPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA88CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204779369.2577.6278995839473875499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c743691d00b090cbce6c54da2320ad0d58b49ad13f08ad9c3471d809a102cd7
Date: Sun, 21 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782047793
