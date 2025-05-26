Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD661C84CD
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748239194; cv=none; b=FPuuq9pTFjBmfzvh8bXEYQZaZ9oH+Ay1c4fq6UhatTxPFqA5mNsC8xWz6BEPMXlg6feL/gmgNsw/EdxhwbgWMfIBPLnoFezH4zxOmF/A13F/g1s+7bNF1wn0Kid/t2gJQi2DuSkzzhwMx98HlzMoB683UBs0ryaNgLpTbKDGbOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748239194; c=relaxed/simple;
	bh=z+TYs7oMKUIajIW5tAQa5szb1k6e/54wvk3EEZhyF3E=;
	h=To:Subject:From:Message-Id:Date; b=qt6BtUKq9rNksCJXCoFW9oHwk2XJVdOnUj+O4vAX9fs+9cRnGk3tim9I1gwschWHb9xvU/92MlXttCL4ty2NLjwEchLG57amjCiD31h6dN/lZBfJWTKTcHs53Tdkvg0XMMRGCPtv6NLrKp+GIZo0//afOopnUs6GuXO2MLoG8e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cncd14dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cncd14dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C84C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748239193;
	bh=z+TYs7oMKUIajIW5tAQa5szb1k6e/54wvk3EEZhyF3E=;
	h=To:Subject:From:Date:From;
	b=cncd14djkFhNkcDoGzgPLM3zQsYe8o51lVJAVYtqfPUxyHZ3Bq5/D/gnkKITUGVXP
	 mDEJtD2RNiIH2WIx9ITwseLft2tV3o8VpyK+d54WHbGpPz4Jhlf2Z2aQkGzlf8mHSR
	 3lnLVubR9Vum4LUVXPydnPcBDRQPWTZ1DjT2RTbS+IAMW305IUTyriuVm04MK55WLJ
	 easgTog/Miwcv89KClfpe5lzX8YzK/2NsX7xlAd6pq9/L2zya9WpwJWjCkPHryZBIs
	 cGcY+LXts/NIi5loMIXjHoi+/9g47MabRTQ7XPvLzgroJ5uaQoMaN404PzCUG19wl1
	 qV0xWqVEB6XHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E1C54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823919358.32030.7879242637507764234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f79c4e57dc27b7c79befe7e629ddfcd7853391e4fc699e099f92687d0ec7fe
Date: Mon, 26 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748239193
