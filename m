Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4477D1362
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749428395; cv=none; b=mFU7A8FW8yEFAcQoTPiQVyu26dWnGrKuAPttK5r5JKvXDrkDss86d9ym/t7OnCQ16e1+RF3wZsgvHq5uiH95aqe87FwGPxBbmnOSpY0/O5YXxLMSzUfR1zwYxfxwb5xPIm4qeEPFg1dK5dmgYUADA8+fc5gqIth6iI1p/4Rxmvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749428395; c=relaxed/simple;
	bh=sQJbdYLYVPM2NN7y3C7Cwdnn6kYuPQ8up/48oyKmVZY=;
	h=To:Subject:From:Message-Id:Date; b=hXeRRz7M4EsYHft7Az1Av0aXzq8/PQGI6F/Z2X5vAumqGlGKiFVbkTO4M8mep3Ru2EgY1iUjW9g/8/IaSlen1Gvc1OMMeSg86iKLvg8YyjfMrxrWlgSAetQuIpC+0pmcgPYKQyhkBytAzpaGp4CG2QAnPXR3+6t5wQ4QkY6O10A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4B82/3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4B82/3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46B9C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749428394;
	bh=sQJbdYLYVPM2NN7y3C7Cwdnn6kYuPQ8up/48oyKmVZY=;
	h=To:Subject:From:Date:From;
	b=i4B82/3FlMxRkL5nmKdx2OfNesyi7VS69EjnS7DydcE/OmEGwBTblUA+FwldcDIg1
	 A0gz6vb2lykTAQHmL7tACgyVj5ZoZUTjxnrqCojlrExL5TX5dih8NxSdK2rEU7RvMq
	 ZADvihP4FHcIWexlTejMhPyAxq2rKx4++h3LXQ6REKlC+5jJQT0giI/qHGczHDE6ER
	 oR2pazZn04A06HYP9O7p06R+q5+SNzMKGsBJEdX6PTyEbsfdQSfWgOi/s5r7/QRE+7
	 +InNBLq92MB/y7H9pyxc/uC+wew4W8JLpg6fXiLAJXHF0T9Socco/mF5oL2TKFZ3OU
	 AEtIsSUjfB5gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD26C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942839358.12969.17259531597129896631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476a51452e8231f375e905ab9e67a4fed15b8b300acb5b8a433a2d790f94aefc
Date: Mon, 09 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749428393
