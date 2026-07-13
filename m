Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D0938C412
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783981714; cv=none; b=eea9esYBy3yV9MXpKgnUMm4o2V4H8PKqjFrQVwqM1cUux51uosW/xl96nBemmwUw5nNu4Li5nPa6ZREi0S0mflofUZ2/kr0Pm6BtPM/6mVgQWlkD305WeAENKHtt0lN130pV+3+KeTOSlMY6IC+UUL+ioGHbdsY/JVAK1BWAmJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783981714; c=relaxed/simple;
	bh=rRla4H+AZqGm+4+ypsJjAL8mZasDfMexekUCdb+rk7M=;
	h=To:Subject:From:Message-Id:Date; b=HZo7bduhLofBT3Zrkzlk9xOvX/8EV7+b9mV+KVaicdW5cs3AF/3LUZW5DqWkic/auPyy3XTr6OTqavgxlSIwAqW6U0vorQiZ+5eY3lOFgAQTh1AW/yhGS+y+BuZ2IBr9RUDepFmTYtdoTAk8IChJ2FBBMMUA3OmabdsPbmMuKKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAD0INvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAD0INvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C1EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783981713;
	bh=rRla4H+AZqGm+4+ypsJjAL8mZasDfMexekUCdb+rk7M=;
	h=To:Subject:From:Date:From;
	b=mAD0INvi5fRD9gRASnE8pdcfrBMV9h8pbzrF9ti4TJiRWyGYFPUVeBcMZb2hKr6Vv
	 7g856kcdE4dloQRXHzyVQSgkPSfsI6+UpN+J0Jyh2r374fa7DtIyFZX8M7T+87A50f
	 oXiFjJMQPpfwSZFaF7aJTWgPiz/OmhOb5A3J7Yz66cCBeX1DIa0dqjkFU4r886n9Kp
	 iQzAWP4ToCuPZwgfy7t3XEma3942wM6JEJ9bTD2UTTy93DybxNi68YIn2OFtn2gjAA
	 b9TiVY213tjLmoDJ/ajM31M6gag7oLPzhf+qBaxA29sEv8lsiQfm2wddfXby2RcDFb
	 tddTB+KE4B4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BC7C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398171369.12361.2526259692054557664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086bc73d7f49ebb77e86b07031122668ebae0b695d1e403ceab779ed1e31f4ce
Date: Mon, 13 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783981713
