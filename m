Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCFF2C11E9
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762205393; cv=none; b=eQ9uFnuTPJgBEOq8MAiKQsnyrxywoRzJhsL3IaONuGIWsklWeYYSpRxJrdNoXcMKBndaLszT1oKLhSuqXe8iEg9i6+7xd/gefH3WEhLPAGv7hreGtqMzOFnx+e4n07NLhMc7D7hL55rfZbbI5wyE0DbxFTu03MOUbuU5/dhwMf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762205393; c=relaxed/simple;
	bh=fiND3a2nMU0xQpfyStxR+XG9CgbfatfAznroCsVtNcE=;
	h=To:Subject:From:Message-Id:Date; b=efl+fvZ5Zdyh3zKxsGktCiKvDzoGIUq3aC/gBm8jjhrPUYePDS0WVzbGZTn/D1Q5jICJ84qX813tA0yOWPyGDEm3EgtN0R0hZifdsV2scNeuu/+9U6zjDbDk+dllzdEfpeoEz0IGaX5Qh+S3HA2MvIWpsHX9yXlqbWl4RuufWxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P81Cto58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P81Cto58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F8C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762205393;
	bh=fiND3a2nMU0xQpfyStxR+XG9CgbfatfAznroCsVtNcE=;
	h=To:Subject:From:Date:From;
	b=P81Cto58/5rub72o1TM2kwFZvxd14Oqc1yX2K/6SZoJPaSvBBO4sRyK+ZyzH6Y6zI
	 jUCW/XpghW2S3ygXEzRJ6gcjiZIF2/2dexgCcYJD6uQ6o91XgWeHI755YbiaBKlvwn
	 3Lwqt5g9YL7nrW7Xf4Rse/mMC8/9vpC/4YWyydCp7edJegKi/tTUama4cvhFA7cWum
	 uEVoAYjD7b1FThY7tuOysJxvxdp/JcXpRrbEvmxHtD5OWV3ueopUBzae3sFQWAY2W0
	 ZyRwTO+2yPCkXf38JwOSf4GnWhNLgw/bwu31vZhd16+iBeylry6qs4sGOKaIT2+YK8
	 +PdT6sFOOXz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91778CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220539358.27193.4070634751826630906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702c6b29378aa786b9002bb0ca27362aa16c57c8e7aa0267beaea461d8f0aceb
Date: Mon, 03 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762205393
