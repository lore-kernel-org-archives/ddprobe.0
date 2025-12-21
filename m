Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105A82FE598
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766341434; cv=none; b=NgZWlms82IAo/8P1zAXleSlhbEwn7dxrXYIGco67my68/gLQhHC0sesKcKLdOMiw8Rl6JxsWHfJQawDXUtJSwGDnk94qHJjIH9OF5ys0xGeQSM3+wK+x5YXBO3iQqtr8TKJQ2HSed8QHwJCQ+/oADHnRJ5mn05jCLVR6Bwf1FfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766341434; c=relaxed/simple;
	bh=1YjHiogHA8YtCco8WLpBWGUjdiJzkaZlBQbghqVM1XM=;
	h=To:Subject:From:Message-Id:Date; b=lixgVCdANi/lciJzDucc30J2JfA+JoyHYKWZNQxRj6z5BceP0WAxwY55Cr+aEL4u7l+3+QSeX+siz6u3j9wTNriIJZ7Vu4ubAM5X5GesJfrNxEr9IQbiGeATvPrs2S+uwyFOblmlPGrmCAEJgthU2ss7RmA2UEKXW6LuyycBaS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geLP0DX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geLP0DX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A184DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766341433;
	bh=1YjHiogHA8YtCco8WLpBWGUjdiJzkaZlBQbghqVM1XM=;
	h=To:Subject:From:Date:From;
	b=geLP0DX7YUIt8y7+igOpZEc4U4tYBlzdvK0Prr6RfoHHv3bg4aKamWHXfsWS86D5w
	 +NVI3X5duZXZ9Bu6RDd6A1vESdY6xFBAPCjliEDcxJutUDyuhjyTOlMNAxPaHDfsSn
	 Yn8OO+6RDSlmSPNJuqZDOHQZ57Y0wJXQrEO6XmwuhrZReuHbjAfGhqbUo+XAD5aR6I
	 QtJweMDhjAJfXmSEfd+ujeB/4s5SDTKAwmkgtVKPHcK+QvnrdZsl5WYfli2Fc7Au9b
	 exfZjBF8GyWB97qCNslGz13iJBlpWhWh7HntaSh5kUzLno3F2rcx1AWQoFtvAxwC3J
	 csu03lvA8ISsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95089E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634143357.11111.16823160799988997102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fec3e83c0ad483f6546cb30180d7b1208c0cd2dec41481ded312c7a12b86a3
Date: Sun, 21 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766341433
