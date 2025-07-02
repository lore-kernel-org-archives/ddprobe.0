Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5014C6E
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751425195; cv=none; b=ciIESZ6LCAJa21wDIP1I/GOqyx9Hk5uJcx4Gmeho1MMs9VPc5pvdu81mZLu/8FMPFnqxcG1RpW2f+rIQS1yNFGsBCdW7/vj2D+PGop+DfenebstbatMce5k6uQOZLccGavckPd2U0+QQjSf9iLvb6jk4pb2kB3I/PTK8mW/Jp1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751425195; c=relaxed/simple;
	bh=fnFjIpjeItn8QIFnBPMCPJba5KXtDS+CpaIj09yuwus=;
	h=To:Subject:From:Message-Id:Date; b=Wm9gm0V7Bo44+i6GqtTD6ozWbNBAUnsVoxldQ+x+jW9XlLnJPGE4Hnphr0t/4gAwxTtelG0GGWZpX3UjPSRsXg02/AZx0eU2Pr3wEANAdDWJ/SLezFcnfb1DaVb4rB/AmZkaGmEOOehwsWqwkXEMZTfConnAPhPwRA91H4lBdxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGEWsQE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGEWsQE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C17C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751425193;
	bh=fnFjIpjeItn8QIFnBPMCPJba5KXtDS+CpaIj09yuwus=;
	h=To:Subject:From:Date:From;
	b=oGEWsQE2doMrjTU+YQ76M0zLSKZRO8bnChOB+ICtjmmztk1FEpP0cs4i/UdFWuMgj
	 knkupWgsOo3HyjFt0/ouHR6NQ5Jm3z2AkU71gbdjjREwbMMLW7SghldUloMbGeHFG1
	 KahMZ9flHH70kzjh659JQV82l5w6HQHLvPmNpJWrLP/M0mCao6jQH44kBUT3D0d719
	 mJD42b7sWljdWIAFKkrVnHEKCAF3LV4cpAahK8hcAWaGZi0VaUs0PwooAtNW9caW3B
	 EbVXQQZ1/roZ8/wYo3oyXt+5nnay2u8QyzXRsJLb5Km1SKwA5w+R2qWshnxPeCoU/x
	 mMRKdhVe0QIow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF84C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142519357.26181.5995922117137716033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5a36140c651653d9108b314e93bd56fc0ac816e522bc2acc74f4a4e927d948
Date: Wed, 02 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751425193
