Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1F428F1
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751265594; cv=none; b=lVlKT5FQsK3SG6f+3HtojOxGc3RvcLA4CKxIDb8GvYloGIgOdpy/e7fKFiTzN4E+zxL45qeGDpBCvvk5ovYXWq6LE6IFjHR/4R1+62ba92vebeq1R1PG5/aa9gsDvIhLBLARvJJd93z26Kush989rRxQRkcvOk6PigAN4mR92go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751265594; c=relaxed/simple;
	bh=/xb2zGdb828vDKKoX2einGq/zEgOFdFMeWaOSinAp5c=;
	h=To:Subject:From:Message-Id:Date; b=PlXymAa53wj6wt+5ml+G7OfFDDgBfbmcqsgPINOZHE+oiZ1YcdIaTJgeitdTZuYGp/3fyRzDS/Xn121PsqbCbhCpWD56vbx6qJTI3MlBH0poH46tx9+YDFFTbjmr5y7AHxvo9GVtXrv723wbqNDXvXt8nyuy+KezmGKTEtLTA1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItF+RIGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItF+RIGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B332AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751265593;
	bh=/xb2zGdb828vDKKoX2einGq/zEgOFdFMeWaOSinAp5c=;
	h=To:Subject:From:Date:From;
	b=ItF+RIGPtP+zwpQesF+SpGocHGUflEi/PtwYqjQEhX7dXqy0Xg9IusZh5GWGYoZcM
	 BDTP6VgmhX9aDS57JffuSfHnI1n/LQG/whIDsW6eALGpRZhENEhuQNuc7TnpKQRq8Y
	 1ejOlHVBNyIe10XfAe33Ov82zF7guLDP1yz/vWTp2Xaz//ER9pTzTbLA+E+s1vlzrC
	 SSYtrsjzd3WBIUv2Ni/AF9uiTxmEXwdTRQabKOMUIuCYINMznuq1GO2aVeX4J27ls4
	 TEmx88rElXdjuoUrjPWmhSKquJRnz5IxtoL6tr9+dQxGTF9M9GfJoUNoaXDZDUdaaa
	 nXxyk4IqWMYuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD05C7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126559364.1820.16635558477597019896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6703253d4520d2111baa46150c6af409d983c42aea5aa216a7b17a6212426a63
Date: Mon, 30 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751265593
