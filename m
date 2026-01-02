Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A2E27A123
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767356034; cv=none; b=Kmj18o/tAbLcJYsdf7GQmApSnmH8EeKZBJfiD5iTAeyZN4JpYpEKSA5avyGL6/tG4hH/aWgXjSRwDirfopWy/jeZnkgXtDhAykATx57XyPdku2SQ8Mn+cpvMEOVjvDD7SzHMSiJAMjNT50/oANNcY9qejpuNQRRwoOgEWCmXb2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767356034; c=relaxed/simple;
	bh=qyIYHOAN6CiarLL253aXlgSQwG/DwmT/MLXKXxlqKN8=;
	h=To:Subject:From:Message-Id:Date; b=Za0T9DAdWX9GlHkZYwrGKFa5BGSvGDiO6TQi29L8bIn1R+LWTMcU1KNNyB5cH5Hhs/vH2jLYRfT910XDbDnnT+cygMHsXSFECfO5+wBpHnPJJOM0UmrKIqTsQybhVzqcF0kPzMVjUDmjk9tvwqXOdmwIPEGCrHFRcSRRAuqWR7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0/e1Rm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0/e1Rm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E07FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767356033;
	bh=qyIYHOAN6CiarLL253aXlgSQwG/DwmT/MLXKXxlqKN8=;
	h=To:Subject:From:Date:From;
	b=J0/e1Rm0A7CqTwJfGSOFd57eoo53IDkf7C1nmkqjOcCsMqxeNh+SCRBonVYcM56AA
	 WpyOBd8BAmsrLekilpo5URKSqB7cQlgJYTSY/pE4GRwKOdvCebq8Wm57q6hNBx9Arv
	 LCVFlO41LcjXSbhF2dgc6MtsHzL/lqgQV+0Ix+mXPUQr3uJxihiJ5vqmfRHwWBtqAq
	 KSFSJwOoZKKCae2uFT+7iVI7x1ZSXPHMPDSW5ylukZaasS913SWYEe7ejJxkUeJXDu
	 ITOebnyIQshQZ2zlsrhKUt36ZzqAQNVgfsdDj4zQodUKqDy3qehF+JC4I9vs06XvAM
	 DG7cHk3AwBy+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC57FA373C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735603358.17966.16276141368694351592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffdf9491cbdbd5af3da844f3c76a06b2d34871d352ec1511d24d77d17792697
Date: Fri, 02 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767356033
