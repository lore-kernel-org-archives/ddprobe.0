Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4942D8DB7
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764315174; cv=none; b=PnSxoYYFHVAPHfwBmKpIgmEQUWZsEdg6k4B+813OwKC7Vyj1ZJuZX+gHD4bcFFqw4isE7ihuV59bpXrdYzrFothaOcRS6fvTpXns7T1iw7ZKbDomBQG2dbIkUvn/tYHWGznsrW0PMB2xaLQNTJL/293ZSxUZlxApWSPFAplZWCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764315174; c=relaxed/simple;
	bh=0ruF7eDKwkFfUmHy0n1uzlI1rgCr/lqmYLNwnFWq24M=;
	h=To:Subject:From:Message-Id:Date; b=r9kgSEYfLCypbrY+6srtSJqUoyL4qiT/P5HNcyzAQegMS2QqoHxVVxZIRR4HrCbOPu9f70qaINEMln5P2UPQ7fKhJxLLUArmWL/kCDmSM+1uWZevDDZAGwWMQRG+IZPxsfhOXApukp2/194ifIVbhfhdJIzFRUsuMNi94mEyuSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcDNNTBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcDNNTBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A276EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764315173;
	bh=0ruF7eDKwkFfUmHy0n1uzlI1rgCr/lqmYLNwnFWq24M=;
	h=To:Subject:From:Date:From;
	b=rcDNNTBfr4BPErgOGdEbRjteeFE45eUE/qKA5o14+4AE3KPK9pMwXnI/wCyNnBT5i
	 pB9IMnIpK1uL5OfTTN2wxxzja4bXkz7z0ycaJLEJBO7ivybnR/MRqH/xN7tAJQDaPH
	 vz9ZXo6GE/HDbg90ECkYrPPrs9FDF8CIaEfUZyizRJ2qGkm6KxAN5d+0c2aYmiaW3O
	 mjnmtxmZv2E2C3ZrcLWos45MnXZyjZWbVXYWXRDVD+prQIroPpLokN11Gu2Hsh6VWI
	 WZ4jkMQy24+PDYTeVU86MIa1GlLw/RjM5CDPXFiirRuSIIUYsT78qiAVVc3L+1eQeN
	 7MAMNT2ZCPMGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A18CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431517358.30270.7906708249863497030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94502a479d12a1fc6ca2e2b2e2dc4965a66dcdb0f2feeae608ef234a7ff9430d
Date: Fri, 28 Nov 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764315173
