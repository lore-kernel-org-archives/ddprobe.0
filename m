Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76C328B7F
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778493634; cv=none; b=rpZyaEfo9YP6xNkV9ymoEIVkEiuym6yWoU1bomlVcVeIIGqKq4lage0NiXvssYFSepHPlD3U3AVzG3dMZOGvivMVeqbBYPbrcYQcSBDIryoGgWa5Ap5TXWAOSTJFaot+Ha353MieXkvrqE7sPvtH1r6Z6caRpkGqNwexyprlT1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778493634; c=relaxed/simple;
	bh=HhYM7AMr3za5h966Xbxd2as7yGpOLJRHBtaVO+H95mQ=;
	h=To:Subject:From:Message-Id:Date; b=rVw1rrNwk7m9ik9En3MNk3vIGfl7depkPlXNgVz3UriFSQ0wxDuErriZf5tPyRnNuWC5FQl+3A1kCwrZcfcdTQaUV+PXolcUHMiU+EAwp5XYLQpSXcH+r0ed1a5z+peD7amfGQS+iXFQVuKtusQ56oWGB/7/ZZlISWUSdfLWI4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGWDaurx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGWDaurx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC716C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778493633;
	bh=HhYM7AMr3za5h966Xbxd2as7yGpOLJRHBtaVO+H95mQ=;
	h=To:Subject:From:Date:From;
	b=nGWDaurx4y9x5Eg5LYT7oylEayoMwFBod4XZdDScfo11Rrriq+kzqYU4DCnqsQDg6
	 B/iXMhXeUW2HVC4jr9vkU61udP2iPi3twZ2C2VxFyJXpEzBGN5gUrz1k0q4PDkCknm
	 P6S6wuONtchEWBaXcY/084PE3RpzphbuXMOk62zS50Fe6SuPZ2O62NG8+JEQUnFciw
	 8ytjXoBW8gRfJ5KWENQw+sP39xPz/bRYEB7Nw3nVnBXcyOhp0LseaFkX+3as0URabW
	 xco794gU4VwPbWy9B6X+vESoILFxoIxedOHf7QILJATxnR0rXVTn4aUsRMDpycVmtz
	 p6waqvWsZ1Q+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D5CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849363369.2706.4099842499857452079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bc45ceb00a6a87f3c10653927c951a59e938d0317af5a899ae83860b5ac22f
Date: Mon, 11 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778493633
