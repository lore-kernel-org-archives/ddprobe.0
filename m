Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DFB1BC4E
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747060194; cv=none; b=mmBrFakHE+4QpcwyKK/y5Bw7uX2QqRoRzyxpyG3E9z8mw3sIwUcJG3sAVHGY8us2YqqzwF24cO1IySE/iKpeYd14mwCjMQhuIzjIx+nyK+ZJBcipjwLlqlTXPYNXA8G7Fnd+qTG5c7bMmEdr8Zc93LTQ+mXKI+YA9Mv3w9F+Dm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747060194; c=relaxed/simple;
	bh=W/2nY+BUipY0HflyIV9U76pvDJFuRSnAWIz1X/0/qOs=;
	h=To:Subject:From:Message-Id:Date; b=RNJnx49tXPTBGwSChk48/ULV2j/llrfjOcJc0+05zE1Ev3SA+1jfyZ54GySIBCbU2iX4RhCu44rcmomOFgRYedGhIQfrGq73sbVZ7KzmE8f4wIiZsPagrCWukm2jgAWBZBs1eGH40e8lAc6rFhRWyL/dlEXRRoiR8inqxD+nPfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoAZ377q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoAZ377q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747060193;
	bh=W/2nY+BUipY0HflyIV9U76pvDJFuRSnAWIz1X/0/qOs=;
	h=To:Subject:From:Date:From;
	b=QoAZ377qLBrelfz0RunZbtv8ZSj7ci3KzDy3uH8JV6Pri60xzbTAaEdJ7S8sI1g22
	 dktylWar1uop3b/+h45ETOQHj2OWXEyNfERyNrr0G/I1cDSbj49rAbi73lmB0oCOES
	 sLb3+a0ngXH/PkywczEV/0+GKiLZRfho7Ddvw1vsnbvGJF9mLYy5GtltpFzBrtiAF4
	 DLad6eSWN8pbKyKhdJN+T03IlD+Vw30xNjbPrqW+ATRKko55w3ZAZG7OQrHUQpnDl1
	 xcM0juuDUkvtFPSCS/zdp7sbhYLyCw1M/7Xe1lhlzkHTw8RYfpXkcJl/NL0RcBWM5k
	 o6VZjMZTwf6MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93486C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706019358.26993.17540414974924665511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8146f084f8123507e7b0fa4809b54dfb26440d311941619ab990b54121079ae
Date: Mon, 12 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747060193
