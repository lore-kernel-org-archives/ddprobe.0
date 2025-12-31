Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BD026F2AF
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767205434; cv=none; b=OGizwaqITO4HcsunZzqfL1XQ1lKYgufMichFg0tSDEjAkroGEKxgcho5NmM3cgI95p95ZSbZWVXiB2Ki72CGh93f4zuFNRlwL9SmQ98GAsaVBLnrqUXZIWsMXB4U0sPKxTuKHojwWprJDDpsRKbUwG0oEDOZY0Q9/CBZOD1kxi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767205434; c=relaxed/simple;
	bh=SSY4yYzIASmQDSItit8Cf//cRRX9kMC6p8PPwgZBYiU=;
	h=To:Subject:From:Message-Id:Date; b=ANdMwXd0ngUWEmmgQZufx0V8Ysm6rRU6KrLRrm7/D9TRBFZ/DFbRSxOf73Q03MAE6xA/7f4S3liyxauOuMgWKcKAN96f+eSknrxRI0Inl6kbKUBe3pKYDNvjmEY1W5wwD3zC9Y18ocJ4Nxq7XLgcogxk4lLLlpnizxM2bOCZkPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9/mG7ch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9/mG7ch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BBAC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767205433;
	bh=SSY4yYzIASmQDSItit8Cf//cRRX9kMC6p8PPwgZBYiU=;
	h=To:Subject:From:Date:From;
	b=U9/mG7chfw94Ikrdx7ZpQQaz1NrJhTNvNAoOJXzzvu7R0hAgeVW/VDmccNCpE6Vmz
	 ybbrnenJdvs5ImfOOE6m3agPnH/veUdJzXQBktLuw46zkUswKtqUHE8Qr/317mAhEX
	 /UmsOXuWDp48E8pOM5XaEgnp6I47GEFBEKmFSybRL8J+zWshWjEeGqWVna25flG10O
	 ZNYMVFejlOMw0gVfJBJPqDCjA2KiJwDYj+PXZF9Uy3vDXXpGUrR+g3sP38S8muezSk
	 A+3OZdbez+AELDeLfZfeqNhb829BNL674CcXW8hiveqQEFBwGjGRNC/UkoeVtf07FR
	 RNOjpHIZmcEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C80EEB565
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720543358.22472.13047361368096512002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bdd7c81cb9b8e43a869ca234b88c11243ba5f349316fe1211d5cb75fbfc773
Date: Wed, 31 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767205433
