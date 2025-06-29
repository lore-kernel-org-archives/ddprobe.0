Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3050C2BAF9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751182794; cv=none; b=cBArUioHLi6rq9caZBrE/9TCTprii60gByRbGLHJ2GTcXTd2nu4DRX/VnR6dEigttGVBV9oeWgNJlV1FTwXU5STABrKtfIBOlFKPyNe88NclF+PAqBmcMD5ywKMuvn51cKOw/mUG1BluW0tsIdITsYIAxNW7QLX8dhozvpjR5fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751182794; c=relaxed/simple;
	bh=C6edJRgVSp7SK7+LGjtzhaaQRwdbg/cU3ZqeXAjx/bo=;
	h=To:Subject:From:Message-Id:Date; b=Q2JCtWocrn97TeDF2QGxzEX/IB8ybu4UncQ6liiwrqMCjyyw8IHbMl+UJdhJ96lKVpQZLm9HvjP6GIfV4xW0ab83DV2VkEaeqDgPnl8ntG4ytpVj+gYisc6MEZPvsBU1dZ/bFYYfoVWxo1G6ZmwAtBFxV/0Eb0TDjZjnhNVNvfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQajKRtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQajKRtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F4DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751182793;
	bh=C6edJRgVSp7SK7+LGjtzhaaQRwdbg/cU3ZqeXAjx/bo=;
	h=To:Subject:From:Date:From;
	b=jQajKRtdQDgUny/R2r0Euk4yY6cR+XKMCGld2zgfyagCc301csI0pUy6VErLO5Kow
	 5G0cvfiIp5yjj2dCDFviwPuR9c1jW7W+wAqaM1CDQqWICKGSiW8LDJVpPM0XQUxFB+
	 GiVmePyRtapQPT+HrSHk3aozeHR6Y+qaRQdAuchDCbb2yfZZRwAhCqIlX2nhdT2mBM
	 Map7IWxvuvDKDlMUA3A6kK7TeNcK7+XvbyntV6X8Smlqhd/WlzvzNsHdPxGkm74UI+
	 fbvQqgPR9zfhitTeOGg3rlYKzq+4JRIUlNA62Rw5tEKLb5nNxrnUuufiR1fqclvoRi
	 KGScXnjmtb3Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93877C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118279358.30503.13549314123148231972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2baada6958cc34602158a0bee052ed56f5381366102ee7444594a3de35b00d89
Date: Sun, 29 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751182793
