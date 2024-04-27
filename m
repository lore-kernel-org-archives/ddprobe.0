Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F53481A8
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714210343; cv=none; b=YmVl8MBWU0kFPWnB+23WqewUWJKLndUSO6klfqBtzrUQx2saeW9FhghLp/+swPolPAYXGQLjff38/VbcnlArosQt9Qml2nrnOOkpdQ00d2BhjSHklV/UaYtXrK/EW6YAhRxpdou2HOTjpPePS5uuPQwI9La15SATCelZbENDpHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714210343; c=relaxed/simple;
	bh=48Y0D+ZHxug9ypyQkRAANGlLHxfXR5Fx4+fgsR1j1WU=;
	h=To:Subject:From:Message-Id:Date; b=JiJrTNfr59nHOFmTkVWZwX5X8IEgjcLOEqmJ1rlOwvhdWb2zf+y8fxWphw4xXJpNrg88FnNzFmn6b0e57vmu/L4oeCZEQ8SRgBd9xk2NWgVZNZwBacip5sKrvafaaVpg49VMwRDplWynKfCPx/L8Ybz+w+ODj67/IzvqI8+WuYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeDzJAWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeDzJAWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E01C32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714210342;
	bh=48Y0D+ZHxug9ypyQkRAANGlLHxfXR5Fx4+fgsR1j1WU=;
	h=To:Subject:From:Date:From;
	b=VeDzJAWG7mM1dXWoN8+1rx3WQbUptTAzs8J/LTeAmokqv562a4zH2WBDX366hr6D7
	 D8KuM7aVsu+MvNtINMtsXATt8vLP8+DO5mRMgCEP5WW7M5Jy/f2PW0vCu8f7zcTJ8E
	 0UYANlLWgy+TEAKkNzb3+CHMS7iR/ZfXJmr6+JDypAE8DnOK/CwMgFoW10/Z7hJoIr
	 TmN2JdWvFgbBbXi4kiBRtQ/dGneFC6PsjgVKSgT59pfdV1SqMdfvcn+sNCrqLbRdLs
	 GghIdO4rNrg2b9MdGugfscTyCVOkpZp1bw14HlZVpEPYahMouVJNwiMJRvaRL6lZvx
	 dx7IWWlZDvfVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF976C19F4F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421034283.29213.15830205866428111460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35476e058132d39ee1ac9c1e95dc14568d3b14ea66b919a9f823b44f7784ad2
Date: Sat, 27 Apr 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714210342
