Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBEA13C670
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731272154; cv=none; b=rLMsZe/jQ29qHhSAz0IuIBAPqforOTEdqa/5v7iVe4vcv25882d70PXpheBptTHaC7DXOutYv1LDiyECMNkp1quzWH//ZTntVP6Y0cjLWaTgZ6j4BSA0sIoEuNCsTXjn9rpbqZgDX7q2zh1X5z69HDmJreDsDtu9eQ/4lUjiG7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731272154; c=relaxed/simple;
	bh=DtON0XxNKNUs04oifEoEnIKuvftknV+rJ+33BuEyQ30=;
	h=To:Subject:From:Message-Id:Date; b=MfJ9dE7DVWFOjYNaSLhFucLBPi0+M/Oyt2ZOp7LwJdp1V3isC3TQIZQZbqvBjAZZPyQm8kGGf1WsHjzkp8Dc0OPpuBPPFYbu/R8aWJp5FdLIq0t5F5WfRgeg755IvhD9jwg9F7Evzvq2EMqAYLZS7xxS0UjaQ888Qg80KWeZ+dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6ZazKuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6ZazKuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F6AC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731272153;
	bh=DtON0XxNKNUs04oifEoEnIKuvftknV+rJ+33BuEyQ30=;
	h=To:Subject:From:Date:From;
	b=E6ZazKuTc7IOrZCx8amtQrcYfYYpL2ttzUORISKzQFA9YsWsqDvgO2FTyb4nTGzdR
	 itU8LUbbLTUiF4XTO72xaID5AgbdqwOvQE9ERKb5xtFLm0YmkVkfE5OSTiBHMsmI2B
	 MyyhskSDpsHC2sRDJYAIsnmHPtK6/+LhAOEkAGnLg7cYLkUADwpdTp2bnYvzYelQi0
	 uGgyyevfuoyPO7YC4ybvmuoKaQimAUTKDzPkR715cHzZvaEuCxjCCNDnaO7bdPD31u
	 uO77p+7WZMIsQQQ7WB8ilNasCUIXSRK5jXrw4Zld2ykgxgnGd2bdGZesPDVV5pKZbf
	 JbQ2jJ+spGFrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3CDD12D53
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173127215361.19910.17419163024800348016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c92c06e9db38c83fdc2bdffdc4535a55f8cbdae71cc0e9883ac83c5f1d7efee
Date: Sun, 10 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731272153
