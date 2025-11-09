Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B3BA944
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762680594; cv=none; b=Y+Gq6pcgjCef+E2olNVvTxtEaVC8ab6Yc0cJMkXLmvV0F0eS4UB0MJoXvnKM+lDYhBZjSd6+BNPX1RltYAxuFdp+7tPEAFN+aSI03PYsOCCDuBAo+Z24KugADjv6i9I29YkdoaXvVG/fQ6L9Q/E005j2Z+UWKEAVzDYSSog7tHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762680594; c=relaxed/simple;
	bh=84vOY1HT5+JRZZft7Fr5UA1ayOFUlrhg2YkHVjxTetE=;
	h=To:Subject:From:Message-Id:Date; b=OkHz7cJ1ZGaQBdA/u4Y59eJ0kuuqTEjfLvR2XMcD3MeLy/fwchYrToaD0Ydqxx2KGGQ2GiOeYX0mjHwIlKztioYq0hSBotuC6cd1mAfZu6/7RzUhTcYXWakbGzu0TCGrkH+p6q0Og30I++UBUAc6A0Ye9XNk5sh19AmFut9N3/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qld0ZYdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qld0ZYdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C6EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762680593;
	bh=84vOY1HT5+JRZZft7Fr5UA1ayOFUlrhg2YkHVjxTetE=;
	h=To:Subject:From:Date:From;
	b=qld0ZYdDFptmFuD44EZrt+Dux2XsRK05W2ULtm6VeaOOsn9889d9RochyjbGadahW
	 51wClWWnTqheHWwILvjN81UKOnWnGi4/FY4flvjIXMmcAmsbT4OvT1C80LW8jcHINK
	 tfG8pFMhBluzlrdQPsvUSH2I6ktvtVpapi2IBVsEjkYoilNVqHjnLWlDrTprKfLuzg
	 HCpO8FJajddXSzpV03B3Gmsv3Ba3CGZKOoBLbbYz3LLtF5FvuwdqnE2vceKtZYy8j4
	 1n+HyY9CfKGIKbVswmoEPIq6KG9LmZBnvhruid5+0hP/uHPQxU2Owcyd/tjvcCAnO/
	 DbSvkAR3X40Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96203CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268059359.10113.5893727541693765796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c3a12489e27075327ef45015da054170ed03175ac11655a655f1756f3a3b4b
Date: Sun, 09 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762680593
