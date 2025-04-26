Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4315F19CC0A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745681995; cv=none; b=fsiNnHy1Hc06Jl7a1tDeFAN1VzPp19F6q279Ep0JoVIY1qgiZ7sszZG7B2LDYtuHJig+5sS29ikSdrPqzcEApx84Kiw12ZMrWJ8osNt4TP+BEbeCOF+ECiZLf2Sj8n4o1Q4FhKXKB7Aj5pmp3Rg/gGNL6wYWlqDMP7wKra8V2dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745681995; c=relaxed/simple;
	bh=6DshFJFjsoJHbcl7ZSiVyDoLE5KK25QFMlTy7rVSGjM=;
	h=To:Subject:From:Message-Id:Date; b=ManNXrleKr8wLmkF45pudgxWwdHc6rRIYjBQWbZCrHDMEwkhvu+vddgVZV7g6xN+qct33v3gBbAenzngNvk0691GIAH+IciZzZT1Lx8eZnneHutIRQoFfdnAy9dJm20CYcQJW/B2svFgf4mvXCa+lPEttiYio8YmsWWC09BhUf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dITkLoKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dITkLoKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A507DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745681993;
	bh=6DshFJFjsoJHbcl7ZSiVyDoLE5KK25QFMlTy7rVSGjM=;
	h=To:Subject:From:Date:From;
	b=dITkLoKvRz0+PaBv/ba3sOhUFouudbYXGD6WLPfFw0a9nyPeEucVaZeX8MYRUvaX1
	 RIk4a9Nqs/0Lt22j+5vaM/CcpXRZE3tKZs6EZ3LPb5QQphhMbSnjeQWB7bAq0mjPwJ
	 gnpZ6z44Ic8ByQ9RB16F8OkPDxZD4E2Nvz0tGXoH2EFFiioKj0/XjO0xJB6nCp8dPv
	 ElsCZeq53cFg4WyLON6froKtxSPdt/Ea0Husx8Ov65hCjVv/0Ev97Vlwd1cPoItYcK
	 PHnKw5S03MMJg6nbHxbx1SxtwUoHKPGhIxA8TXvU9gsFeY4Nsr6MjSSgXjwAt+Cq0S
	 2mrLhheZh6qsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F6C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568199357.10899.16264908323795225329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f879b8c356049900d3a01dd348649ef4b7338f93fc62d32a87b5b6da7ee4660a
Date: Sat, 26 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745681993
