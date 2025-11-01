Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361BE3A1B5
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761955794; cv=none; b=LfyKV2TPsAn1ZLINYCH2CUL5TOX8bf+juSMwe7+/9YWWQqbn5R7EjIGInUV3GRCoinmFW5vC/HT3OKS7uQ40UYkwmrnRUMiOOA1vIXdsU5+qE+mk3GOxWsyHfLgmV3tBJZXJePl4+oWu49l5JX0PPr2KoBsCUu+eawPtXbDkBxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761955794; c=relaxed/simple;
	bh=nwlI9R2g2nJGN59k/i/e/PdkVK6MYyglJ6IoVcXpt74=;
	h=To:Subject:From:Message-Id:Date; b=Yz6BjuWZ1aV78lEM4pv2PAcSGwfUcF7pzPyo87F/OmaN8TF08JHomiiT8nL6397MSocHXGYTwQfJvOUu9Km3pobgdK3UwYwGd1Pwg9zQB9lxEcSyChpAGdHLj6YhyaaPtmCJCyLlkIRi8Fr3oPddr9x0NalsGpE6hLi6P1P/ABU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY0B0Htn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY0B0Htn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C22C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761955793;
	bh=nwlI9R2g2nJGN59k/i/e/PdkVK6MYyglJ6IoVcXpt74=;
	h=To:Subject:From:Date:From;
	b=nY0B0Htn9k8BelOLzHCCucxC0Gl6SaK5ebuSNlj7GM+f+m/RijwyT2JGTMDyTwd3D
	 z7QaxL8Rwv3PVQUvXKe7cW5eHVtgl6Bp0FFD4pXnydhKPGydJJlNz+ISqPTuRJrlez
	 cF1Ba0r+wUv0gohRJtPGKXJnAkvzWvZYdkxddVKA7hPRzfa5tjnw/C2RxOT5XT5pMI
	 XKwfv9V3Zq9weLizLUNvX02YO9uEE/J8n/Qkp2ZT+bTUUAjiHPEGiMIQVPod8FoI0T
	 Sg9G2v7N3JlLKwUflxs1pSDD442VOghJoFzdjO5/RJGpuPm9oVl/QLOTG+nEdlzzrD
	 jd1+kzrz1Z5+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17ACCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195579357.531.13517836433499727788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93db439435f21f6a63e1fba123b5dacb4d01c8001b41743068c0bba6dfe26b95
Date: Sat, 01 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761955793
