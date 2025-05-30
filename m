Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0FA1F153C
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748584794; cv=none; b=upOr51K/lJ/J/aN2aZMe8osvHy5YQo6V5JeHmrFohiIZCxisNoVKf26nqo+zj4CFj2V2zm/8NFhlCUPFpcxRgkeMvLByY3hc0cuh7m53lcVapyscpkJnAfab4xvacj4q3WxlBgJjmSPvfyfk4HS0FuSEgPyM/YVeu1PYKKC0kpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748584794; c=relaxed/simple;
	bh=RoZ/7djBS1RCiaFp/WdlZ3HPti2T6eD8UCu3CRYpkwo=;
	h=To:Subject:From:Message-Id:Date; b=MMBGZ+1fMIXnu0M1A7yK88Tx6NaB2P3GXG0LgodMPN9CurTrYSGIUNuWhkn/YbEJzb9VeUgP5xILXXASAohtI8BIzXPg/oyV49OruzImvPZhgwmVc6K0D0ytUf0EG0tM8dZJ2JB+jl8h1Ikfp4NgYFR1sSLujpFOZtYRriQd1Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlQpufKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlQpufKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B81C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748584793;
	bh=RoZ/7djBS1RCiaFp/WdlZ3HPti2T6eD8UCu3CRYpkwo=;
	h=To:Subject:From:Date:From;
	b=TlQpufKTp16+zgEgaHyXIEMBDo5cmiVPMxwj50sJJ+1ZSn7j7pNMhXRlESyt72vtR
	 gznl03GzVqEHDTgNJeqAU8mbPasI8DdhOZ247b0BfSIAliu4yEJFvUM9nyG9cwCqEN
	 anJvLujByhRZFeS0o7S80A7duGwT7lChQa/diOXbV7zRfB6ONu1dsBg1pftswtLaGc
	 ZAsLAh+4L4uZ02Q/AefLuU9zrw8m5wu8bO/TdHTokRrctl4OMJqnhZvSicnstwniwu
	 fpOKOw3CqmL+k+hz1fLcSspS4dE/UwtwtCHr61H8icAl0XqIhQ8g1+TFi3HhLkVFBW
	 BWmC3V88aWttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B65C54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858479358.8556.16600142245587435228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e83438516f45d74e6f2eb62aa608ab7885d5280cdc37019d43e590e091c6a8
Date: Fri, 30 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748584793
