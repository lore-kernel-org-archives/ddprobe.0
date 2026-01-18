Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C9D20E030
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768719234; cv=none; b=C0fC+aY1ZbZPvCwwLXiqPuTYqnMqFNg/+0Q+iz03Gs/k0n7u0nX0800j12jkzd6Ueeafp76AUUlKIbovVu8frGUp+HTeFQVFTzB1A4/nUTUw4/w73PDX5aCkvcjuDCtgCpoLcAleS1xScoMJU1xbFh1RZdDZVlsDlHMY6bTUupY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768719234; c=relaxed/simple;
	bh=30KVgFTAdI1rNkV4jEAB+VIOp25Hs1jTIT/M6jDuVqY=;
	h=To:Subject:From:Message-Id:Date; b=hXc/WWci0F1so2w47IBHEZGi/SrxkDd05hKMDcBMZ8kODF4ldS51LRm/1Qt2Nm5VPvlT9oerVYFusFtj4gwMM6vAMpg1ESR16M6np7Ctfvi9ZA4LMsCBHhIdoRmaotUZmXAxlbGfGSmCiXeciurOau4g18DeIDjEomzWx1nyLTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSoyz48k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSoyz48k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA73CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768719233;
	bh=30KVgFTAdI1rNkV4jEAB+VIOp25Hs1jTIT/M6jDuVqY=;
	h=To:Subject:From:Date:From;
	b=qSoyz48ko7vRODv+STvpP4iflN0paJeGEGmUoUT2dm0Y9a8wIDIlfxwurt+0QndhZ
	 rP+anEc4qxeoJext6hOssEW1RwBkOTxzWepzQkzdAShzfydAURKnrPhg5yjbMAxAkG
	 xiIRJO68B1vB2NmFTK1fkuuzDaATGKNqCJhuZISLus9L2CV5+gm3OT4RqapdzekVbz
	 vsfn75s7HQq6hFhlVjW3dQqaytgnr+QLf3t7VGR/OUughxQzATNxHD5rnitLPp0moO
	 6svSSFesD5M3HFKQvjBxkAT1q1W4q4t4i5L6X726peaRg1u/tmjfzArCI7YOEdS7uO
	 GHLBjMFj+Bazg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95663D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871923358.10234.8198596632296541418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c47dc7772a1c3de3c272883880dc8deea63579bd7c52caf3b1af0a7f5f7d8c
Date: Sun, 18 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768719233
