Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F6827FD72
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767001434; cv=none; b=b+PCbrghPYcJBnHFBl73lQyQrkEnZ1728OrLqCSob8UllJREJg3kb6yB6NflSoclJp07xLsJego6wtwOyvkZEzPFE53BOGRILPzvwSprARC4UUaX/AUfz/EOfTwsdVTxbvcuiAE1WeH8TL2U+h2o5xNTKj8pkcXVejjux7SsBqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767001434; c=relaxed/simple;
	bh=DJCVWKU9o1v/YxchDiufmGecMANKAtwRL/L7U7DCEFk=;
	h=To:Subject:From:Message-Id:Date; b=OJsEgAiNn995pJU5HhLzAq6PVB/Pm079++dRImL2m5W/dZISiRlUpG6utJ1e9hCpQPA7WTn0ba0Ij6NmYWfqA78PYyCxM86PUel9zSBBmeycE36kh/u/zpfpJ77/lWjCx0hbt3YQklheJ+o4PAG5b8RC7DMrz7BMr0KLGbHSvoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERCgiSw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERCgiSw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98B0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767001433;
	bh=DJCVWKU9o1v/YxchDiufmGecMANKAtwRL/L7U7DCEFk=;
	h=To:Subject:From:Date:From;
	b=ERCgiSw/e3vkmxChumgnFLHuOguif/YfO27+CYMoMcpy448PRG1Q2/VBxF6Y0NSa4
	 M13HfBAHyxoLG3PZmV95VlG+OgANS+FMuGgDrmiUr/9euIJrWsww0eY5ekpQeSc8vF
	 nc6QCyqxpJqC8sQ/8Wt7J7PKUiVYAVFbOpt9Cd/FEnpviXu3wcOaviRUj86eGBlhzs
	 kuPiybMLlDnHZf1BLXLJvhEpEF7PlvekoKINeuNSn+jpzvumGczBguhwfvjb5pBTx0
	 okRfTtJNEB2QnXTrjYE3x9HyhQPooiEFdo5E9FmqAddBq4fOX5c2G0N1tlrX3VqrNq
	 zYksjtWOCPWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0098E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700143364.6302.10621983163912555605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c725fe789cb8d11c7d99712e3192312c222e08735416ec3d3f73866263d58cca
Date: Mon, 29 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767001433
