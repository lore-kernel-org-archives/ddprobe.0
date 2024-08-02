Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2D44D8B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722642354; cv=none; b=m3pRLOE9wX9T6AEdwq7PL/E8ipi0FtT0YT6+hUhZhJVuU2H3p9+qaWSJHitVuE5Uyd74O6/Tvnz6pwqbzPvftBsa8AFqZZLaEwBWyePIww8OrLdh/o6l2cwhPJHrL1rQ5dgddWoNMLXD3SL7JCKRHbiGyPJGgCA+ORXLhOkVIA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722642354; c=relaxed/simple;
	bh=NxNvdYaetRX3frMiyVfGQaBNwYh1x5SBSsZHnQEfQVE=;
	h=To:Subject:From:Message-Id:Date; b=ksknOqiXfmcNjJvM2nENEJeZwUaPBqwdlmQdofHiIEpVx7auNQqz1pgedxhIFt9G9gUVjH7rXN4S99ysWNhVZkB/m8JFRtScADWN0HD+0v2DzhqHMyg++EMmVVDCCVIq6f+m0+cer5hoiTqz3LY3WSukw5Yy7mDs9j7vwVJyMJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5D0EEnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5D0EEnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA77CC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722642353;
	bh=NxNvdYaetRX3frMiyVfGQaBNwYh1x5SBSsZHnQEfQVE=;
	h=To:Subject:From:Date:From;
	b=d5D0EEnBQe5jLjJvoDf7eKGPV7MqJhOgcTHnR3UgpjrzPCzyiGbP1U33CXxtn/0JG
	 1NpxnLlosrLJU3a0eXV5UZY1/41NqDns5GCgPYauMo6xQpMU8xw46/T4IZIL1LPDuB
	 VeOQGOlD25FEPFUW84tEKAOsiyfAesB3JhoC8gXU5z/zVjWWXdpQMOG7VQOTGd3JUW
	 woN2WmHA6jwU63FvbGQT/DEvNXvh6bnGANGcBWr62WYVFnLbj3pRlyavRaHuSn8E6V
	 27enxt/k89ZyyGTlKIY0E0AnpLJH/wju9487wyFS8suQ5yXm10fYxOG8f3H/yM+x6z
	 2uPeTlgLBw4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A387CC3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264235363.30583.12714421859852249409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc27ea4178cf3588f4922b4a9b18afbca6353dd067bcf82435135e6f31f03ed
Date: Fri, 02 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722642353
