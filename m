Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C063821D3F2
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765605173; cv=none; b=iCPRbDaJYr0zvvV9RXy8AKzyMUPb3Je6a4KQP/4kwtQkkMmZJKg7qzkAb5H0dKBpWWYJam1vH53BVeuWZwQA/niCCTehTldl+Ehs/RBD10OD3PQANOWOws31/mCSTou4VvrF3r7uY4x0bnigKAgRF5fjR8tLffGgOVfeqsLhca4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765605173; c=relaxed/simple;
	bh=K+e3RAPhWpIP//vGpchYM9mqAS/nkn8lKk2eeOcRtco=;
	h=To:Subject:From:Message-Id:Date; b=fI1BuOrRbWYY2aJa4Skm7844irQqTi1+flGAizmiIjkeZXsxEe8Dg9eRgneDj5zWsFy+X2rmyEs5ldzte3F8bJ++P+NnB1p2q7gpes6NvK9YKOpdTUu7pfZk2Bi/4tOwQmHgypn+8Zkr5q/1G9AzZKLh+2X6rJgNkvLUezqWoEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hufMV9Gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hufMV9Gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3688C116B1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765605173;
	bh=K+e3RAPhWpIP//vGpchYM9mqAS/nkn8lKk2eeOcRtco=;
	h=To:Subject:From:Date:From;
	b=hufMV9GxAgucsb4X0SEaQpmDLA9LMD8jcZJTH/gez6PgxMcgayjJ80KCk9fKRSZpw
	 wflCC50J6WbUK78ghiqKwMTABHoLNe9MswvzZgg8uygCCsVYfyTmwoT4ARfkSBPJ0h
	 MOJ3YBP6PikXIW7pJBTZnmmgv/ECSaU4BEbNt+nszX/f3xHG5UQ4rWHlEV07iesMaT
	 ZQhCuAj+7I3LIZiGyTsL2HmUmKhArZfaMFkw+S4BYrHVhOADvpc03EagUB/+Oy6tk4
	 QVXC0ZyJL0XfWEXAhAC7pamdIXGmUFhcY+qTikgYuZP+UokWGqZZ1+iox3yusjaeKY
	 GfO7osh4zb+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D4FD59F6F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560517359.22626.7550646456107126675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3834c4dc6d743cedcba9ab18978deac0ceb1b3114bf51975d140ee85f749556c
Date: Sat, 13 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765605173
