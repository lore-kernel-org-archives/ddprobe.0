Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5302C2AD0C
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792321834; cv=none; b=WAJkSiHn9e9PNjxWkcnlP8+BrhMhq6vfGwqrr6He2DeUCB9GYkAu9Q6XjzttHlJZDaXTsresDUgtbEV+oNteRqTwp5awa8DK5aZEiQNuaS32IBQjqX8Z4cwMzFNpX4U0Q/2AadSC4Sksd190CC7d0hIsNy+3E+cVC9JhojC9ILA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792321834; c=relaxed/simple;
	bh=UpIGlebxubXzg4TpkgQ+y8nLcK5exRuHLcRPe1zBtDg=;
	h=To:Subject:From:Message-Id:Date; b=IP6EwX2IjhN3IWA2Fza6ql81o/bCURyvfLlJEvdFicW5X4Z4WQzItaKJTnFPsftoFa8DVxFJhM9zRP44YI8+ZYarH2KqCCjT9DFfkGDvgq7Gp4I7OjG7VN1EmdUEOUgaQtx9iBRobjt0aNOec/b+ksR+iI/Rl31Wpgbm75EBKEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X674nx4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X674nx4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A84C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792321833;
	bh=UpIGlebxubXzg4TpkgQ+y8nLcK5exRuHLcRPe1zBtDg=;
	h=To:Subject:From:Date:From;
	b=X674nx4MYtLCMsWt2nRG/kp6RAl8E79uXVWW+FixoT6cafXbO8PnQSEq9Jr4DT0hC
	 xtPyRwnvK0pLm6P4yOjRkEaNV71zrtUcM8s6Dkl3jGJ1N/xqqLxIr+qkxasnm5d0h/
	 XscIvaIknK1Eh3jn2TasgMz0y82kDlUKUZM6zzIELEBwijYp8uor0aLJIcuXB+TDT1
	 B7GLsx689n7cTgnisb/JohHX0h/5Z7TPP6MMRtb5/HOet3B4S0crb2iXC9iB+2hwLH
	 isLzqU/ZE5ltcU/wPB5q0JraFnql7Ym6w7sjYqouAv5jPe6tReqZaaEMx+QWsWEqwQ
	 ATM1dYpreBecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12DCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232183368.27846.12514159495733833250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9394f13d0b92cd51a7f9f48e5ede2e3017e5d0d7a01c4b1347ef8b81f334c0
Date: Sun, 18 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792321833
