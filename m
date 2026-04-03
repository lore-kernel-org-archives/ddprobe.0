Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23901285CA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775183734; cv=none; b=VbyXRItF/a+WlzNrCn/E9SEs2vux8TBF97kPLImKz7fKmOQReyk8cmkjEGtJ3p0e34zBX2VhZhgejfZLOG+tvMNqIljCmpbPABqRm9YqdKKCf+k4x/Y23I31A5wus8tTOMaFeWZjuXA8o0MVAVdeE6KvjAvbavhaBABPeeAaP6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775183734; c=relaxed/simple;
	bh=hO9FLDtB7HP4/G/J2Stklz+FooHBiLwRsBqWhqpRH4Q=;
	h=To:Subject:From:Message-Id:Date; b=n7M5WDhbCvzl2fwG2fby5c/FjcKq8rW7A7CAcVD4lrt3pMRiK9Tomo0q6EPASCs5cy+8tfc+J0RILtX6NrCNs2XG0+XZ94WMJGaFOwf2GcH/kd+7E1qmuWGN+IWnBtP0HyLu0HdFcRwUXSuTstX5gYYom3HUcizI1rZUKyINQIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HR8G75Vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR8G75Vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C440CC116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775183733;
	bh=hO9FLDtB7HP4/G/J2Stklz+FooHBiLwRsBqWhqpRH4Q=;
	h=To:Subject:From:Date:From;
	b=HR8G75VmAiYeKnmoKhxP4c14OcxT8gM8fJ/dIP2smBIUMubk6nX339e6JfTPWF4h6
	 zhS1wqlFHxJnVjchv4M6gLet5UKUeVcfOHPF5JL12CsKR+AkXP8LlqGXLaebPIjybz
	 Y1zS5XBEUoUmvyEXGsdys8wb+S3j7zRLkx/vAzSsxIrjFJvp8Il5lmPdOHnHQeEh6W
	 W14v7xwZXGzjlp7qadWoEtT9UYmcLIRQti2f4igsK5YdH6ycrrf3CHd9/jS3qWUNhB
	 /L0L/1J33OzNRUhySf67YFesmw+Ztfo/2p4LNycjItorfYQ+HdBiYXI5RoAUOBwMq/
	 LWGSQb3ugblDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A60D73088
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518373368.11672.11558279298751338295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6176eb728257b6f813f33e5240215b9559351d394507129bc54b0efd94c05ed2
Date: Fri, 03 Apr 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775183733
