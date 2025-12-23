Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305F216DEB0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766520234; cv=none; b=Ccb5meLrt/BV68jzcgQs+cM61ZMGBBteTgIif/tt71jHkC1yqgER/rpnTOp5hMKKSiEM2/7Hqzy8q2FOsKtQM1TgBxk7Uhp1vR0IyG65/4TQM5Jneevik1W+QUBYecsAOV18Rt9gLtFLjSX2QO5TLMAj+n8XxrEE5liNRUo306I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766520234; c=relaxed/simple;
	bh=xjlp1+DQZwGB32AU43l0G6vHFebTLQe8mLtPTPtamHQ=;
	h=To:Subject:From:Message-Id:Date; b=rvG7sEGd4eDO1leXtbO0ZhaQEYgxj2vvUv54cCxhZer3thTRJM84h7wQ5Yj3uc+WadosKhhml5VkskHEmI9A9Uzr9z3K//xzDPRZP+F8nQ/Kb7OczD3h/pfiVq7CDC5g1zochIWS4RUG05ideapZwmX9BseDG2DQwMvyURodO3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3h/BBJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3h/BBJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC83C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766520233;
	bh=xjlp1+DQZwGB32AU43l0G6vHFebTLQe8mLtPTPtamHQ=;
	h=To:Subject:From:Date:From;
	b=K3h/BBJwZzLrvsb6iZA76ik2BVG5xjXc0xyYwUaPCakw/2eFLUT1gvGuI88EKSe5N
	 EyKYmSH35bdZEF8IsMZsEtMhN6yoXgS5gqkNsKU9AzaDJj08HRfSUeJjkFh48fMqBR
	 Th4T62IgCngBEr32dcF2cLwIrEcnjrHcoqWpTO3KrHprJPyUYsFTyIKuNmPiypkW2X
	 feBvxlKzsY6WkpbxemP0NQIPBNM/YK0GTASjMQN1yyTCY3pxJIpR2/sHHrLhpn/AYp
	 ngI51sWrjsPBqeMqaJdcRxdK1nq2f0BWCtPKZ+zHIlgqMWAJOPoV+AMFNdvR27VCz/
	 TcCrghdleXEDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBBCE6FE28
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652023360.29173.8723315014947039645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8194acea7ebb35f5dd30590856b8c7df49f6d831fcc48a21dc9131366bacc137
Date: Tue, 23 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766520233
