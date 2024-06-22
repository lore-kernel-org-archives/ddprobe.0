Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA43DDCD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719095543; cv=none; b=mDOvPhfJ1FLfsBKjISI38OCEJ7smdbCA9F5k5p9DTaf6dJYM/1mSef46hl26nQMpzSgtHRYILELSEOWNRHawPz/Uie57Cwk/3PxM0laKRVJuAGGyAddUcYRfmvpxH57lRq79FRFIe/pTPx8ObPjuq3H2zz152YcyJNyShE76zS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719095543; c=relaxed/simple;
	bh=9gdyRgjZfEyw1amC5fSmBIGyLiL8tawghRO0jIkNfr0=;
	h=To:Subject:From:Message-Id:Date; b=VVc1kZp0/F69Z7DY0D4PEX2d73+3ocoq1O7vY0b07ej9QqNU2x6c3s9M9R0vfGIrCAgHV2IQjjipzljZoBOO0VVItUx/VW/hDqtQaG8cAf5s1ctqcZ5SqnPpkUNsa00p8Pn+fycENQbpitzLLMYTQ8nDkTX4AeStOwuLiyfH5iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPlDS8xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPlDS8xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E91E5C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719095542;
	bh=9gdyRgjZfEyw1amC5fSmBIGyLiL8tawghRO0jIkNfr0=;
	h=To:Subject:From:Date:From;
	b=ZPlDS8xtr1CUCbNBB2cHYnTm78RXH1EW8Fcqb96s3BV4lOkg+YLLZo3HkKrPNfJ3B
	 O1EmD99IHFCofmZKkdLs/FCsrQiK70AusTD6X76e6ysJaBNInlNErD1nII78/Yryby
	 eRUgN5idYSqOKwsDnn3cI0GWq8vNEd2zHVd52IqDGGHroMjzHj6rXu20p1wyOfdS1r
	 /kudfQ5zIPo6fKR5lVyPYwhPy3NwaX8qutvuwuKt/NLjwQ847wBexzqQMoyQpXi4ma
	 tg4fHpIXM6QjW7lBc7ijx3RSnH/ZjxOU9AZd60gWm7SAjgGyv6YddQKrQMhc2XCQEs
	 sqUtZNQf/ykiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0ACEC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909554283.5601.16622903061426778253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8a6925a607d7e001f566379cd0594a4beb5d59b6c3e70cc6386c0df67ba200
Date: Sat, 22 Jun 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719095542
