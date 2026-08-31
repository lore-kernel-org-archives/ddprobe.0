Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D9D36E484
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788213034; cv=none; b=tGsxgmMxMz2P9ERmP0//Ugkro/I6amw50SNmGBfd2ohcI6M0mI+yqm3j4+5x8q0CZw5wvCfi4hMLWZ6ZONWWjniUmp0mazsTknBfhAzzAuxRtq6ue6tK+crOPMIv4WKEywa/HUNQgUstg5YzgdGb960iwsFXVg8I0TpfLbvjua8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788213034; c=relaxed/simple;
	bh=vyWA+RgK+TEOlW3PJZVXuft5Yz5nRV2BuIZlOC8lzfE=;
	h=To:Subject:From:Message-Id:Date; b=tYG4+DF/ugiLm66XvxochSNsmOcSV+mJYFwgi8thWOkEZ008b7u0ldCkaH+e3GB9KSvq8fbfBiQ/5APqJFRdMgetel0L9IxGyerxUcffNDYKMOBPnRWbcXBMexb0j04QuQjXv30uQS4i3vZB9uWniaksp5W79AmpoCOKCtbEBwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOWvWXaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOWvWXaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2E6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788213033;
	bh=vyWA+RgK+TEOlW3PJZVXuft5Yz5nRV2BuIZlOC8lzfE=;
	h=To:Subject:From:Date:From;
	b=KOWvWXaA8i2N4BLqAdU/wmTWjMloIO3b3kqySFyasKeT+HBPtOEenz9hdqDm7/hWX
	 7b49Y+zgEaWN3GZLdf3q2rbq0uV0SI7Rrau16MFT5cNPS5WLsNhpRHh4Hpa56kr1kQ
	 A629nqu45hyBlZ3ZwoCsFwIE+uGfxwdJ7YwshVP0pnYYEF/7s03nhXKapWDdy+7Ymj
	 uaM8jFA/iwi82JYna68K7HEHyFpz1Rbh19hYo4J8YAcOAdagg5BJPKSm2W2Iw8adL3
	 VHRkdkmAefUSebPJu8XBiCHX8dJBsxDisOgX5JapxLkVRiMO9aNxf7Buvz4RdQH7lp
	 bv4ZVIJqFQXtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E1C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821303368.23222.16840898859654873762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b2b17d8ba0adf9e0d75c9b0a6ad44fed84e6e3b090619b9492939a7d508621
Date: Mon, 31 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788213033
