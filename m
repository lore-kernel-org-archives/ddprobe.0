Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180BD15E5DC
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761116994; cv=none; b=mIbPl7mUiC/s/FCnrkdNhCAVwISoEbWN8bfbKyJt+1fmZ6qz4LZpbxdmYDEy9vmEB7Zn8FBzYeByU8DDA6yp0S1VkkiifpK3kmA18IpSXO4mHxnJDSJ6YrCY+5j0QcdeXMXAkJE6TltLriwurkP4wKRPhyFC+04bAkdaVhDY1VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761116994; c=relaxed/simple;
	bh=00giC+LfriVGZ0Kbp4+16u96iJdPGHnjG9lt9U76xUU=;
	h=To:Subject:From:Message-Id:Date; b=QAkhw59TfT0l/UmDJMQpE/bJz2Jd2S1wTnr9OBo9ZaE0EH9BZ6B8kUj6Du8PS1/OydfOGTTKCyboM+vsxa1DSyucZhMCDHWFAiLLERafBhrjX37bccgOwNYrSMQcUsS0VLaqvUPx+Oli9hnUrfMvaJxvXbeODQvc01vvPcwhbyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1ikPlAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1ikPlAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761116993;
	bh=00giC+LfriVGZ0Kbp4+16u96iJdPGHnjG9lt9U76xUU=;
	h=To:Subject:From:Date:From;
	b=t1ikPlAfRguztplDKU0cRRVlhFRinGIOR8TKNkhUv0L6Nls/mCwNIn6ySx93xPoF+
	 sZSM26W1ExTNclQ8g+3xVlHHxK2URu7epxFUDTNr2VUC46HFb98+i4zq5qEHXb1fmc
	 haEiyeJVsQewTl2zw0XNrssjGdWeDXP56k4ORFtvpXxGFmXYmq0lOqJATeAQrZbweW
	 EpYnFILYzoczAkrD/bejH2FP3255q+SnIzVGyG4+xGtrbovS/olXvu8bhLPZZgFDIM
	 0tcg0A9Wa5EsiO0dVyfUu6x7TReOOH1vDd6Ba6hKr6v4AIu3d98+2vdtnlGE9ccAUE
	 D/1US0ETgtwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A1CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111699358.12937.13854223350693387105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f49dbb13b5b46b0e5453534e67988ce440708281616b49699089b0b0502329
Date: Wed, 22 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761116993
