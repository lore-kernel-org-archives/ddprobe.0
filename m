Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416F023ED78
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733867154; cv=none; b=Ltmp6xG9vEn/dQYfh/ybbmPC1RgU1Vkc6TEBKurQSA5JN1fef10IXJkVQqYEiz//fEaMx8/glyGjKnfWS92YRAYcFTM+1bU0VaI03UTfycA04PdXgmm3rR2L1X0GqB1H6B0XXopHn2g1HFdEsHFITRQinCUbbL1dMz1nl1S4Ijg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733867154; c=relaxed/simple;
	bh=xjsBJ2uCLU7k5gE9TeshK/5df/hAlqPKkv07Pjp9pb4=;
	h=To:Subject:From:Message-Id:Date; b=UlBKUxac0Mh4UmM1LxBq13qgEp0VxeqblRTKvvYNnrVJn5VMT0fj1/6nKGX+LnUYmcSslh3nY2wFvI190iakNv0llCUPzCq/tRNFpUOiPlTImVHEm3Zt8I3+y9CC1xWniM05itsmFTI3STM5O9XFIAF2UHKmjGKdYf6QulcfDJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR/BQl94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR/BQl94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F4CC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733867153;
	bh=xjsBJ2uCLU7k5gE9TeshK/5df/hAlqPKkv07Pjp9pb4=;
	h=To:Subject:From:Date:From;
	b=IR/BQl948BqAV5Wmaub2j+TY4WiM186MH7ek1hLOLyYe5MLxSvrItC8slGVxZbxuU
	 cW1GzaycL0+dUQV7/x10OB1KLYnus0j6Br8GIlTxsk95dgaCRs7e91QuKFjRcPNjl+
	 RwEPAlIIck4GVKrwX/mMQosjcimkj3o7JUOxFW+QiDZL8AfTc75oD7j4LcRI3N4qIY
	 qKqifasOaPeyZbahRpBY0OalINwGqNKCZxXz9js5pGLLyiTbxFU17jp4mEEtVRcteb
	 aAK8qqlz5mbf86kM/8VmKhUNDTQ9H33w45hLL+nyXCfXc9FsOFjuAU/KFabugVF/a/
	 YF+YVcQVwmMmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B14E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386715361.19001.11524001517832318288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58479d6bd6485d143ba3c32b44eaae0430eadd36b1205b470d83ea18eab8a56
Date: Tue, 10 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733867153
