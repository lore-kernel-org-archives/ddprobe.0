Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2456E217712
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745938194; cv=none; b=sQyXdtLvmvLPxG++RbQemSCX2j6iEAgFbUbk7l9giERU7BbzWCzt0YWfZmN/QDgOURZ8pTswPrgEY+naF8IEc6Qbi699+rbDr8obmeyH+3CpN9Um6gMUqUjHCkMAJi+xBqx6PmxT4JlhrzZtSpQA/LWgqssrqer0ENgvh7dFj+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745938194; c=relaxed/simple;
	bh=tJ6EXV9eC2lCT/XsdlPqcKMtLOQo42q6YoE2pyw8qmY=;
	h=To:Subject:From:Message-Id:Date; b=mEcgOX+B6R7xm9Y2tKZCJdZqE8CJFDQWiVSsgstHYFAP0TeVtnTpPlRlEGBL3YtM5plqP282tOlGbeHI5+VDvWGb8D0Xu3md8KsDRNpDnhdY2fS3dhPWlRk/F1LeDVtTa2J+hgHJ32xOIPNa1CbLn66cHCgzJY2pciniwcoFoO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMflFwqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMflFwqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A246C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745938193;
	bh=tJ6EXV9eC2lCT/XsdlPqcKMtLOQo42q6YoE2pyw8qmY=;
	h=To:Subject:From:Date:From;
	b=cMflFwqs55wTVdAUmxUgVqEcQY5so8soLBuWgYHdhtZaDYoNPIGDsJUyrW3o0jmdD
	 c1Wa4DHHy7Ucfyep/0e4DYMwP0o/I3vePPMM/ZGjgdsOvegRbV5/NfsmHZ+F5efnhn
	 +suTQHRpdqJ1aWdWBOjcPPfRk3ajm7mYgdFFWQaTMWY3xDg/G4AvnOUL5G+zh0167r
	 43aZ0eagtRd05i0fgIKe1gdWxCGUZg4QTNQ16bhtYgulLXT90Var5TFMaZFO6AIVS0
	 jveyCBRg9oJvXFyjjgzNhgmCd7KVQKeNggIKk4WzzNScg/MocBixnDY6RleyRWiWXI
	 1l3AnkFwdipoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E51DC3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593819357.18832.10671607096214602912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423264a2be2804a2eac28c19d44a49834bf27a646978fc070613abf357cf4ff5
Date: Tue, 29 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745938193
