Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DCF46AA9A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791454234; cv=none; b=I8hdkNgzMRmilDGQojc4Drx0Z5MW3Z9U54J56TZr8y2HrGkpXln5bErra+J2+bchWnCChYT3MKTP88Y2Yx+mwKjaLLF9W2XrjJSvD+t2Q4sBF7/Y8O+F4w7BWJVU2V8TQ74+HaCvUbj0mwh6gMHXT9s8GnPbK6lpACGSu08u1aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791454234; c=relaxed/simple;
	bh=pNFGDYKDx/1/lYKtvrSFFPSrrzYgCRIjnSBvAgXUhcU=;
	h=To:Subject:From:Message-Id:Date; b=dpShTcaSRjrbKGGB0jPXv8+682W2PC51ps8etkW6a0dfkkqSNCNapEKb6zSdVnXA2dI2kQ9mrQpczc8Kja83pbhbE6+Pq55vp0sW6VWMYC3Q+Zfc6C9vg5qeW/S0zLLZ7JcY2vueyE+M+98PDotBBhA+JM0rUIngeYCCbxG/FGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFdI8zvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFdI8zvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45F8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791454233;
	bh=pNFGDYKDx/1/lYKtvrSFFPSrrzYgCRIjnSBvAgXUhcU=;
	h=To:Subject:From:Date:From;
	b=oFdI8zvwMHI3I6tz9nKgxxHZK8Z9xjQU4piPs4Mn4loJcHsbXQ2vpHmsrk0q2Wx2M
	 TJ01mrVqwAKpgp4/56UUAPmOb0NYZ2CUy/JYjM6rJjI1FxSWIrJnabwQVSy88hXRbY
	 8mW08+Apo0angg0bsJFC8e5ahEkZNbWjM4+Vc1YGDNNTb3IOBhRksdcjhNfQGr23tn
	 /oIreYSRItCN9j52lEodIFTgMR80ZIQ7Mt1UMr4wuL+nkoXu53AULVNGqJaAbcCPU7
	 cFtELAsLiNtJpCdZVNhobORf7PMrqGKSnfCsX2HC9P4LL789N2uJ7irWBA/TWBC6Hy
	 kMYyai3ff+M6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF09CCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145423369.1354.15870210146467659966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33d262079e72f727ad87abaf2503663a13433cc6d25417f916f82ad394ccc73
Date: Thu, 08 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791454233
