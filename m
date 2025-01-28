Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8FE199230
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738094154; cv=none; b=uExN4vpStLfiOkLmfGnbfrdVn9n6A0bhQ1sc9ZsugtQmceAeH7RxsfF8BZlZ0ci98Hby+nsYK3xsrQOF9zFTvWrS8HlhV16BlWHMYBqwC2p7+cELjuPrWOKtX3gYQucMVN5+CP+5Mh4Fq/G4grePa/7ziEDQVjCA/0HBIHIxmKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738094154; c=relaxed/simple;
	bh=Pbz1mgwfYZs5arj/01taGDRVmWHwjdRGH1jBKZYS3nQ=;
	h=To:Subject:From:Message-Id:Date; b=B8rGFiQvJGayBNx7Gl6MJmj/ndmIxCYz5u5YRu9Dl/AuSJQ+UrPqa2xojatGEVj1biEmyguwRid69YcK6ddia5U7xIbjtB3MsE7KbqdOOIyznNwWhJwYmGLqFV/izcM3Ce4hhvoy5Ir+nYiwNff5U4wJwvI52YKXGkOv32N8aMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUI3VE/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUI3VE/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A748DC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738094153;
	bh=Pbz1mgwfYZs5arj/01taGDRVmWHwjdRGH1jBKZYS3nQ=;
	h=To:Subject:From:Date:From;
	b=tUI3VE/P5AtAfSKpvGazZ0zvwF6I/9ueWbR2n7bUa+wRifmHwxWEjW7kGu3AftzkB
	 sdb3F6WDWh+XMZrCfBwgBdXIvmXKZJd9/RpJa6OpytvbM8dRVFLfMTj9ukIcuWDy5Y
	 aT0UPJOA4VE0+AXigbNLElb+byQ2v2kuM76lXIgyG3eswSvcfgIyH7wfmK19lPMMZ9
	 Y9QI9C6nJUzn7dTHThKRPHraNEUBcchrTQ44J48dbdLLYvaUF1vb4My68P6URQtOEY
	 kex5Hnuq2SMcU/dXlEd5lgiwJtjSpTRXviOyx2aXfSUrBGNROsJiD4JmkgJfNRW69n
	 rqsbyNbpTReEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D90C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809415358.733.14186509700730756254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d83c44054167f5b2bcf0b1c17579c973df26f448b32bfd0e6be15b33bf887e3
Date: Tue, 28 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738094153
