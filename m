Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7A54B44A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791397834; cv=none; b=Ey/yztopBIhfT2b4mxH88IRglaTGOHME8mRm+l1JQBH7xJzxTbehqBZu0EnntufG61RpJHfLQ05u+s56YSHoxSF2eRNMJsInZu95YRDrLqBsY2NDLGcURaQ7qqRCwcsJZEZ9D2rj4o9mgfcmJ+KQMwZVwVs72v1shPCH0ccXG9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791397834; c=relaxed/simple;
	bh=qXnJuaznLcAY1yfja+SM5hWUBMTl8Lxd2sD/dwfSR5Y=;
	h=To:Subject:From:Message-Id:Date; b=JOAr8VTEqyDMAW9NV0rJSAgHw4Rx30iL6L0hogWoCEvHz3VkYqzS2foeTZAPHrEvRZoRHlgno28gNGIKexKe0FnCMCrcNYHtk/MYNcC9AVu1ac4RRJT/bxIhaw3we9rKhtM4p/0r/+8W8JwHL/HSYO7YcG9ccSYQEjmvR0/r67Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6mVSGIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6mVSGIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF71C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791397833;
	bh=qXnJuaznLcAY1yfja+SM5hWUBMTl8Lxd2sD/dwfSR5Y=;
	h=To:Subject:From:Date:From;
	b=P6mVSGIzBfjM3I61++qYX9E8NDT8B1oWMoBN1kPipuoiu7VrWkXoPize3LAmyO5tv
	 7CYFKlcrFrMtclVO6Wz0wOggw/oGWhr9E7piSd3gj6RO2aOeUZ+EHKXbn240mVsyKg
	 9tUzzl0WGFkBmqDeDLGT91kJb6R0JmMpr292i9i7ziYzbTefNIqWuw+pXXU947y5Nw
	 zJrXas78Q62cwDqU3cmkDjaAF1cdniTTKGIH44glLTdWNQ8eNlwT10TxNNyYAw+8f8
	 dSpSdehCedxGaQnnT502V8/xKM/FxZ8dInBhRj802+Wh/hdmyReLO/wNSdnD0NUL3q
	 YmtvGG26TvTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD03CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139783368.27850.12012135221530906888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b4fd8fcdfdf1644d43acd68362419e5e18ea0244435a4fdd02c5919719610d
Date: Wed, 07 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791397833
