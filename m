Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EE045000
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779758554; cv=none; b=TxoqJnEhBTZPaK54rrNtQGHla/4qgSHH6++oPiKHCjIPjeaISA3+bKzXImfKpEht6CQ6XnnOghQ1r6T5kNwdYmuiWurAjVrdxkeL17FDtBzCCRRNtSsYDo1orxlV/dIpQN7ALe0lOWr7equyBvPyFPvVKBYI4ZnRta14aLeLBLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779758554; c=relaxed/simple;
	bh=QQA4LQalCcZyXzkx9LPPXi4xVYVuarIk3o8WXnPtpE0=;
	h=To:Subject:From:Message-Id:Date; b=t5ysXwSIFc3DMQWaAsIQLL52p7sq/L3Romq9E26lcZ1HknElVkSPUz9Ro8ZckAsjr9b8JkcYgNSYq6L3Pnvf0/FnGSUZcv65FatKnEiEEUf07875AK0VjU1bEvEZCrx9TPUwlBcyCqvBfH28yepbJ4I8HJ+dcFVX/VKyhCQzvI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGqj/RZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGqj/RZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D14C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779758553;
	bh=QQA4LQalCcZyXzkx9LPPXi4xVYVuarIk3o8WXnPtpE0=;
	h=To:Subject:From:Date:From;
	b=KGqj/RZ7shOQD01ofYOaxdOrEZGY3IFgB9lWYVXJvsIqWtuTfm2J/pxoCgBodiV9z
	 PC/3nDhGg8A9R6ngnq4m5yjUB0lL9bBZtMY2dpqnbDXg9KtoGaDeQziWnqV9YJshCD
	 bMv+NvlBHOLEUuuEJyN1RmiOPfsGBNPtEYuoyEvVqPMqnEQQlKb6t/z5iBZx5CvQAS
	 n7b6BCcqgFVpNXlP3iuOL9F5HY+MGjY877vVdYA04e6IHLExaDuY37A7L9f6yweADw
	 E0VtqwFVnACL0875gLVk87QH4F96+gYmBcwT1Us0gGl+a4FMo7f6SgUTYt4dOCx6TV
	 XMu12dRpB2H0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B88CD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975855368.32510.644073239891565072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99584c6b0355b2cb5dc24046285c432c2ac29e943da6460b82c975bc47e83a1
Date: Tue, 26 May 2026 01:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779758553
