Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665AC149E00
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714145543; cv=none; b=I/XAjoMqtPafYLrSXtVxGrRrF9+3E5gt8rjzzTIGwN3fV4TdmWifl8TAUY3fKPiOaD2bMAdChad/CgFK01JneEWFBT10cvRUFEnU0MFn7qBPosJYFCTRFWQJqwI4ic4Q/8ViVJ7RlsnCBX06EEUHcsBu4xwVTGmmVKx3BOByBUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714145543; c=relaxed/simple;
	bh=CqCBVj7zgJqjgHxM0NNzYem7TNY4RFn0WDCNTQnX4kA=;
	h=To:Subject:From:Message-Id:Date; b=kwabvHOVp0L4s+CQ5haOvoBgLarGG5usNbDuk3HfYwhG0gDtzm6Ch6/ZnodxL1sgyuujwhVavug79XtCNZ9r/evziFZEXCEHlajKqoepthnIW2nJ55Hm+PEYMmvb9Zwv5tnMBKC0khpEYAZkg1frQysrVxmR1I2D7UNT04VFKAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PV08y+ST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PV08y+ST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D996FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714145542;
	bh=CqCBVj7zgJqjgHxM0NNzYem7TNY4RFn0WDCNTQnX4kA=;
	h=To:Subject:From:Date:From;
	b=PV08y+STZgbISTgJVei9w7v9Qq5U9z6eN+1Y1FaK8ZOAHU1jl0zSoeOEW6Q0sfg5K
	 fcTXbNP8QTqVRYEGzksaC5oX/11ZrYJH7csRlvtmf4SBC473qNyiJdQAyDdfldzbTL
	 mr42Hg0mb4M2AU+MtHIntIgdST/wv1oL7kYFSBoQ6uh/taNl8O1+MpJPdVMFLK4HOj
	 imIJonZXu4aKOh7SHPqZ3sM63igqc19z2oLJngfPg6ihikMsuopu74Ya+oFbaMUvpt
	 8calwLtjFxeAPCar6C83BD5aTM8LPBnpR1ANJAieUAhoq2Dci1vVl1v5F29fyrL6w2
	 agZ9uiMIu6/fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3ED6C19F4F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414554278.31575.11281505376304353552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cb1666ab2a969e519dc8be4a85036ce196997d7737ec676405704f0e9feb65
Date: Fri, 26 Apr 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714145542
