Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44185341AA
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752526194; cv=none; b=EAKAmZCu4/i6RIKWHbSFv3InXe+YdSSQ68gn0PZIX8ejYjUMNsrtIsviT0vU9j3H/n75MRpINjWdkyM1miQMNSGkjUdmFrrASi9BuwGi8uOad1ikYmVMbr1Ut6gpjQa4XEVW2mCUWfpBGy4JJSQmvAxTvoUo3WX1jeIlmACcsMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752526194; c=relaxed/simple;
	bh=c5tx9dqBugq7GsovB9JRJo26mYcLGqeF247brrRNfVs=;
	h=To:Subject:From:Message-Id:Date; b=BHs2ikyvHiM1B9+NQZhv8DEK1l6N/TDHU9J0BvkNV5E+aXeRF2KNb5Hly07foBplEzIHSYQttM+dnuK9Nxl0jO6HHdqq3ycaT51CxRjeH+pcnKBxTro3HqHjhA3kVbmm88CURvI2XQM8DAFKJhzC/CVXpBEA6bLpPubbchGGsqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2ec6BnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2ec6BnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F18C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752526193;
	bh=c5tx9dqBugq7GsovB9JRJo26mYcLGqeF247brrRNfVs=;
	h=To:Subject:From:Date:From;
	b=b2ec6BnL3j047+wqpS0qiuZcJCAbyNkXYHfEkwkwT31F3Zo6jRM7qhP6vcynRv1rU
	 HCSGuaPyVf+7ES866tO3vv6Tlww2BJ8jxl5gVlbNhy7BsQfz/IYzXPp1ygq9JF32jV
	 epveDabxNA6TWfovNhq8l8s8ZSyvAWGiKR6e8oXSD3gnzsGAu3f2xExkZf6pWKctEv
	 JCVf8vRROB+EQNZCdZijON8ArEBq7t8XXFzeZKnj2wKUOVcoqK69E0wUjeESntPUbJ
	 +O3SPxYN/9Kww9vq/S/JhqwN+HB4KMDixFAieCqB56vo+Hood8C5pJ+x+NUE1bDHz0
	 9nXScr5ILs5TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92784C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252619359.4179.13416932736741592585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ceb223a6654d7446d08b1ea4ee18f7afb01637df5b7991d21246506e212d559
Date: Mon, 14 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752526193
