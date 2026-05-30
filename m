Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B90B1C5F11
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780171474; cv=none; b=S9SmFzM/Isu5Svz0sedrr/1G67H5t2pVv3o/0cFsn2XMeAO1+qrgSInMRdMVaRKBKsMHbvXxzM5UN7ebtIgiGl4Os5wozSEZGtWmzu4L2WA+D59iTiYHiSwIAAJgKLaM/EGAde/TD168STZvRfY7DygeMes1sSh01AS3kmKKl4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780171474; c=relaxed/simple;
	bh=vT3AVcOAfml3DiIkmhXAO7w/05KhjAyFBhpA1bnKhzk=;
	h=To:Subject:From:Message-Id:Date; b=f0CFa/dQi+J6JIfWA0I2L+3gli6//OxMnWXFrnOBn5U8kywgStJ8TbosEVNWqmi3gVHET36j+ZjheLPh0Y0Q2ExtFtEEQ+zJA3KFldiO2bAGSOS3USgEKkAxPhncBV+mLBIXtN0dD3yHyJqCfr2/L51nitVLUiboyULlE+Rli3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWL6+78U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWL6+78U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9834C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780171473;
	bh=vT3AVcOAfml3DiIkmhXAO7w/05KhjAyFBhpA1bnKhzk=;
	h=To:Subject:From:Date:From;
	b=tWL6+78Uvz7bxtqSwxvIQrtOj6YEv8EmzBr3FiLjG3wpO/vlf51YFbL8v2RW+b6S1
	 pk0vbuTfkbBngLO4lLone7nv6MQ8PpQr58m8rtH9pVV7t/2yOh6/ywT1HXIWWt+6dc
	 Kv1mZ0iMXPRNNfTYWe9FJP0v8oZ1fD+/DwbaeZdNFKM1/EbBAFC1f30Ku14Ek/xUao
	 /oR0jKZ2vjXxF7JyiyZIzrln//Ayh+qPVaCpfz3F0sq1didIoOzRuwVlciWXq29+gV
	 xWmb6njw8V/qztdQlDa3IKCOYTp75D+KO182kpGH1yeUbnSnp1Yok8dwbszI71WYSU
	 bd54yaFd9c/Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5D9CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017147370.3293.5691750064510672943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2d681bc784e12b0e7f6aeb5910873a969f232fd5434511a5d3c0d0a520875e
Date: Sat, 30 May 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780171473
