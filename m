Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E4EBA50
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742099395; cv=none; b=ueahfkt0YhD6/JVHQcnbQ2usalxhYV6YOEVmBFvOQBXRCBmeRW7iVPC3mK4873lFA1tdUgEoHoFJnFdHuFOdawPGEI7qBLiqNVIeofTM47jEIgagxzI0ensGdEpiT4SJPTO6cSjRQbBwc92URJTdo5702JzRZIsKGUYU8q3sLr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742099395; c=relaxed/simple;
	bh=WVw9jl0NoAorsCHaZ9g6xxuqGzpw6A4FUqJ6cHtkWJs=;
	h=To:Subject:From:Message-Id:Date; b=DJQFsuFs3zjy0lCxVuaju2Tkzmt7YANy9DbdNuzgvCuWPQhAn9xG7numx1Ae4uGYV3LvGdq5NbUTdCAu2KvtVHn3VjGCYS3YuD87vnbXEEGoQImOOqovyZzMGp3IZvNQYUOOvs06CXNR/1rDLWEAAt3Ep1PYQFhvB4kAw9/3xTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TytziNnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TytziNnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742099393;
	bh=WVw9jl0NoAorsCHaZ9g6xxuqGzpw6A4FUqJ6cHtkWJs=;
	h=To:Subject:From:Date:From;
	b=TytziNnVFYbfE6XdVknybAna/8Bh0HNzadarrc9P1HhC5zzqvhDm0eSzgHcuRVQqw
	 B5AQRHIye2s9nHpdulMKy97uPpnSyqDZVSC6e4hzsZWjpBT8Kw9VcyjFrcCIUkvEjk
	 vfl5E+xmr5fJvOn3Fr3B7SIvQSrI7Sj8JuKfvZjjf4+9drXsr4B/gd5AHt0v7505HP
	 5SenmiMCVaHklfa2Z4RVGuhbrpDtI50Qw/eEObMLVNOSPp6X8cURC85pJcE9ReoL8M
	 fd9Q0Psfz+Grkx0Wf/cuq9PiYL9kTNF2bczyifvtBAeBhSa+fleGOsPZcKBpHMQu8A
	 8kbfn32c9x1IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9264EC28B2F
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174209939359.26819.5440696129722959467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e29755f8962f8ccefb1e58c8eef48b083717e91fa11f062d5277421a2773b7f
Date: Sun, 16 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742099393
