Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43696440C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720797563; cv=none; b=s4KtLSK8+5H4TeqhC0voFkbd/3iiPbqOap2nJPZZmvzATi1gX+QzBL6PH+6kKReOzXIAe+RWzOaXyEV3WW7RiIfMyzsVBq818F6bzhLliAN6ev082OffKCr7J+AYYoL1mpA2MIuEggRBQuVD8Jw+OH9tTxoTvkawvSSi8rCHIRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720797563; c=relaxed/simple;
	bh=uk00UJYuXW2hzH21yjGb+okFnXN1LNA789HU/bDUkfc=;
	h=To:Subject:From:Message-Id:Date; b=SZoXTAJPaeX9VkVwrjQRf3L6IZCjwZb05TKyRyDTv5M8YvcEpNbRkcCANnfsGZ461dJni2OYP/O19tgntvrp3aYOXY6ZvOOPLM0kUxn1VLTGhzQHPJi8HNUKsIQwuSASf55SH1Jag/uaEEtv+SoVNL/N4iVEX9RjyOyv8BGyPfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eko/i07Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eko/i07Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF9CC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720797562;
	bh=uk00UJYuXW2hzH21yjGb+okFnXN1LNA789HU/bDUkfc=;
	h=To:Subject:From:Date:From;
	b=eko/i07YqjzOk38tO6P3OZjkSQyLrvY78fdBM2HrxCevFoCPmAAxKezIuq3lUtz+p
	 jEReHNwhSW8LnK2a5N4JczYeSZMLhK4iziFonZnptwrZmcB1DIoAtFt2S4UmAnzkQY
	 HzM/F0TyZUawTb6z19zp6dcm7lztEcmUOewaZxs/xv2ukrkzRp08pPM/c0HNl7aR9V
	 IFzJ5Kl/NYwAu76FaMJXeaqUw02T6+hqTCp0vyk8QKN7v1PwzwKjPLHxndMnydUepu
	 IfgDNU8jLncnDrXBMVAF0o5kt2zdt0sA14+7QxbGr1ap1rypjDOpmDBukbaM0Cq5kR
	 r1/FeSny5g7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A26C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079756277.8824.3974350605997467873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486b39a005e47614e0282dea3db9897b54685d9a43ba5ddc537a25bef7327289
Date: Fri, 12 Jul 2024 15:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720797562
