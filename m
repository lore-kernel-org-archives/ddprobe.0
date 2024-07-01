Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566034696
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719794663; cv=none; b=WpqOP2KCuZGk+VKJ1Dg0TnOAC6btqVP9J2ALvopSsokle6yROn06ZImgu6PvwKYCMnqV40pX2UFVGxUv4R+vYEdbYQtt+8LOuveYFZSDpjCTn/2LwIYj3Xd0hd9jntsyhwzTNMBGr0llXRh8MZzLPBi0ByX48f2VvJrzR/DHnQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719794663; c=relaxed/simple;
	bh=4xiJ05OAgujWRyUXiPEx1UeLlV/EgDxQYwl88ZCryV0=;
	h=To:Subject:From:Message-Id:Date; b=VOslM1FZmWmtsu1EzHp7730zX4LDzpOcvNY6M4FzJ6N/iPyfFGgSo3DvkdtnUMwLQ7NfJgymIf0SzpK9uWMgPfqH1Gqn8mNDjE2NjIyeOYNfwxJsEvuatjc5dTi8rPIBo9DRyogWn7bo4Rx14gwABmePhFR0IswHNI4U1K2ZUy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzlVH28/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzlVH28/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB54C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719794662;
	bh=4xiJ05OAgujWRyUXiPEx1UeLlV/EgDxQYwl88ZCryV0=;
	h=To:Subject:From:Date:From;
	b=nzlVH28/oYESzu4Q2FvyWFTIBRfdyz4rzUNgtNqkPmYHeJz/NmwUL2AM1xHjH1AGQ
	 2gBOFuUDnnZbEA7pZTD4Lt89J2adRXyTytjgXzWdEOPLFU4HgbZ6qccIvHn/ukQPE7
	 9PTSNxYfo1xJMTZmFeISW26ndM6AaVipySLk2Ryvnqu0/2Qt8gtENlJmCkaacB0Xlk
	 pgBDT9sANxMH5llg8Ljyy4w/nZ9oAiPhtp1P2TiZ0xW0OxDyyU1pI5aUCbWrPfDCVC
	 JfaErn9PLOxn0fFvynsJ4SQcwZ1pDBltMWFUvdlcyGmbD3WMR9WDv+SRWixWRwiYka
	 VCCNGVCF/vKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C716CC27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979466278.15997.4599830705218201496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c597dbc9afad57c14986dec3dceb5f08768773e723ca901690aa988f58135aa
Date: Mon, 01 Jul 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719794662
