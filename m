Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CF3146D62
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712167097; cv=none; b=q5mxtG77JrszCQU7Eo4BfcVXu3PLQA8FiwZLpSyDwdELzbzZUJPGz9tasbr5SkzcoKWAJLeQoSL8Ie2L3vjpQmq21zpMgyRjP3L4miclc4xp0xxWEfMYYilkMAjWXauKPIHPUGknGtFxRsJsBGl5xPR8yIBrkbTCT2gzaeF2AkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712167097; c=relaxed/simple;
	bh=uabmhr9b6uVRTucXqdpu3GL3YHEirdUB+vkJ9D+ZF40=;
	h=To:Subject:From:Message-Id:Date; b=QMPYDD1EtZf0q8DM1gMZpI1+AsCdZnB0LQIOQoD20Ptvsx1ui9C0/68QSIjk9DKSImPKz1OQBraMQkEi/WbmEOXAw13mV9GEC9Sv5ZJUPCNlGa8zQJaKsWU5dFT5ys9rcX/hPurKLv5rYq+VeEQYm5IuCPhXNQXnU8e7AhvXCcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn+MQbt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn+MQbt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 752DFC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712167096;
	bh=uabmhr9b6uVRTucXqdpu3GL3YHEirdUB+vkJ9D+ZF40=;
	h=To:Subject:From:Date:From;
	b=Cn+MQbt/CNhksWP0d5QMJysB8OKa0Yd6BoDQRmib6XcM+l/ACoZNzgalH2d3T1JTF
	 mz52sNFLfbZoZZ7JDFSEW+kJ2RQ6OTz7iFaIRytksizYjrmimPTMQwyvykbAgW56Xs
	 q/frvM0S7KzIWkH+S5fBlDBjoV3CePYeACjY4I84Vvo1NUCbqH/5ZHRHj8YUftDtBy
	 vD8jzvviMy/bdxUVKfoiudZ6G02yDjC+eVVC3BWl+KT0HLM+mDiSrzVWMpuUgg3vjt
	 73Uo7cgnvYIVewbJyQU63BRcfbZNDlXCybSWXJKVD+w7T+Ye2C6oCLK0Nsq84FAWAm
	 5+6NPKtU5Q+ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66698CD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171216709638.29987.729293346983023952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968bccc4a4edcdfedf29bbccd39ddd72eb96af442551bfc98ddb8f63692d058c
Date: Wed, 03 Apr 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712167096
