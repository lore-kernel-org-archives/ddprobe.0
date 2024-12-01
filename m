Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABCAAD23
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733069754; cv=none; b=q4g56VZd90jpxZ+5ii6a3qmvMIhYL/ADUOes4ttqrv1mZ3LcYZhwJxGyNVbptcDlWAafh7k0YayPv0riNFgvqnS0EgIb9ts1CqgfV2+OGpogWsDbUifT5+h9CyjgnrxojquH0nmy5oVF0RRz8Ewho5q8pSBnMHrCZqPpQbtEDlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733069754; c=relaxed/simple;
	bh=AuSUSdC6MjK7ePl8XcjjEnqGE/v+fveZkdVIcMUOWaM=;
	h=To:Subject:From:Message-Id:Date; b=TVhmaOWrZyQoNplyjrCZ1HzJ4jxcyjYeuhWdDnmRaVYSjzXP02deXrv1mbxCbAjX1W4J2sENmK3LAp35QdbeBqga7R9ueTv8vFcWmELioR17RSambvxYKCnSaz+OT/JTrJHHGgELemuX4YKlMfdSLBQUlkOPWdylPIT74ChZsOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTsM0hWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTsM0hWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61EFC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733069753;
	bh=AuSUSdC6MjK7ePl8XcjjEnqGE/v+fveZkdVIcMUOWaM=;
	h=To:Subject:From:Date:From;
	b=eTsM0hWpir1csuVRBxV+7nt/KpPy0ANYvLHvuLHhBzF8SR7f1BTFHL8908+wAY3P1
	 ILW0e7xK7UBPwGMBT1FP5SKm8UQ4zxBon8w9Zmj1kdO77AGXYGN4ls9SElkfrxbG2b
	 17/LHiz/kEkcTS3EcILUKEWfAmAiDR924k27+Yja2DuoAs5KmLvdlshohHIsqX9pwR
	 dfC9K7GB+dwKDXFfr2UU1896RmAKN/U4sRM6PmhDOS+B22kxkwpqgNsQdeP7gLy7W3
	 SlrCNmh8FfQNG0WK4t5evK5SXjUqM/vc9h8xR3Q0PGinv7MudftzoJ8raYOuf0ciR9
	 0XxOwmlbR4fVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB3D49779
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306975359.30575.5106163876760416411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0927eb087ab0844a40631faa08c2f1ba9c5f6aa763793532c7e994646bbcf17
Date: Sun, 01 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733069753
