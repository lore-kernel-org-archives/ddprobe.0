Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD29613A258
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756915193; cv=none; b=qO8mpCOyIxBfRuHs+FvBpXvxN6A5dutglGdmL9QDSOq29voH+GBqikzr5MybNF5u8mxZ/6t9E0i71r0Sr17OokQuxYuwzocS2tNMt+u8f2alai1DvBc74lpf9AI/8RzAuaEmNlBE7Wc7C39L9guRFiZW/Uu7iQjBfLAwyPPaK+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756915193; c=relaxed/simple;
	bh=19ANt5/IVifqWhAfFPsPMKpCLRTvuw6YxmEZDnOvgLk=;
	h=To:Subject:From:Message-Id:Date; b=gH9O1Zd/ARsl+GmILOv2gmklF3wSVzw6azpsms34QRh1hMdd+CCZTY4FEEBUo+ohcamH+bmFBBsymnZQSf0DfGvJwpzwbhQPgF15T/idex6DygpczsUqa899hm8UB7n5R5ic9Tftf6gw1Gh7YdfyFOLACNxX5eYY+Ow4TgLUfiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYh4UZMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYh4UZMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A6AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756915193;
	bh=19ANt5/IVifqWhAfFPsPMKpCLRTvuw6YxmEZDnOvgLk=;
	h=To:Subject:From:Date:From;
	b=GYh4UZMU6HtpPrhhMMWz2CDUryq0WVCCLOMiDRu1mt9gERJ0ZIE24AXJssN70vET+
	 paFQI3cBUPA4LRe3vkSs14smERhrprZz4oTWLr7+jDaFdQjjoetEg0b6nUPhMQBr69
	 ORX2r9zCbYuwuEa8uBHx3L7X2aORQprcLuG44/QfUsKDS3fmSTW5L0KOMxuXM7TKgC
	 W5xwWjX/DgavJMezjKz/H+scq1mJBZRRt3gakO7eLYu8UgZxQZjzoZSmCYXRIxU3Gf
	 eGzcMIFKusL2pFHpC/aBuW7Sgf/hKrioG//vV24PeEnNZVDdVAZOEpY0hleWLV6jWW
	 e3xWJ1Y11wKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90902CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691519358.7230.184556015177479757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71977383cc1261516174c4b96a588f94833bfcd0dcec1ed0754acc075ff34e99
Date: Wed, 03 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756915193
