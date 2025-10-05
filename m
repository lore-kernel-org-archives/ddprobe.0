Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EADF9D6
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759651794; cv=none; b=IBKMBZC0ppGT0dDKNri/tlAkrbd8TiuchDzqFXDq0KveK2neEI8oblGRVQWbQxHqIWN1eDeC/htbRvZdF8Z0+fo+Erl9v2yqxLxl8qCkKQ1LFuS5vgtJqv4AxnWYZpi4VaFTlw2humhnnvI2cOjJIz1OmMYvNQT6qzpAMQqSQV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759651794; c=relaxed/simple;
	bh=PomrPcLUjhE3SBCVu9p4f6zoNO7w+OVJTgNCQGXZDGY=;
	h=To:Subject:From:Message-Id:Date; b=hfrYaTDxvw94QDw1w3BA5gKbyj+LOx7hQiU1F9oqmvbJu7yHuUeq2IGMwdI+Z2rng4oLzmu5GhvUaQFVSs11O4j3Y88xSHKEYo9G/IBWJmQ/5SmydAWtyaybMUQECF7X/rDSjEnaKT//mtPGDjZsVNsVc1NL9AJ9itS+SkltOU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxRfwUco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxRfwUco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A56C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759651793;
	bh=PomrPcLUjhE3SBCVu9p4f6zoNO7w+OVJTgNCQGXZDGY=;
	h=To:Subject:From:Date:From;
	b=MxRfwUcocksvO/E77W2CmHYOuKfDdLvTcq7fX0bC8dXCz/JW8P+EPHpaFJJmfcm0v
	 xLwJ6+OQMwfdFknmisjKKhK8IGWCTfne5724p25xiYnVafp6+g5ZE8hjI5HI20b6N1
	 lhKzfDzI7OfMRn2HKGlXURyw/iyvZDj36qKsct7fkvjF05sv8rgl+0ElzvzTYXQy7G
	 qRY74+TtsD6JUbNiSWrm2+UjDN8uNbsxrJksSKAlltnc8eshhi6Hrl+bRDibP00Q6B
	 RP7LWVi5mBXSw9YtQWGm2vEDWLz52MX6Vl+aeXsych8tG8KpvYqUL3aXNOXsZ3ItAO
	 SvfNvZUXNgBcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93060CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965179358.30858.11781104185734665648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d72c6c6f85f697706c473d8502d8dd299cef9235e869cff975f362a81bcd58a
Date: Sun, 05 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759651793
