Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607F154705F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790520034; cv=none; b=iHvWMgmYu9Tn98hoPDz5tXfft9uUx2WUCcfeKEWmsz293LCWouuNVcD/jitPVzTzTOB+AMr13SYDfkDtZL6TWtH93r4/qhAE0hkQ2UWK9BnIyHqqH6WUEF2b5y8DIc/gvRaoAUWLz6RdxjhW3hVmQSV0Ij5ygsbBN+t17DgdBP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790520034; c=relaxed/simple;
	bh=fGTItprKoikmoK6SZlBnqU0YMSxTZVgJ1rU9PCjqY1M=;
	h=To:Subject:From:Message-Id:Date; b=fZqXVTSa0AwsFNYTe3CL4+3kDIBkLTy2maQaFoMrQiFWjwGXb2nstvYzLloC9zNX8mE5QQk4A2s4VYUVxzx+DNmJHtLDV14rQTW6vXqbXTgAzkPrkgRGT/F/kC37etZFxVxRLKY9S914O1hNaUqojkrr4tkfRHtaat0T70HqfhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kozRiOvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kozRiOvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6CAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790520033;
	bh=fGTItprKoikmoK6SZlBnqU0YMSxTZVgJ1rU9PCjqY1M=;
	h=To:Subject:From:Date:From;
	b=kozRiOvDnS3YWnSJFzmjl/j1R8wIunz8VL0kET9Pyy9KO6U5UHvu9ed3dhhiBsbfq
	 0ZMhXXyGoUykdu5QGUPGG8J06eSaqyiROoVS25oa49JJNZBLbDHvenPIjj6lWpcmy1
	 2Pjx6PJl+qPKUFRxNdE2Znk2cUKVd2mRdJ7VS5d3WnbeSQvWVx8x8XEUrDkdZ3NKgn
	 6t0Izk3bQTltUxXeqpISVZjMK1tQpOTIuAZx7oJnpI49fCneYHnB71PlWpcuAa023Q
	 VUY992CND0o+XNqz965aKKVsdXnZmseIyJvKqMDic/soj60m6lEgqFDijTnyxwD2aE
	 SRKuut2jYU4Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB212C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052003369.15836.12434054191199782359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a5c3656d84aefff0cc515ad3a16538986e8ac440f6890b13095aef67c7a533
Date: Sun, 27 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790520033
