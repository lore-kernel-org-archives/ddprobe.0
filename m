Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1783D2C0296
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786605634; cv=none; b=lsFlHc7+WZoQaEZnF73C5ycEKfttt3BoPSdXGjhwb6/5L2A4Fo6Sq0AsUpvyuGM0UVgFbl8XxiDMcSW56NMrGAQ65um33ocAjGf4HQD7e75nazMPvTPohCIA8idpaZvmFtd5EM1aoB4Rv80j8TXHksq50kIPPPexrxBFe0cniF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786605634; c=relaxed/simple;
	bh=j9A3j2KUgbbscgE2CFTTiZkV3HQ1px5dKiEX/XKATJ8=;
	h=To:Subject:From:Message-Id:Date; b=SlnSpcYKVmVeeL8qBYlLZz8H2EkQxjQEVzyTD+ZZ35w/uyxFmU5H1d+jzSp4QwGN92uh61v2NZODCPmA/AgyTwa6MxVAmOSvC+sDFaVCfOg7/3BYRva3AXKvsUt8+hllFtNYpjWqjGGQH3kSVa2UhohNeSRHEZicoUibYXKGsK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF4ZED/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF4ZED/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFEBC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786605633;
	bh=j9A3j2KUgbbscgE2CFTTiZkV3HQ1px5dKiEX/XKATJ8=;
	h=To:Subject:From:Date:From;
	b=iF4ZED/2prpuzJnK9Q5u5sODHOnwzYTa1T3t+glRn0NVSFxyo94EntaTNGsnFvSEn
	 k4sOOIh/B1YqzKY/MLiGFtCWkpzHIuSz1rNG6jUZMG6etIVFHBoS2Ni11flei/nOdY
	 5UNakOlx+3eul3TmlqquS/g9jJrvnxbb4r1u8LqqQQnOxDpjwopf8HlO7s8S8kDU73
	 cFmKNFlx2oF+/pIbBnOVuUc1EjO7eSh8lootCemPELNXBF+soXeGJ9ktyoTpU7Qrkq
	 tQ+vAM7nG8++8qa3U1Eiq/ZI4DUUvw4yu+qu7qzd0lPKHPcwTI+cXLS+VkH8OFVAQW
	 dCMl839IwMnag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E2BC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660563368.1046.441579272918471556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f7170e4038dd8f83b3aad013cee8fa993974c9e8bce6fe2600566dd7aba008
Date: Thu, 13 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786605633
