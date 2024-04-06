Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEF418C1F
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712441897; cv=none; b=S4NE3bx/5vZHyCyxjnF3GJ5lT2tADEuFhtf4kWkvdLl5ETKmdiTVDEGRGHiLjjD7XiOmsKyWQXh06cATOnMTn3D06MEo8P232pFsXhFOhJQa88waSllLyU4BKGaTsvxKG5ogo4/Mo4NQ1YsgfFCXjA/hAJQtr3ozpv3zQDED5pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712441897; c=relaxed/simple;
	bh=nioqJtgXvn7e5XJJzGA44vYn68ZEMZJRzg4SuCBl7RM=;
	h=To:Subject:From:Message-Id:Date; b=RZvaCnXcxHULXy+q1DOfeAWuxyM4N7N2eRRHQAQ6TpnSNBBWFOtk7rMHWmzlN9RitF4FcUMl5ADXHkqCa8MvxsuqqBUk5ee6zicHu3tmsz92s1WiAvrRqZnfgUWHuvI5CTlaqIBih0F3BDYOKU2l5SkEBpJBtZksrzhRlRDTn8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSX716WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSX716WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78282C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712441896;
	bh=nioqJtgXvn7e5XJJzGA44vYn68ZEMZJRzg4SuCBl7RM=;
	h=To:Subject:From:Date:From;
	b=NSX716WIZ/PXyLXDop2axzPe+3lzycOYKEZXWKd7xqY+04vec4TRmjFwXWXvAbG2k
	 oxL5t8W4IosRzvElsmAqI07AI/NmrQ667V4vNsMQqPtrWcl7jnV/VghSZz8wJkwND1
	 Sq1tmD3ZFxN7wEO/u5tq4cC5VUyGqzC8Tkf8Ijyeo+5VpwHtJLtGa75D0IW3lXi1km
	 mF+2mjuMSUYsaYNw3BCiOAw4KKrh8H1TUDBOR5szHEW1yk0rSIavRRi8EHfxpBYQNq
	 YmeITQDcrQ46cHTMm+MMJSfdw3vzTSOUiU+LDBTKuBkRGbTNPGZ/GK0sSJRuxD3aWl
	 ES1Hk1JeyaaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECE9C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244189636.1227.17336451760581328104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7571e1a542b1ff89c6ee8e0358d800a41fed192e17988b6e7568117f4fac6080
Date: Sat, 06 Apr 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712441896
