Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2586E2264A9
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776905854; cv=none; b=evZ5+2repNqAtb/8zbIsxev9XHc37Kzqwa5E7HUctWMnqW5K//0mTMxLOuGJWGj9jBtMjDEOA3+DfxZgCpx4zk4QeL0b5Ys9Z2b183mctkxhj9tpa5k8xAZ233YPTHjZad0vkqgeusWjO9mo1ceV0LaWrif9yRWB3DDV79lpfJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776905854; c=relaxed/simple;
	bh=AO7hignAkD4MPia2rSUkJOgfX/NZ/24BmUO+PA49Mbw=;
	h=To:Subject:From:Message-Id:Date; b=Mq/+h4nMCTucp8FNrNSXvjuR1wanCkC+nZwe2JGUj4IN4uL0PP6Q3Ji2FQHnv12OOHYRL6AQ+JQ9ewi0FT33dExiToOZtrX+YcsIooFv1kshzk059Qi783Wzpbqmb15fIwgkte5orQQ4/9p4fXQ7oxNz0ZcixupLu8Oa7fiepOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EojB0pUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EojB0pUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE29FC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776905853;
	bh=AO7hignAkD4MPia2rSUkJOgfX/NZ/24BmUO+PA49Mbw=;
	h=To:Subject:From:Date:From;
	b=EojB0pUBA13whwm+5WwIBBNAzHiWqjAF2M0CIHJamKepGXXd5NBQ/Bo+lXnSCniZy
	 5s+yg26oDmd/dME+kkm7mGGDnXLwy273Z5UOtoDxQDpYTzajQROFIklBF0jXnvZ3OW
	 nQWWT35vrD6Z4jKXNfZld6iwX+d7qjPpOhRV7wRx8oMaQWk4OKyFlOb2skY968mOlI
	 jb6LCDTuw9TPt0tC6wdZLLFbUEgm5Zmoy2i+luqjB0S+nQv9o50V/MD7hMPbOGjLYm
	 vcBxeCxMJx2oSFDYj2qB8R+5+UWXkJTFogDCARTlENM2V+4063NQYoBCkxoj/3z/gJ
	 eSlNZYayA/fkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2BDFAD3E6
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690585368.21252.14433601427176793238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c4916bf8947c94187739da73d78f62a412bf8a01db3f465a8cc3266bd10ca1
Date: Thu, 23 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776905853
