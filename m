Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A146A92E
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761610794; cv=none; b=ZYnsfGLQA6eB0B+0P4piEiRwcPYjMKzJQSE1qoownvp7v/USHCiaz3XuAyVWEpPam46ZORO2DahZ1YlfGSte8IYpnbBrQo+rzu7z6bE/Gd4vBGR+FGKQ4qD7OndQefc8rTePF8EVcckB2ooVzvN2WLiXrPTmGJ8aheJVFVUpljo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761610794; c=relaxed/simple;
	bh=s252S0RlGAfDrYk0MPIR77mBCh94VmMrDcMa1GKwZbQ=;
	h=To:Subject:From:Message-Id:Date; b=uBX/iqisMztD/lh9IDCz5K4Su8nmKSlhVoIi5czDt1l7hA3e8eeGmmfJ964ZM90GkoUc8MLp9VgWpFVTT7grNUyOaUbVdcEYD11BoiJh6V/QT/cnEUlDyoZVRI+i7Wod+U/B/gOajYlgIdEXfNe1L8eKAIt7+IBfJWV3hlQKWFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIghfDDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIghfDDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4FC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761610793;
	bh=s252S0RlGAfDrYk0MPIR77mBCh94VmMrDcMa1GKwZbQ=;
	h=To:Subject:From:Date:From;
	b=WIghfDDaP9OycypzfXVnCBK5DaZhDYl4pACaEWzR4iGcj2zBIRATuJeUTpMaFg0V2
	 6eCcEJTNTjqOs38tuRU8jYJhF3rYBl2Nkka+gVdj/CBrsYA8iU/rttvDC9I5jYa2dZ
	 MXUM/SpK+iCtJNl+9qJqtdHDI2/ONVBkJq6tKr7aPwkk1D0jNWfxcy0UCkGbn4RKEY
	 CxYriRL5aQ6tEyXwKUxB+N+kCSYNLbLiqytlA2ujR9JgnrCTRNpdZeePrA9/krRGcd
	 mmibaa20GxAj4holmjey6jZ+b8IWRc7ajsVoY3UKyftRzoet+9TH6QqOsgOrV78XU1
	 E6lv+VfhpA30g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1DCCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161079358.19616.9982582791534740532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e058e4661822351aa43e9a59f75d4c7f7ab912c862ab550dc4fba0da976c2a
Date: Tue, 28 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761610793
