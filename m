Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BD7221557
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754468394; cv=none; b=YXge/yLyc05m/adEUfMWtISK3aLmeeMB9oFPhoD+WmXOt28y7Ido0y21ioYs1DRctr5iue/hg+eF+IynBj4v+VyrOL+mXB/DvBegqH/gpH286Hok9bw8DMGCNpQL+7441SiA/YeFdUr2Jg1TB8Xdxpwvfuh6a5XWSZCEJBrsgsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754468394; c=relaxed/simple;
	bh=sGBH6ulGtv4Bgi8O52WGrYY13UU31MoGuhVSo/JXMJA=;
	h=To:Subject:From:Message-Id:Date; b=JNwcB+r7f85DLmg+OS1vz+tREgVn9d3sYfY+yJN800pl1BsPVIk3wnKXAY1Ia7nJkDvdmYjcDumvlU8YSohxz1qvobVhBi11jXlTq7wiM0JvVEEBmyRT2xhP320uFxdXJJjofmtDh8qktiJqwD6e1F/eelmNA1WO9eidPRX4ClM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMm6PjLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMm6PjLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62B4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754468393;
	bh=sGBH6ulGtv4Bgi8O52WGrYY13UU31MoGuhVSo/JXMJA=;
	h=To:Subject:From:Date:From;
	b=EMm6PjLi3wO/1rJ5a9CNH+Fs8wbVDg8d5Qm7h3ttm/F/8BNwALn8r+1LJ+zFFZ0FJ
	 eoUyHb/Sd9MOFezs1fCCKFUqQBgiaLv2RvcRcJXpb0+xLRidMtIYwnW8k+nkshKDki
	 kKkQCRU1X7c50iZFIGgb3rfU4QdBsjzc8Hnu6PtGqoLVLoKJlqaa/SyfV4dsR2MdHZ
	 4cF2arJAQ/U3gMcvrs8qfw0CxSiBtgfaFgxBKevvB9kj9mKP2p08jqM83+eYaMiSR9
	 hJi928DBjKkwIYc1+tNqkRFKlsGIPSxZZni6I86pWvOEUayPW2NvEABl/Pl03SFKeF
	 qQtIEA785xMXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E1C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446839360.13636.10369655023051322255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da35fdfeca81045c3cf11e88f19f6eb2fa0e7a1c65c6acc53dea3356ddc8a125
Date: Wed, 06 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754468393
