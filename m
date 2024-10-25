Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC721FF04A
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729883154; cv=none; b=Ruexg+q0Dv0OUJ9tRx/RhTcPHbDO3gMAipToRQs/Uf1dEto161QuW45fqDWNChzywp0G95Qnw35D+VWq5Ea0a1/0O1FxWukpI4jtIKjJUqSYgnHuq9BUFB0WGAAf8US07X1Kupx2o82icKWZ1Rb1QyzEonZ4zZvgYBJS0Pj3/TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729883154; c=relaxed/simple;
	bh=FNDH/d/B8ZYd4m4GXlViC1fdLDGMgzSyowl3o1wzq/I=;
	h=To:Subject:From:Message-Id:Date; b=eDxR2dzmDoTMw2PLW63arcDbh71G20ckGMM8Q7K8Ds9z0LRdRmSFB4SAuiVGjlFmcX7kxxVlmNuURGJO0sCi6it897zCwbTnm2WfCo1lnatjyvDZ86dYzQKEr7qWsvfDkhd2SAifWjjF3Ejnwh96iqFWH1VHxG5ZOOR7n03GMXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yolt5BIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yolt5BIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA0BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729883153;
	bh=FNDH/d/B8ZYd4m4GXlViC1fdLDGMgzSyowl3o1wzq/I=;
	h=To:Subject:From:Date:From;
	b=Yolt5BICLCUzmcqX4KNLQwMdxEKIhKZO+2tWMB/uoRfmcXT0z9n5EuNaksR18IYxw
	 eqC1K+bBr4PtGzGvVpMUSqjx1HOw0IUpRiGVSSp5M0Db+ZN82UypkmIXw612d3zcGA
	 MBI9OqRts6sKQ8sTWf42xkGl0bYKqjnCISgo+nxuQr3p9SauBIaS/X9enVEFP3344E
	 knq9iFTQHD+nfgkYrxj1sHBP3zo2mOBYOZcH5uG3k8QuzBpfdcNG5kyLcpMikMnpNs
	 IXSDr8E1gNR599INZh90wSTI6akftapZGor1epOLnclssJLWTxxxgtA5pIYkedD8jD
	 EC1Un0hrjhxeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97051D149E8
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988315361.29254.4413851999380472117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f97b84381a3477f93b37ef5358f39731a8d449a13ace5bf606ae1108901a44
Date: Fri, 25 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729883153
