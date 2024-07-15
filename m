Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE4318734B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721037263; cv=none; b=npz7ID5w7MRHzZ1lXO78O+MZZG44NFQaPBQyvVgmHCOzoqHMc0jjpxm2A8CFYr1EYCtsQCyxdhX06BMwl6uZUwtiM1JiZXUmhMCGMvvM+Kf93VrCGZxaPN0GBtYzhfjz2EjhKWizOT7TyhVFak/eLsCrqNsYbAGvxHuZItYpvbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721037263; c=relaxed/simple;
	bh=nXlT3VRCxgkMKxBROoslJpe1HddAJTtDdL8US3NhWIk=;
	h=To:Subject:From:Message-Id:Date; b=lOgWiDv5p6F8XsDxiZxExPieRgx3UhcPc80/Kp3UxF4Odov8VQy8ct/nbXMOcevKaNycDyMyMWXyEQh9fKq9FMREPbbt2p+pL1UEXd7w+dP4XZeih17FDUUDrReOt0vzDtwWAP2Nvv1RGWMmPCCRz0yqUBaIw7qH66BnnePDg/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LV/F9ALq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LV/F9ALq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2871C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721037262;
	bh=nXlT3VRCxgkMKxBROoslJpe1HddAJTtDdL8US3NhWIk=;
	h=To:Subject:From:Date:From;
	b=LV/F9ALq4JmA1fm8hHFzKTEvKO9a37h2n3ZDIg3hOzac+vshq9O49KMYwluKN5nGq
	 oHAQmNLSoBH9IIOdy69HaVeE6/iaqqQhu31w0ZEWbeUBcd7gemsGO3zFCk7vXgM6Kj
	 oD83KPFJ5DIqzfq3wUveWLpoUk8L21+PpbzLG3fZ2CtDctCOujUOsvJV2Uy26tVovg
	 PPSOK5uJsl+NFzHRis/ESrxmsjd519Hyc9lau5F9xc9rqKyR4IMrBN+yqxBuRcp723
	 VmRQZkU26/n6JJy7AvAI8Yylu0uNCOk1ac7Jn4D94fJXFBeWnycDmYGbzNX/CD/Is/
	 pAiU/DBRfKAoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE19CC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103726277.10922.15931996007703300912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b7e618f590629217932dff8a6eb421468d34384bc0e402550e9453bcd0b81f
Date: Mon, 15 Jul 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721037262
