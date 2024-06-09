Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748454436A
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717974443; cv=none; b=XADLlkkyNBrGPCxdEm3reLB1Hx4MWQ+d77nRrf9QUwAs9NXf1IXIKwsePziElWBJNoJf+htM2un6c3sEab/emQbawHvK+CoTuzSOrQqRMedfWIgvqAH3XKxp4B9wOklgS1+e2jWSuuWomLAhhJQqjJGEsgTJsmCXjOhtRZek3+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717974443; c=relaxed/simple;
	bh=6OXunZJqxCVdjR7WCtZWAD57Hu7bIoLUtOWY0pALoEA=;
	h=To:Subject:From:Message-Id:Date; b=agjJUhbgGGV4+Y/qYPxIzQ76To2yECbAW9CDR1GX1Z1DG5IWWoTMalinPowyLzN5EDal6QtMKMRVoZypBjx4EC11L6mmBctpuohGNFxLJWNkjy8bcoSf21KrBllnwfRDXNyaq8ZR2FaOehidH4n2mO8knoAEQO9glVNIIJRoZpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGchestd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGchestd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71B6C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717974442;
	bh=6OXunZJqxCVdjR7WCtZWAD57Hu7bIoLUtOWY0pALoEA=;
	h=To:Subject:From:Date:From;
	b=uGchestdGWpw1JIXxD2DEx7epvQkeoL/zExMvUS4xvueEk+Ghh0iGD9/2d16t8cio
	 O1xRtdkPQCMcluBQSGRyw4flTTOtP53IAyRMPFqCcfhjZWm/2lJTK6uHFe6wmANaBR
	 SYHGKqR+OnfGfK0qJFQDgx5ccGRCFIz40bXoVY6xYz5+sxct7itJVxvI77FbCvOJVd
	 4u21I/zKpZ4HKqPK5/82Sjwx8AAWWdAc98rvNh21f6V3ZZXwxbpj2CqFJmggpL04/D
	 vECrPUhvGcYTwq9XsXe6ai06fUXdqVW1ZkTsyZ0kmnvgXxTc1ehVdaGqVjeOrASm18
	 xRo7gyNnLpSdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CDDC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797444276.12720.4003415593100782122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be762c3be3eec57b16c3037e587743a56f428a73585a522e133848caa7be872d
Date: Sun, 09 Jun 2024 23:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717974442
