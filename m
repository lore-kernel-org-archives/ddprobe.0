Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0F214A0B5
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759945194; cv=none; b=Z8xg4cq8Qc4lFlSCkJGojFATVzuWOJQVRWRnxMl7rLB0LFOHPZ7eRThD33KO8FaBG3hWVjjf1Ho7R4vM/poi+wLVDJOmYjCxUIw4VuaNEiYeK+rEpD5WbvJiCvpkRmNCQvyplC9wz5WOd3r2dRjWZUsCtOCsJYeGKmblZPqxHaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759945194; c=relaxed/simple;
	bh=eE4ELHKcfOq2TJBWeC76HZgXtx1aQdVcaCxqz4SQiew=;
	h=To:Subject:From:Message-Id:Date; b=QKIlr5l4xFBa+pV6a89vyl9dVEiFQ4MEAvjBbt03VhxheicoYsuDWSmNd4dv5CYrTt//6cmeg1EprznEsiZQXF5ldu7BSSmA3wWuAljA2TvWTuPF+XMXDqidrhRHc/TbynN1ZRVpJ0+uOlqZqZUoTgIOsXKIdqT0rCLp1aZy0GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWePT8wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWePT8wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759945193;
	bh=eE4ELHKcfOq2TJBWeC76HZgXtx1aQdVcaCxqz4SQiew=;
	h=To:Subject:From:Date:From;
	b=UWePT8wyPZHYAhSNycaZSuQ8Zlhf341D72pHI4ymLqY59OqyPyvyiBMVIFO+b5Y8V
	 +LcQqn2aTKDMhr6C4PcfBkL9ZEzTfvzBGfSah0rinrEyYU8YGy1qsqzaSR5Yn04q7g
	 iOEjePVCpYcCQKCL+Jj+87/tA6Qw+HWu8DSj3yq2sXbPgmrMeTw4hGrI8gXOtB46r7
	 o+aXhtd4NmT5RLzpdYF6AZQyDiEISC3T2IGGnZgSCEF52Vo9PsT0RxjkBtq7shOkW2
	 AqsEMA2WHLn+BMSHV8VQPQqltfropX9450rwHQ4V5S0yEY3LiQy+DYr+ptry7Bhy28
	 t4xVWK/IYHZlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FBCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994519359.3509.15992183724970329382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62df641e9bca16bcfe30dbcef94d53a7267b5652e6dbcc602040d3fa0d92686
Date: Wed, 08 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759945193
