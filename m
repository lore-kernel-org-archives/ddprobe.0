Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A49F1DF751
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769938434; cv=none; b=f3udBXE67phoN6krymHiWo6cZaXB26Ju4m0ubU2MAqQSkAr1iIO9WDL4k+ToCCeV/tPZZhFUjnz8fxWoWOn7BD/2g54LiCYfd6lfgsqAxumtM1Q97ULJrszZHfPoXJZdkg+FFDTBRGY+dnKjiR86Ey/QdKiVY6ZkLQrzTVis4Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769938434; c=relaxed/simple;
	bh=gwpYFY/lOaDmDkBINmdnqtvqfN0Fg5ohX207/3p7e0I=;
	h=To:Subject:From:Message-Id:Date; b=QVC7vyTVI5JNvKcGVfCsi5bH14IlhLj4LIY6Lz9RJzH1ZecVi8D/yFG0SI2RWJEWLx1Zwoa6TbjbLoZGbM6x0C+HeLXesHA1CTYlYr5CCgVDm91EZgusVHnW50WHAopEX41tOc6kqmhxnS8V3TGZyprbRDqLSDRg9DYy3+hTlhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwK3e4Ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwK3e4Ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769938433;
	bh=gwpYFY/lOaDmDkBINmdnqtvqfN0Fg5ohX207/3p7e0I=;
	h=To:Subject:From:Date:From;
	b=RwK3e4LlQ/w8QUTsltgB9SNP1Z37SzPpqiONZsS+gBBoADVnGcHTsMu82GCIGS/vi
	 PApRXm8dlrXGTYob6O3EFQY30IknboGle2DzX8VMi6KeKUq3k/Nna1kp8gG5l6qoZD
	 WdCcrJBmmCq++k6eoFpwKMd+72kM627Ew1NJ/9gisWboPh/6zZNiy2oaK36QGaNTho
	 YlZ1KMiQlO9diOw0JuBBDVuSSwlt0qv9C8UrZ1ZnLU9qlTUYQB0Khd64MZ76R/R+1g
	 ZzPAELWyw+R6zFbXvnkFkuVciSsQdgWRCd9RS9uL7Qfh8aM5dhpg5zYLQHH9V5/oPW
	 NjgGwOXmmFtOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A0E7C716
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993843357.21895.14787253469209091177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d143642d984cb5b7386a5e767d907557038735c0c1ca042e68f35c03644662
Date: Sun, 01 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769938433
