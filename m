Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33698195811
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775824654; cv=none; b=DI8udOmYQHvH521g+SYzUIWu7rJHycNx21SpHbmBozOuwwz+zjMSinIs1Heq0RoylnSygAV/7BXSq0eF+/uSSr5TLytKnQqeOAlAMVl7WWJjBdpRBNNZUjBAtxK04Faawqh+sUFXs5Za8/5y21W65kf37YiOd/PV+nd//1rtJ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775824654; c=relaxed/simple;
	bh=F8Z1Ohg4VcnE/qnMqLuauupuYolflZEPUMQ2Sh54R2E=;
	h=To:Subject:From:Message-Id:Date; b=O9i2Zxq3srY/ivrL8urWXJews1RgPQnzFbzkYhO6kplH12L9IncDZpBCpP3Zj9/DSwLf0Miifjyo2X22+Jr8RICC4unPduhJXRXJZwnTOcrFG6b47IOl/E5GOFvSjBKFO8cJiFUKCVWQ6lt5Hvhn45J4hcU8nq0RBuZ0GYGCXG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+bG8Xfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+bG8Xfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8A8C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775824653;
	bh=F8Z1Ohg4VcnE/qnMqLuauupuYolflZEPUMQ2Sh54R2E=;
	h=To:Subject:From:Date:From;
	b=T+bG8XfiEb8+oCRj/GzM17q13a/Kb2Oegtz2MWp6e4FXaTK9elK6bJNC4doQlROLC
	 /p+pgNEt2Ax0M9TWVjIZZZQrPne0c6JI5j2l86hC4K+s49lIfc5d4XtYYWp93GbJjQ
	 k8ArX4KpGQI1eWfy7UbrzaNLpWT/ou9q46y1o6btlqk0iQyylDEPvOcvsqVwTFX01a
	 LFl047Zs9avpGx9iAwXLcs/p1JSt7KuRHD4DcfM8Y8NZmu0zQ32RWVf72XGSZ15XSN
	 dQzMwTPF1U3jUQzjJoJFxcCYMQsk2xQ9My/s1n8w/BOM9S68kU6S0nCWss0q+Cjlq5
	 4p7clObj2OO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD8EF44855
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582465369.29923.17300894276963907213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd10bd014974b01143ed48a2179f3ba6eebf0703dc8ab93a771b84f616cefba8
Date: Fri, 10 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775824653
