Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D8129D26E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781988394; cv=none; b=sdXpSEq1AxAJSjn7yAHK3NF1mWnawnJf3VvHGhQZcCaUuXu4sqi7keXIyKqGIffWDJQ4WB1WRy1lwZup9npXW3oVFQKgo3EHfI12uACIaNOu8XkRZzPVqxVqgebMnXJjJ80YXm3n4go8480OHLP2eC0f7L16E+a1/2PWmcBtxrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781988394; c=relaxed/simple;
	bh=3IQyrA5qjImSsZqUE/PRcrWHZbH/6doowvilP/+X4n8=;
	h=To:Subject:From:Message-Id:Date; b=NqCd3IQJjFTfvzCJhpzuzU6o5sCm2/GVHZiRCZUcCPeQd8J0W8zbRxsBw/h16NtBOg0KmpWOBE2U33jNMgFhvuZyn2o264unD/6Y1Wu5bv1Xfkbmns2EnfwjVZsnSnKLWZHpSP61hZSxGIrkKto3nkpvp7pWHd/JzD3PNNFcuAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXGFsQPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXGFsQPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE39EC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781988393;
	bh=3IQyrA5qjImSsZqUE/PRcrWHZbH/6doowvilP/+X4n8=;
	h=To:Subject:From:Date:From;
	b=pXGFsQPLyKF+Rgg6TwK2vtYjL2wRDg4Ds2u/MO2rFQ7teYxmqVqJcImdGfy72uPhC
	 Q85BQN8WxE3M82qoJZu79ttoaMnzgZPTw2mznrbx0SunNCCKrJsX7N15Rlavb8QKm8
	 k56ncQ5coejBKIWec96rWaqkofTJXxrBZsOWlqw0EBzIxA77KmBTlOlatEhp2iKg/T
	 nPA5uN3rg8/wl1nb7GtIGePJWgyHcs58TzOnXGI/qn25ThL82jdZlBSrnMRgURb/Q4
	 vLcaliGKZV3SWjlpVBeoU67hl519sy4SnLy5XJVTAExehh3pF+b519OT17/36VXkGz
	 oUjLI3dPFaFUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F79CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198839369.4471.12259440482282481575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf18c60343e6729a651b74072caec139434086cafb7f6219be4c985889262cbd
Date: Sat, 20 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781988393
