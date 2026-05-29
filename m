Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDC714A8B
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780018954; cv=none; b=lDGQmA00/ohm8aLRAHzD6X6YmHcfVCCQPYHGzZWXnQKLx3KYl75r92+XpIlg3wJMA3WFVtChR0ZMLQGSCPJpeNBIpOw8dmMWFz1t+S3brjI7l4QM5tMs4wLb0OgidRLZPGTmoV8FoB9fLGXnW44n2Fss0PuGscwSMAsGiwLynJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780018954; c=relaxed/simple;
	bh=oFtmc9XBmtT0T1E/Fe7jnz4SGN1zO3zD7AI4SXRJMVs=;
	h=To:Subject:From:Message-Id:Date; b=BGoAL19kA/M0R0JMQf+swTr52XRjb88+LnR8fyO8i8NLWa4WMNiXD8Fy07vMZdXI/JAzbeGNf5KbWykcFNsi6t3fie8V+0ZS9sLrkVVr58eijuZQwFdf7C1UPjk6KgviaFz6I53FM9cCS1fkrGoO2VCykxb4/b8nXJaA6hQN9sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/N+N/yS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/N+N/yS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33BFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780018953;
	bh=oFtmc9XBmtT0T1E/Fe7jnz4SGN1zO3zD7AI4SXRJMVs=;
	h=To:Subject:From:Date:From;
	b=F/N+N/ySItTkQQ+958oMqKjAjcUJhZfO5FFdLoakjJFIjNHn+5LLyMuk5+X0W76zl
	 J53wEws4RukV3BPTH2m743JQool1kFLokp+tFKfENr8yWJLcDGAnP4Vq4Mje864MNf
	 ukdHHbasRrykLEkw/PUahC/W+A7Y9objim7tiHYeXlkmolklWQ7JFcPcIgJYkLRBGp
	 MhJazGbNhxXLxA5D1RDnNxOOimwg620kBlirtApQGy+60HCfMAmbDGxBOl2MFBGRI8
	 MY6ZxoxLWrnzOPG5uBpBGCrUFNj7l2bTcIqT5aIeiFkUqKZ8s8htQBDEBXqUYm6pAE
	 XqCgiA81whPvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAE8CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001895369.17632.13976431885756789477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baec5946a164d6940cf3003ebff19b046333a7b200f48ae839e89f780a9ec73b
Date: Fri, 29 May 2026 01:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780018953
