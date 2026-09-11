Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2CFF56E043
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789158034; cv=none; b=MMMIr8veh5X7ZQQFCS0TkIV/zwFZK2xpIXKDwPrfmGOReq6R/EKkJ3oHS18dIjVVzOro6qJjHHsgSGawXv1HGc53BanhVmgjHB0WQf5Qk8sMPZvAGGxSFMo1u60uod4OjvUQ1S7eUNOzKkGdmNSynPgUgD1WHKOVRWfHSd+zZ5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789158034; c=relaxed/simple;
	bh=lYoMR7IQq7ljmR0JRXtfeDMe9C3DSJmbf6hYkj7MJKw=;
	h=To:Subject:From:Message-Id:Date; b=i/3SVzyO4x8DlI1ttZBnVAkQsq3FrCs63btGcIVZyvdygSptdq/kuGCzAWhHxkGA2pW8RWB8ffWoXStZar3NtWQP0aWu6SARz3CB1/5Tn1HYJOHHPQxNSFfjjGrrYtua/72TMF8z3R2a7V9rcXWiwrceoPpuO4t3DMK3RWIF268=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3/xB55r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3/xB55r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44ECC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789158033;
	bh=lYoMR7IQq7ljmR0JRXtfeDMe9C3DSJmbf6hYkj7MJKw=;
	h=To:Subject:From:Date:From;
	b=K3/xB55rouQYrjFk5i7fMYXx9UDMBXMu7vyqOan5JQ1KWgFyS4Y5bC+ELJWfRNAYz
	 UVKzKNVm0y5na7ta2iGK0nV2VKnka8eHgn8GOXvVIvXJISmb2NjSG2DMJOrKmSwlis
	 Si9q80gED5x9aJ/fZwEhiNCB4pOsiX3uYBEPbhcfFUgyS/nB72pN/vD2r2TpULrwnT
	 3tkobjJtKaCT5Iy6IJjuHWxaOfpDDPMGZ6PwpMzfzt8nsvMUnwPVmkXMN5AecfYipo
	 E4omcm4KOjnOzi0gP5etfn4jo8OxLemqvqZzgNYyAUFmfDyMaGVmogZEN0QTrMrvUG
	 1IBPrekZCG2fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F67C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915803369.7173.14706925034735561559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b4096152d2855adf11e1d6868e2bad5c2c917c3886dadade8984d9803f82b4
Date: Fri, 11 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789158033
