Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2352F60BC
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764024174; cv=none; b=PR+lU5Zo9f1v9BuaqOTmPLFhRRkqbG9teM0DhJK14Kr4StsZer7Ih+gBIxxItC6I0feC8FacP2yvoUI/Iqd5SsBTz2UznFwTUq8+WlJJiaG8+xV8gs8XKCkFMbtd8tF7oLG6qC8BXWnjo+p4/zG7ckfeBOwr1VLPfyacLcuzC5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764024174; c=relaxed/simple;
	bh=9Ag0MqVrWfChHCNPLL2IUMZAh6JJ3z17+UNX2FcM8jQ=;
	h=To:Subject:From:Message-Id:Date; b=epQ9rlPidw17Hsm2kuzwiLu3kqXLf7sDUko73Xo+QWUDwJyyE2W6bA9igC8JAv/yTRGg26cCQ1H9c87Jn6KjCbIT3qNIUdxNPC11iM6OKq5a654stjZotdf1S3pKGQuWt/VrI4uUzxoQv50H6WGS5bYm/XnYd2G9KqiJb/hNW1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFq+U3Al; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFq+U3Al"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A989AC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764024173;
	bh=9Ag0MqVrWfChHCNPLL2IUMZAh6JJ3z17+UNX2FcM8jQ=;
	h=To:Subject:From:Date:From;
	b=PFq+U3AlbU3EVYL9zdKSvp75I7DGknqsdadIsdYf4ipdo4YEUU1Ovc+p/zI24SMnu
	 sUpEuyzB1qz8vPyUnMOfZxvyYLaH52PuNeiXmhKjC0mGw/sn11NSbm0Y6PTy04+lzf
	 uaIdSe65DI5QKBJAQ9gM2kzxBitTJ1MM5FF3FntTcVBPAvJ83vcufZl0BJvDSlIS+O
	 cicZoJwPL1j6qHnhghDKAUPs0LQsejKu+O8CYS5V71w2+95gwWcX44ztItf3x+ywWU
	 6ayrvFwF0gv9VT3Kt58XITE5RTnxsICz9y0y/OFd8jmdt3OcLx4JIFDvIqD7nxy3/d
	 g8ClAEmOZziZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95785CFD362
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402417360.7689.10378445902953234372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d45f284089e646ec80223418bc47422e3b2977d6ae89ab9136d225b7831739e
Date: Mon, 24 Nov 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764024173
