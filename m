Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED24409114
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789159834; cv=none; b=uA8x/DV1Ez986HeicisFDONBFy8RGYzbjTSYy70IC+QuECn9sY28qSsBQJgxMoPtfKXVsl+twTLqzVG7zwGJqTG4yeSm2axkX7gD+uijOslZkMzNXg/Eqjx2CCyDdjOuTfwUqJ7n1kWEo8JM8d0EaE5oTBs/YXtNdQ+lopl3gvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789159834; c=relaxed/simple;
	bh=rfV59qFUYQTvOxnNn3hpQxevsyhzxHcS8c8pCkt2228=;
	h=To:Subject:From:Message-Id:Date; b=KqbUnSCn+IZnpE2YbqkkQR3gMx/aoRSlURxKka1Wyz68+tlGMjAw7zvyhkMZUFZ9Eolad9rcnoFqafrgALUZLnOiXCfNz/scSzOFZ/+A4XiYZIUKZDniYexyqDSUGjp0VCk3dAe3LW7adI6Cta9HULkc+9cTCqUJDjpBOjK/Abg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lrcg83N7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lrcg83N7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11D4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789159833;
	bh=rfV59qFUYQTvOxnNn3hpQxevsyhzxHcS8c8pCkt2228=;
	h=To:Subject:From:Date:From;
	b=Lrcg83N71QaBBdBTWhcGu0O223xP8vvMiGd/kADqueWAsiSg7VLnS4RSdW2dAx7VS
	 phLeK/savu7EYNDKtmyLZbHZZHC5e4DmafGvzD4Fz60ldbpZS3hU0Agtg1NOhDVhvi
	 u5Ds2wGB8FllZdLTWfq+lN9PuT8LV6JIbnJiwGE3Lgeg87R/NXTc2NgODVfStcjX4D
	 YlzYsDrbAEK2Ak28cAXDNiWmyI74IgngAoo0M5oecmEHHgmXTz2JYDscJbEMDsX7gc
	 ZMfJaXSKXL7f4W/IxcSHN/OiSonNIawmTlu76F9yLY3MyiQ8tnassKk5wkMomNCX+g
	 +awJ063FxrA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4A9C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915983369.22399.8467518381274502648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10912d6604666464f64a9ac61efcbcbb834f6ea24cbeb1d3a3b48f6c8a04cd03
Date: Fri, 11 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789159833
