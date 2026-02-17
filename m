Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE6B26FA5B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771315494; cv=none; b=QagcbidaESZb/EWuWCpZU/nsJpmF7WMXAr6fc+hzGduVbz7DSbCGC3KtWm8RqjP+0lmARUjI2De3sUcY8MPh16huwiBweFiqZlDhpNXwjgeud7GTvxX30HZ1gCbXkKr2vhQ7TBmHNAu496Qfsi6cCPHZjQCZRHPPwpin1vLOmsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771315494; c=relaxed/simple;
	bh=gkEYn5h9kthw8+7wjMSL7ldtmUwUwcPXCAU+6X8eXuA=;
	h=To:Subject:From:Message-Id:Date; b=HOIi5JEWmQZGOjmdyVr3RbjEYJzqv9oH9JtLbgGesY9Itof4UVY+0Ihx5JjW0gux+wAbsFfJTm61K5ewhSLbBMwVgZWNT/zyFTmqchCewbaEWqowqb18vXcw8GF8Sjl7UtpEM70rMHt8fSj6rRmdsWNvYLPWZa3HaFTFCKIQh7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp8iWPC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp8iWPC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76E9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771315493;
	bh=gkEYn5h9kthw8+7wjMSL7ldtmUwUwcPXCAU+6X8eXuA=;
	h=To:Subject:From:Date:From;
	b=Vp8iWPC2DnBvB0ebPmYysN4e8A1v9H6x2eRbTD1Gjd76XsgToAhxX86E+iOUT1dez
	 FEgQbrn29mi3dfKS2io+i0J+cIrULHkymXNjyzLUL4FsyLHu7v9daoycV4SkROVi9k
	 Ztt6U9QazI7Sexmuxf6g33orolICwVnV0ZEw7TonFEY3riIz+VlVj8RrK4yY2isR4I
	 rhRUV8T+fYtqDdKbxdkEhr1vHncVkbTLD9930+6iCF7nKf1/REAXDRsUH4Gu1RZ6qg
	 AAKfl8JrKMncrxz6430NxkI93+fFc/4cIsZcVeEVWJR1Gz7q4F1mSDFfAH/kAjVAi+
	 KYrc5Ycup2qkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C56E63F2C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131549358.12194.1498479072081997411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318ae4d9c507d0eeb2177042ac6151333e4e747cf25b2c5376b860fa2fd5c683
Date: Tue, 17 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771315493
