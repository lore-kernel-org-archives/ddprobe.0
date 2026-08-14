Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507262F9984
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786715434; cv=none; b=K8N19yMjzns07qcozcETGujHVZf7R5kgPN3ByeeE0NdMumuXOhXzZWuTX2tig6O8SS8z5QzSPmg066r8Ii1JpplaKO5zs33ZGUiFYYT/pFY4VaIbloUrOmmKKT7+HBovxLRsNRICfAE8AbOCG4kDl+5bC1i/HHCoV13DuDnMllc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786715434; c=relaxed/simple;
	bh=oadLLNXJGQGcftCkrJmqGNpSMYg7cQRmqzOfJvVZTsw=;
	h=To:Subject:From:Message-Id:Date; b=n2jAAkAfEY7dr5EybiPQ89C5r6fncTxQLbAF1BbyIMvG9nNr+THCsZe5/O4KhM8xIVPZObxD+L7iB+R9+AdyFam5oT5SK4n/X7F0eLFnOmoN3aCbYvGWu2/ZuHVN5CSCk+Wb34fOfCl0dXNAD6mn4IGJXpRfKZAjwB7caPo8E5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQ80g5Ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQ80g5Ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7ACC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786715433;
	bh=oadLLNXJGQGcftCkrJmqGNpSMYg7cQRmqzOfJvVZTsw=;
	h=To:Subject:From:Date:From;
	b=nQ80g5IagVbJ6Un67fImMKH3F8SyH3RNrgzomKIJCZNX2/VxbWO1etBpWodiHji/b
	 8YEOKTtYQSIemNkFLIKPiCpMcefFpg9qsQ0JYH8rpRGloFYwFWhElVxDZNklw/TzEb
	 Kw8BoDyy//pDbDPfI78vVxgNlEyDhd4UTPd9v9phrwFC3le00thGGrDI9OpgbZf501
	 Fab8oq7NeoQhw1SkPkfLthDz2kqATlsfdEn8Xm/NbvlDFuUa7MMoNjpl4BdVUO5uz6
	 TdoH67AXbX8OwGjKbHNWqM6liopandnErNZgcf4WvcJyXgole8BiSL+sDMEXmwiUtr
	 nUSwmUkPclsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A897AC5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671543368.9505.14401543854129753200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547bea030659ba2d3f60927ca3f8f640e18a3f970e8cfa221e2cb918b3eb5b40
Date: Fri, 14 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786715433
