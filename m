Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2722330F817
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758821394; cv=none; b=K8xSy2LKxTedOVcUBe6sPA8zugNY4F22nULqdlfUv8G6ZcK2i3mvIpJcIGibn3kwAJiD0+VxtQUxS+dWIiFmkOKx1gS9XqrG+oDAan2kfhhZp1CEdYhjmipQeCBb/ML9rpJ2kzu1A7XPO2wX9EKa2+NnMyAC28KaztG21h97bxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758821394; c=relaxed/simple;
	bh=XTSB1z4WJm2oEW+EE/68nMRobsq/BwkvftfBI1tm1Ug=;
	h=To:Subject:From:Message-Id:Date; b=LdWzGRN4kS0Law8ehToipSK2QnDM4dSGeKgN4PEKkY4rt7IYv4170NSF3+ohIuYchXpuoTjkyIk0D88xJ1oXf7h4TATX3uR44fsW4a8aLpWxWHZL0Bg27QD24SMxkN9D9/OeCHVvRifFYs9kVtz0W7Ll+ukNUAatF7EI2XuAK3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkcTxAj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkcTxAj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39BFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758821393;
	bh=XTSB1z4WJm2oEW+EE/68nMRobsq/BwkvftfBI1tm1Ug=;
	h=To:Subject:From:Date:From;
	b=mkcTxAj2X7GThU3Ifah2Pm6/UcUYJ24QziEKy3j5fhuaavYTb3NDXS/E80cTrD/jn
	 Ze6C1YekPnUnEv+6dzp5Tl56xL16dBtMgktl/SrwmdvfkUBlT2WUcts5tLaOg+xI5V
	 ADFTx3fagjL8LqS/+7RYNKcIAdSyqFYAznpP8kefzgSV31e9gVmTHP+5lADJFjZ3in
	 nl2tWrT90pLq4LiYbBInK4il8HlJJHA4dRJm1jGsVXHE7GWQP6+3G0/aXyevllfSM8
	 zLySXNZsRWnSyFoUCfHlzG/vCAIFXOxkRBtH+2cVT8LA5IGAGNKZVUgSy38+57qv9V
	 7m5qIM4dVPpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD09CAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882139358.14616.13566607359244133022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fa3106f16f26b27895481ebe488f1b7fbcec99f50c270173dab580e96d21f5
Date: Thu, 25 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758821393
