Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB2530DECB
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787759438; cv=none; b=MYjEhW530EKzQsziOb8aT8XzuPE00L24/ZdJNvV40Arh+Ii8NrTuhldtf8ElF9qDkUliIfH4cmiTSA1JtIljBgkBQZiVFQRMa4HShwJi/A2z/mS33xl5ZWRF0zJLrXa1rDQpOj32xP3Q1Z2fvGsnJZZ+3bzJa2ioggg/JCeJAlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787759438; c=relaxed/simple;
	bh=f4xPWDq2eAsi0rZznm/BZKWyYy7xdcnqzhNAkDdoJZc=;
	h=To:Subject:From:Message-Id:Date; b=OYpLraviQ2+JP9pS8iGksf5MIPFiTfvJLTFgZCkPTQDook6aiWTq8dk14d3kz9IyKrtpgpfHlBHcryheeKRXtVphgxjgSlMUO3S8tHOZMFnZrMu1wicUPbQAmsPB3ALYNMdkIznoo2Fi5regLBL52+PAFKD3bAeQ44B5fangnls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6PWF6YB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6PWF6YB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAE0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787759433;
	bh=f4xPWDq2eAsi0rZznm/BZKWyYy7xdcnqzhNAkDdoJZc=;
	h=To:Subject:From:Date:From;
	b=S6PWF6YBtRgWd9VBJaBUAAFKFPx37N3ftUVMQpg9h7paQO8ge/hbJvgQpszOF1WCz
	 nvn1sH3F3OYUQ0x3ZjJnHtjhdk9ABbli31w19FkIAT35DdhEvpk1Sgy9N3x1kFxwYZ
	 J7jPt39lfGGA7ZvnAhI5E5VIAXMoq9HXKfyQA1X7IImq5+bomof5JurEJmRW6jXVC5
	 RMIcuPoDwkK6bd2VxMIIdIfQxsJXrbWEPHkV4rqpDIbQ1rAZGuoozBJ0vovQDM+tdt
	 fngpd7vHPPzw2rK/dVqGE/TxVv/fVvBxecmPJTUCcADQRRh9WMUSk+v9dolB23MFRQ
	 /8h4J8YcGhbAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB066C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775943369.18825.10113649712287356689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47a816394090986fd908b8a7ae47668c111ffe8ecca5092e2dc586ec70c36f8
Date: Wed, 26 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787759433
