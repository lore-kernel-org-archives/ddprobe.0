Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0375133A702
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773411294; cv=none; b=gVUNl0RCPfplaZdW5kujzbDfaYQnOxQtA6DhU4ukWviK3t158EqSAhMlrS3E9J9ELR2twmuUw6MwNh3tqK94+h4zVTk8TzH2pmGZ8doWave5J2GHsLp9vRa/vJLGQs/1OuoESYbD/Ig73iGzOVqb0XR70vmmradcMYn2K8HpANc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773411294; c=relaxed/simple;
	bh=CMEaRRemE5zxJ8nm3tWForCXwu2iJ6A336nkmFsgdYA=;
	h=To:Subject:From:Message-Id:Date; b=ipIZiozdVsdBqVoJUXM1ExHTNAHMiI8WF2AmNIUXW949ppMSc34rZ0c2jPjtfq9dgxxg0kwiPJryLClJvnOO5pmyxON0qD559ylkMoK0P+Yhk37LNVaZbMO/2yE0Kw22Ho/DidCnm0NDENcew5RjzjtCxHdulOkcLoFMkevZM14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc396+Eg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc396+Eg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B9BC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773411293;
	bh=CMEaRRemE5zxJ8nm3tWForCXwu2iJ6A336nkmFsgdYA=;
	h=To:Subject:From:Date:From;
	b=Lc396+EgIcuc4aF2HIrb6AwBbcYU/vOIcHOSHVpFSGn/Bq7gVFcXAqbZT/ixUYc+a
	 Q6pXeinTHBwlndF8thNfsRti4hf+UKPSnqXAXOdjh2/wnv5hVHDLbRcSIOLO6L7wsT
	 HUfLE1D0IjrsedD1sF4DIquG0iQBLueCMfsbmVUIfj9KvvRFj0aLzSOle+2DXvbCWq
	 diIbnby7a4rU7RCT7dWVj+sMnLIASRbn5im2TQ/beenkU+U8Ml4JYkpykyP8ezNBg1
	 /ftsG7XdZRgpvMz0FbQvlbkszs4yEhZoZThmZQDzkqB5oo4U3QaI9eBU2P/C1MEPuo
	 qkHjfHVOyZm0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90618105F7AF
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341129358.8332.15241540390180661907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f504ef334f2fc3ab581977275fcac9ff52e844b9cbd54080bd758b47a9103e
Date: Fri, 13 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773411293
