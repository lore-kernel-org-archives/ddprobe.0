Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A94D391E78
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787109634; cv=none; b=bYayZzFGPbT+lx3aGU7GsxgBBLsFkSz2zWU+O+X8N5ykkR9cpwHoI7+Da2/R9t71uxqKwOB7KX7zFudu3d8LFWD+TVl3MDRF+Mz0iFuf0c4UAAhkMZTjrgjHxY12NkbfjAOUs+mm+5Zj3zlNZfvu/RFlnGbEXidfygLHO0z7AXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787109634; c=relaxed/simple;
	bh=vgqQueonnvFg9txtAxuy6PLEotVKn2cVMzPJ7lA/WLI=;
	h=To:Subject:From:Message-Id:Date; b=ToAt8pMvigfrJRf7dDI9XMt4HiYKEp74lgX0nda4LMNIS/LPoWCopw1FA6pwdp66Mf5qGyJpiGOqCVhgxEnhOYNWvxhpe2Ow6IlqqH/wCaCgOuEuiLk6fvzABCZ3wsshJHxAw8x9IThEWL7vASwpW6xLg3VNTbVKgvrQxe8SFhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRCmg/t/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRCmg/t/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D936DC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787109633;
	bh=vgqQueonnvFg9txtAxuy6PLEotVKn2cVMzPJ7lA/WLI=;
	h=To:Subject:From:Date:From;
	b=IRCmg/t/sZXN5TthTELhFMkLhpuZJhcZTKvMdQ+6bQrWC3Ltdt/xHVQbDPaNtZysY
	 cnpV7W4P91LR2R2DCam4dy2K0aS9ZxpUR3JPBvzEkjIfbWQaeo3PrS30k+kCkDGXJ3
	 TFgbCinRHbZZ3KqRS3bfDYKMSt1Exfr4d9SCFxaww8SNobrd2k99fcH7aaTRk/Dfnj
	 3+BGCi3d07/NjCVbtH7TX3wC0Du98Ky4Sz/VxowqzSRbKun5oR/Xv8SWMJw8PoYBvk
	 nX9UfXe8FAGjfdBlysP0LRcGSa7Uik4FAu6ZwNl+t3BKd8mfVoLzRtBucoumSOkqGC
	 rwAzC7QAFWnQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15A6C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710963369.22856.10812412273842756834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a17982f293b6e70bc5b58f59d694b291d528436d835abfddb746d82dff72f6
Date: Wed, 19 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787109633
