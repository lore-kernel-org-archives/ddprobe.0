Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472F0393
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713916823; cv=none; b=uC9G/9j4x3DeII5y+C8jP6/tAxldX6V0Lm0Z1kqbxYtibBlWimCPdIyKzbencBuiIc7w1bmYOwnaiBKtESr2H3V0oGMnI5HjGMttsaKbRRiWl2on0tmH48zuopmtQgkV+72jE1cegtVTmEDzoDn/mn3Wl5cY/sXURJbNwLXQKog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713916823; c=relaxed/simple;
	bh=GsfkBpBSDFCSju5eUjiwyNHdWnjjikaz7a0e9wCs5uU=;
	h=To:Subject:From:Message-Id:Date; b=hnqoZxLtAl/yYWuiVDOjUlGFfTs2QIfBwBSWxqa7bg5j2GE3qhc+wU2xZFPVlighRDjt7imoyZwLEi6PUO3zemS0bY6yfQe15o2OfpPiEm/++o44DBrkD1IiKAJ3wdumOQfCehygR0xymaKPNQspwH7quw9jNZkavVOlnGael3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4LdLGRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4LdLGRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D482AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713916822;
	bh=GsfkBpBSDFCSju5eUjiwyNHdWnjjikaz7a0e9wCs5uU=;
	h=To:Subject:From:Date:From;
	b=t4LdLGRkwA6CzctrK3jUKDU8EdEEcCoqo8h+N36Aqw+yBL1dkRn0d/PnE6vaNe/o7
	 O+GaKwaD4M75YRYIVaNXlaCuIWPZ3tNbOwexpgASSi4ZRn6JgI5OVg2VVFwt1Puaju
	 ZWXNzVvC4VG9iRYzhZr33CIUNUiv71goen8izRXCiRycsTRx3PjxfYqDfgn+j+V09S
	 d+28GoBFj/ZfPPwISFJMYStKTiy4IAry3fe4gRmjY+5StBZ+kQ0uaAT+dxmK3nWy83
	 T1zIJ6+sVTh9WzP9ObN3bgbEKi9bJ3GYKLAyDLn5k5Y7YmyrhQOJf2YRgdvdAXsJdm
	 sjhwz7ENsfS2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC12C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391682276.15921.14046648511905853554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d996e83cd190f0d6abe0570a93c6d280e5ebb9d9662466924d2a3162184b81c
Date: Wed, 24 Apr 2024 00:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713916822
