Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFC633CE90
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755710394; cv=none; b=u468UiyyMRVndwJZYymCEW27bXYvd6au2iGKF1mC6XJ8LOTrYpXzZ5vhU7m1rIn7UdaD2ISBp5SC9+Kk144+zz6vwYexWu3FYSIF08dStwybKzLjfrPqjONLM3hC/QDs1bW4HNQbKnb77kNADqOAfAUFKRQu57GdX7ha0MRwBug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755710394; c=relaxed/simple;
	bh=YBmIp/9t3JKGHXM53/NyKJMoDWVcet+c9pdJaSSUkJo=;
	h=To:Subject:From:Message-Id:Date; b=ofotZCNgIipEY8wq7yqMoyFVSh/N+eOq1XFlHiomdLlbgu18dbjfJ6nHgEQYdgILg/Sr4oKxu1SP0MOqef6dpWE87lNJt2dmZyUk6P4VbHrwB+jPIAVSICD50NUope0Eo3qaE++mowgKn/amt/bDEYc1Q/zZhk4yrdG8+757veY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad8vm3mL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad8vm3mL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C44C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755710393;
	bh=YBmIp/9t3JKGHXM53/NyKJMoDWVcet+c9pdJaSSUkJo=;
	h=To:Subject:From:Date:From;
	b=ad8vm3mLdGcnqXs1gVe1jrlE9A/SMU3p65NNXogg2IzZDhTnEdIUcjIEmrTM0zTcb
	 IQlXWayH0nZtx+0f5fiVKPdDuRGzjxVRNFO9uX+oa2SrD4eqW/uRIjBWWsZR2H+SU4
	 Ck3RSgLMTUQmm0c3O6S0QlVxd0BF/llJ5VMF5TFC1gUHXwFSqiLNN/axo5L1Y/vJKc
	 Wzc31PaezLAmaWuixb59qel5DxbmWze7nip7DZi8le7gt3VaRSad25+8lTT0i6nyUn
	 b5wXV4iyXNwGl4BmfoMkzSKaAcNO7slSeJZb72Sk9txVKg1bAfPCaEp7k5gNaIDZF3
	 55i3aY7Q0qPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92200CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571039358.22154.8861828792056935385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c89a07535dcad3132166d130c372d5ade77b48d81551cc249636dab0c1d3a6
Date: Wed, 20 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755710393
