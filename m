Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E8E33507C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771453494; cv=none; b=rToKVRO9bMtrYI92DDs8s/8ynwgDiiOxmVXqLgGW6ERnKoejSCuldSdpc+YHC8gmu4dQgtBTv451b7IoSjTKsoTDJpnwzG1MRe+ucj1bVYcljeSnwzx98tqVWfUWox2slY/886paxuOQy64NgaCW/AIVVlolFKpWgw0Wp69SIa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771453494; c=relaxed/simple;
	bh=FSGebdjQMD3UgZxGSbYnk2kz4gXwPpGzQaFc0M27Wz8=;
	h=To:Subject:From:Message-Id:Date; b=EKpQO6TQ3wKF2eKcN5T4R+a5G+RcUfpG9zp37qrJHppZDko27YRGoUNT/g/skULNyULkkBNkgzuZDqY/lWbVgz8hcOr5Vts7TtucqonvW9pXgcj8FwjFWfreC8f6gXz5Cmd9XL254hxJNwm3KBiLfOUXiGcdzm2Je3qaldiXZSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRndRogF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRndRogF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0DDC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771453493;
	bh=FSGebdjQMD3UgZxGSbYnk2kz4gXwPpGzQaFc0M27Wz8=;
	h=To:Subject:From:Date:From;
	b=oRndRogF23bya/hZfUz0W7ncyc8EFbMGu/1goIS3CHSVX3s4MNqy/I/X1C2/7cm5+
	 yG6hWGdMgSdX/00XaJ58/lWcoX8mXCPpd4UJcB0mtfu7ZsvPrZbYm9rscM2Pw4UwgU
	 xvk5paDUVmxGoBm6HyUojuFQZT625Jx0Bn3dPU2LhKjE5g7i2zEG6mz14CFCiKcN2n
	 r7FVlp1pbnamK2MjXtRkCI1/aTtLVwPaCNre32P0tdn8vMpNjj6ei0t4FewxQQjsag
	 PTbcLz7ztrgH6Emlg36NWdVCh++MGK0GDy4ZCzAf9ZS4GM2Qak++0EgMxeLedpn2xP
	 psZIJNUDQ4H8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98893E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145349361.24962.10477246121206308197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fda7b2aaea37d302f06bd57f76a51298d86eeee0fb26f64932a539d5eae7919
Date: Wed, 18 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771453493
