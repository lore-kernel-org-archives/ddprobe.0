Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6041AC8AE
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724885754; cv=none; b=r9IeY9XWHTb6WeWyuFOwtiX9qbqi4ZF3Sdy1U1vMxciUUEl694n3ncE9E8Gn5VsNZPdMcjY1S0w4S9cItzeTLzgUr1Ea1RGuBmWNMiC8FW9BOWwzovdIJbNzlVAWdu6A5Smr/bEIGkGfdBh3bDRLHQt6dvp28eJBEQkBCgdQerU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724885754; c=relaxed/simple;
	bh=lSkkBtFSRA5RS94b0D/X+JHwS1qBLScoMCHhuk4eWPs=;
	h=To:Subject:From:Message-Id:Date; b=S+B03AGjHhSO9F/5Ns0t9FRDTQjsGS6NN3HCarKyEKRfPJeN4gP9wPQkj1rJ2Zz7b7ljsBtMawPGzaNtNm4Sa1zIw6QELjRcT3Ren7om49dcfbgcoIrlEgNQhabCNMnnslDA7ETrkcwawABJ+DUvPxtk+XXKSBXKsfE/NBGPAEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BF0HgJ7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BF0HgJ7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339CC4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724885753;
	bh=lSkkBtFSRA5RS94b0D/X+JHwS1qBLScoMCHhuk4eWPs=;
	h=To:Subject:From:Date:From;
	b=BF0HgJ7xgi/sHarqnDA5iXif5fCB/pxrrYQCnsUzT2hcuPnyyLRaRnB9WXmZnO2n5
	 7JDsCe4pQMWRqqLjNwjI1ZRaZVeRT1fxBcLPzC5goQXuLWi02jgk0j766z+YbCGKcd
	 Eyr58KLqg0/wBWeeIBLIE5RH59uWxNSxb8BJY8UvzF0bh0JocMIwDwXeJf+XUEdHzR
	 BNDNo4mXsGb+GLM96jx8uEAFVXFVRncO7K2fhm/XgGGss/RMpVVaWV0tJp3mvWf9ey
	 uGbSyqeK1VCHn1qISGhL8+/WXQGZEwfUsbD6KJKn3jWqlbuGcFQA7SumrFkSQaFXQs
	 MpqWckBOU2Xsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9395EC7114C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172488575359.2223.13133604558054298374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3fe45c7d7d2a852763a23c905e090bcc71965735cb592ce200a56cc9f40597
Date: Wed, 28 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724885753
