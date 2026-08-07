Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5340D3FFD
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786074634; cv=none; b=Ceo7FCgM5stZYXuFXVXPEr/puX901zJRg358nfe+bzyXNwvNPH+WshjKjY3AjAnjj1TxDSqhJIJUUlzuNIjMk0OnAeh3xlH5kMlTekHAzkyZz1G4zEftvWf6Ap4/9bxyD96/EA8FB0ZEyILQwjZrrlme8uEd1ktyYF4HWFdK3dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786074634; c=relaxed/simple;
	bh=CXJfFaPbwP65aokgxBsuC/p83anTd0b6IVGfyTaD0Lo=;
	h=To:Subject:From:Message-Id:Date; b=UuVTWfbMWg2qolkyrqJ2BLj6AVcaZUD0INg9Eiex2J064RrECMrA6HztM6CxnAVqObM4ZPgtcYauPST+mBEZxe+p6GzXvOCRXG8NsF58CYQwiP877EopreH60jSQDZqoDkQ68ely7Jxdo8a/749dzNcx/G5eGu3k3+D9FQuU8n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEXZbqrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEXZbqrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9A6C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786074633;
	bh=CXJfFaPbwP65aokgxBsuC/p83anTd0b6IVGfyTaD0Lo=;
	h=To:Subject:From:Date:From;
	b=rEXZbqrmk8OD4Pz5V9WHuLV9finP935kKhBZ7pqkjltmX43kU+aqxj13o1xkMkanp
	 BIu2XZtIbA86hXGB3GZjLYe7MTtsDClG0oNas6UZKeXrc8Tq6jyLYXD5rFdKxWG9Sj
	 et56y0bZDOdpjewbh90IlEqYG59CjKo5oLOPp7Sv4C1fDlDm2e2N+mvF+SqVB6tTEv
	 Xz6jvszX6sKaO2VK7pqjo0FtPvuJHwY6ec9uqLh8FcNpnNJYoiPnenIjwSjPCcUJ/4
	 bvNzWD0fXZFuSturdkqgMQUi+LBG/3/S11fESUJ9piYZStMLyIRbyELXXzVh4fEgT+
	 aUYVAQYT+RSAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADB2C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607463368.24578.4931781613220795828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db5da04071f25d5a5f5ff0435a09d9d7f0e211976a7211d6de3ec4d0a8fc078
Date: Fri, 07 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786074633
