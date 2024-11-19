Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A5A1C4617
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732013754; cv=none; b=b0usbKt0R5XyPC6XNFEGQpCkYf9Doir9IOsztRwVOQgHCdeu7J6nZ79rcsxlamhYpbY2Th7pGpAjPLkegNSDR4rnj7SglBVrdPz/7bDBzuYZE4wAOU8qPj6MrlvxxB7/nzI53r67GrUIA/Ngc6AvEBn0HylV4+FewAVjCKqeNKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732013754; c=relaxed/simple;
	bh=lSe/qNDxRh7saCXp9ObdZZ6nNGj9JnRNyXXXHLZjlSM=;
	h=To:Subject:From:Message-Id:Date; b=Zi0WwFiuc5shga4lxBmylbbbci1oBojprnpMUVUH+LhFieeuFxkNEbQS9yEVv9Om9uQA2UfBl4MIfuwjPrIFRdhp/FeetDvHivKHpWemE97qxyVwyb0i32MeVKsL8rroxXcy+d1lKIF+g0pjwlJL0eNuf+N6Mz2mQraIgREgpWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMofug5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMofug5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B726DC4CED7
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732013753;
	bh=lSe/qNDxRh7saCXp9ObdZZ6nNGj9JnRNyXXXHLZjlSM=;
	h=To:Subject:From:Date:From;
	b=BMofug5TXT73bpGNyUWmODIffTIBUT6ZS8Hzmn1ap6BCkFbsss7pnZvoFttu8VxY0
	 yY99TIs/8zqoE+iIDkeqaB7DOfHF1VpQPNiZ/YvZbhuyTvwDO3cqRL4JVoHsprwerk
	 ZwfGZbQgj/9RREufihPZytA4cV3h2NcHkOKMNMQrh2dnBHQ53IQd73rtK+1BWiS+gS
	 fLhpTj+pe3FTYt9i7YpQUKTeuRmUK6hmbfGuiwXuly48P6Eeka7iDp9oU0adfMsdnj
	 26LHqUMn438N2Q/FYC0kMtm5+mArFB4Sbm8NyTQ/D7zcz5sruTbabthQaK22ByBwg3
	 wiPLIS+eBwFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16AFD44141
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201375364.10186.13887793940723496082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e7183dce482cda32c112e74c735b3d0b93b0401f75a285179aed32016c8b3f
Date: Tue, 19 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732013753
