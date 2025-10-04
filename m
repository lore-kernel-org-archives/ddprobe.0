Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D281A9FB4
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759588794; cv=none; b=X2Hr0tNpJWrKfnMmo5HENJpHu/hlWNXq8ashtLJaOuY7dAEX/5+zgGlgPpjjJ77nj2Dwo7EBcJ8M+dFZBT3/wYXVTx5epvoLz4SdofTUgJQ+kxedmlHSDxl157OfdhaQE+erkj/UDzdlT/ynV0Oq3M0B/6pO6ofF0qyHV8Mz77I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759588794; c=relaxed/simple;
	bh=q5zfi+du6K6aqW4yxJRD495oqGy9RVGny8XJ40kig4U=;
	h=To:Subject:From:Message-Id:Date; b=WcFdwHpOarhEaRrwzVQz+wKSgQWxYucdU+RzYP5H01gp5WF7SDGd2FKA3a2Gqry8ibiXZDE5JlKJY3CUzywKe8leRGEPNbWyUsytKd2XjfKErO13m4gdxUXRgpkXnBEup6SChKK6jN8bcya7a2HY47CAetCD47n8+WMtZP/E8cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji/RsnX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji/RsnX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCA5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759588793;
	bh=q5zfi+du6K6aqW4yxJRD495oqGy9RVGny8XJ40kig4U=;
	h=To:Subject:From:Date:From;
	b=ji/RsnX5gBFMYfwlllbpPsmEvBRKZGVAayl5vsqHTHI2VYkJt0OK9nsZTh3ckNVRk
	 E5KyA98LQsoy9ey2PbIJK8TSaMOZCNhT2yu2Pe3y/kbXaIuf4ClrDK3XVlmub7vURA
	 +pnBJkxviBgYBj7+JgHBdo3OB1gHkovD2u777AqbV+pPC2BKKm65UZpCjrviF+ZIOe
	 uhDa0OIWkLwJnr/DoqBFIOodrtjSF/VolBooAufJrkJiaomyLnWRHW3qQJXPpdweV1
	 q7dDeOCt0fb/EsyFHxuIeJJaGHmbtxLKgWjtVo0eBvSzw1SqEjKTb5lcbf9mM/re/D
	 IZmZ49uQBAVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958879357.21572.16812743131247368811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e8545acdd0be220c74c2b0e769a10522534c7b79807b6acd942713d794062f
Date: Sat, 04 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759588793
