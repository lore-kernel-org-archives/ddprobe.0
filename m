Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B3C377AAE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787195434; cv=none; b=f5PC8BJpPG9cHo89VjI4w9crTxQtiFoLiNLb4EP3M4s1FCwkpfPzdjH6A9DtKJV2VJ+WoJF3mx5m2JmunxV+vGfLUEM4+Htaq8uxY0WkDsUUnFPhvULnxR9iQaFCmiryEPZZ2T8KMAQbTre3CKe0QJM3SE4NyeDCzHvLVx/INHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787195434; c=relaxed/simple;
	bh=4TVLA1hKZgB7njVEiuoK1m2Zdn6NLifoVZY5spZlQU0=;
	h=To:Subject:From:Message-Id:Date; b=T+I+IC30yE/14vHg4awFtUULNAXOd6j+ANamSLKuut0rH2oYyHAxG9qkExbJ6hvgSFbt4wsJrtHarRLKh8qCN7660Q8XOzsJPORFD86O/hXkETkX1xZaKnwTPM8eGH2Uy6eOdsEpHzMkGGH+FRf9jIQs7NDknSNsQ02soYgQEQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db4uSGDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db4uSGDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A3BC19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787195433;
	bh=4TVLA1hKZgB7njVEiuoK1m2Zdn6NLifoVZY5spZlQU0=;
	h=To:Subject:From:Date:From;
	b=db4uSGDb9klc/6/GqmhfxLyoekzF8OVmGlCF1ANYqwybNiKW7FLqT1xE4Rlyg+AX4
	 nN9UN2gjjWPR2UG0rt5SCxvvbMDPMENtd7RWsvhEA1COa3aw/5ECwU7fAjwSprzjL1
	 vTTRID2dk0LVdplVkn0HrYqkC07LudWXkmi2/VYTkRFGzNn8MeyTxNXY/Q6QyUTzh9
	 OJPnA49zA27Y11/8dlWjkwcf3Ft7T43XxlUS9yZGwrBcHJCJrnDlWGKuZd+5BtOlpM
	 g4/v0PTGG9Y2FPyjzXqyqCXdPGks0TcZNwEc1jvIPsuaJXzV0/pHFUx+WNr2AIH/Vj
	 HquTSppN4F16Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB91C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719543374.14028.15756550212027641189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c1b72bbda0c4c503832d9fef19a05ccf497869588fa3ae0afd1b9c7c6d8565
Date: Thu, 20 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787195433
