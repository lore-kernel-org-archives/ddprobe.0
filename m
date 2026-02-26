Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219BE45C0B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772082294; cv=none; b=BkaUEmZPSaeoKRsXcSvMFUiI000t5Wethuv7NMOGMR1Lebvu4fjk4aO7p7MUhgyF8tXK7ur4rNCFtkWMd5zW2JM6B5j48WBfOUz+YXzRtr5nBS8K8shIDUs1nRr8Xap03l3Bbsn9p88upy9+d7YeqoDlygbzOPWmu9cs7GSG8Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772082294; c=relaxed/simple;
	bh=NryDgdFBDO1Es6frUp6+qXsEXt/AFUbN+RgOOUM+vgg=;
	h=To:Subject:From:Message-Id:Date; b=njj748LvI+fAR0fMgnNr5wxFzGFYIQkJGbadBqjeUo4zNtNKi1GIJJ5NBv7F4a6Vj+LAAmYBNn8waLn2Tpqn2bY1uBGycD0ygfxUh0w34/GmRWqyIjDrptIDbgj+FFpN2dzeBB30yWAcKf7wl2snYqHvmJIUAYoYUVZm5HbcSMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGTPDEyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGTPDEyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5867C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772082293;
	bh=NryDgdFBDO1Es6frUp6+qXsEXt/AFUbN+RgOOUM+vgg=;
	h=To:Subject:From:Date:From;
	b=DGTPDEyKlbmegGEy4BBY6qUHkBZmmklsmgspXcsmN5DEvVarnsJr6KpDi+1nE9Nxe
	 IZgf/Qg3+YyjViVn7QBKudkP6PltOQySSPX117GF0M+GXsj8r9u4s5KpmNHxixVmL1
	 bbtVOehhdMxV+Xch/nHfE+gA92C00wUlQ5tVw5j4415/3rjOYM6g1Hr413jASK1vN8
	 SToHipA7ea9H+/hG30Kh3ZCp1auW7AFDtFhTe4uLty25T5wBzfYZZVVZ6pyTbUDoFp
	 /818qvkR1Fbp3YHz6enFYQSqjz6e47XNp+sRwq1VJv/Q4sq5Q/8cDOKTZ1OOcb3Dek
	 R01NwNws18KuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA6FD461A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208229358.26961.3611242892915392247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b788ab219d150b0ecc949d560f9143c74eb1b55b53764b0062e34bf9d7d74f7d
Date: Thu, 26 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772082293
