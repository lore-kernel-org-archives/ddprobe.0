Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113B6372AD0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763639514; cv=none; b=P2PapgXAmkhtAgaXv1yceYo24nWAO239TPrUAi555CR+brXbs2tuU2w3rlHlTvuezPdM5/io1ufBfEKTRsUJZDdtniaMt2vPVJ3emV9LlOQzJtsIl7P7JmqT5TStJxNSQND3Zlrs0pjVDxQTKtMMrSyGcBXw27difCN1UHdP6LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763639514; c=relaxed/simple;
	bh=5MJekvBH9SRmHkHgzv4S7wU67C0s9Rn7gaRguc5DbYg=;
	h=To:Subject:From:Message-Id:Date; b=DsC8Taxx8ESUnau4kHJGryqys/qSCcUmEKK5LmPuoXkGa/3VX9EbmBBF60poI9jgO6dp94CIFMTXxOYl9Rkh2vz2/XIOT7GlSNj1ZQ5HcnXNUH0bp0fCIFeXrmUSdybEFLXf6erkVyOlBSnG/DUccFWLXw87tWopt1iAKRSvO84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkchHCoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkchHCoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8998C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763639513;
	bh=5MJekvBH9SRmHkHgzv4S7wU67C0s9Rn7gaRguc5DbYg=;
	h=To:Subject:From:Date:From;
	b=NkchHCoD3z8q6V7zRbP9jCKUEq7Cr6fjHbWgXESE1/L9do0+/Z1NDAjrOVuAEJu9I
	 OO5v4VEP7Y3GL5b7CpKk9bzayxVdEbfH4oZGYVF+EEzBeF2w1ycliIRUeg6X+rvzoW
	 cNMNH2ao+1uu1nXkNCS9WBIp3rDSBz8qcWDLzvqnDKtN8NDMJNq4OvODsveMwxnlik
	 h42zL4GF2JzFuH/9M55KzuXPc46hFhSeS836EmOYV5+i5GEYKFX/nFjCDqGpgANupa
	 Ei3QN1HVukFFsVqzCi0+wzHTNbIKZt1XmbhMGzJO/BRNU3XifsH7+IdT3clbFccouY
	 ZxFjpx70Ny2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A90CF8848
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363951358.7613.1705984198938601769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8ade5f3d6f8c536a0b96c7a17af6b16300c3fc4fd22e89ccbb7f61635b632c
Date: Thu, 20 Nov 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763639513
