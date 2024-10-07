Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBB3170A3E
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728296154; cv=none; b=u9jezvSFtLJuX55AkLDHs+apEpI0V9HRA1eGEygyPoMkOhTsQqtweg9HxVEiyN+I/OvZuobLkYqTbm8rBB9W+Vi9MN2N0WAwKgNt7kL7dz8onGL5mnvvHtZPj0lqPWdmzLFrkDCvhJ/NjjO9WXdVmUX8jF88QVpqHtD90HjtsiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728296154; c=relaxed/simple;
	bh=2SvPuD72zVgrev9skFFSt7un/n/NTFJIR78mChXpMfw=;
	h=To:Subject:From:Message-Id:Date; b=ZeQmA/N1f1FG5ejCzb2PIZ9z4AkndnRuHEZzIEClgiCvvA+aLvEeVuJpWiDxLCNObStZgimY3wrK7YGSwDFXdhhWJrRny1bIyzKdS8jJbxx7zaVtqPq7X3t3R+IGQTigd71vr6QC5iFXbu7btRz3j9exhzxk2XrmZB4bHVGHRAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9XINaUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9XINaUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCB5C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728296153;
	bh=2SvPuD72zVgrev9skFFSt7un/n/NTFJIR78mChXpMfw=;
	h=To:Subject:From:Date:From;
	b=f9XINaUC8INWjI8FxeVD+JvR/pXiJb8oSVozAdHyJDdi2KfeeKo1ctl079lI8W7lS
	 oTbqzajRM6o8yXO4WhtgvWqiDMzJ0qbd/0NlbJgLAhhoewusNAN+MgYhQNqgA3crHJ
	 GKCOWMZZFh6QBg0ZOtZ3GKgdTQETZSPjITa5cA3M6vGSZUANfvxPiJviY8Sxz0lJE3
	 Kx7vL64Etrww7Ec4b89X6whV83WkBYjWyf1jBMnUemebqPUGpqDB+QNaksgbIsbeT5
	 Ya7NewTCMLoZ4qK3J+jgqR84/I+dqezQ2DaNRioXug/nunjdPS2IFlLuz/DY2DjTjF
	 zYv0V9JNFHARQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F0CCFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829615360.28904.9031276688379331256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db502203940c62094cbbe9ad1b895127af07c9a70a17e96d2d9539d1ce1d1e00
Date: Mon, 07 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728296153
