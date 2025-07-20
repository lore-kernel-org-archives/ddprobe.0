Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F182199947
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752984594; cv=none; b=JFEJCA6BEb9wI33uvBbVxPMSpXNkcDvnwRaJkD1O6ZI95R3LWMTxT/2Q+/cxrzqA4AxdlNOewpTaCcQ5Uful/Yei/0Pas9JKGYimOywVsYy15Mu8r3JegOMzmkffZty6nZ0VlCMypz/1Le3vbobC2RP3wBARdLO9fXtFgp0+FaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752984594; c=relaxed/simple;
	bh=TNSbWAitGyiftVdfo8tQccihDvyfHk7wEO+FQ3ZxL7I=;
	h=To:Subject:From:Message-Id:Date; b=CzQbXeMNL7TDQrJUnxKsnGmoD4lvIug83yCsfYAmb/AO6/V82xim6IUUf32Jz9nM73Nq/nFSEGIRJloxgR63dhJYQdGa/j6RrSn7FUx37DNN85KLnxkVP3LPZ6pENqzvC8WN58X5Dq5gCSTl84cQPQiF3iWC0YiIxGxdM2BsGoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+GIPI5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+GIPI5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BEEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752984593;
	bh=TNSbWAitGyiftVdfo8tQccihDvyfHk7wEO+FQ3ZxL7I=;
	h=To:Subject:From:Date:From;
	b=U+GIPI5m0NWAJCIFuKVF3tDlZCgMvS5V5I2B4+BDeNIOo1Az6bc1MRBs9IujQ1IEK
	 A/XWezyeJyx2XzblMpATpjSp839mlRX5aR66gncs8Wd5edqYli7BJRcjTsnguijkSv
	 juARUQQFq+eZCCe3jq3Xuy/FapBwufBwiGdqW+s17YfuE9DqfIGcNvkkNaaYqLHukg
	 NWEC3H1OP7lZoWXqR0w3JSiQ9G/1PSRDlZGtf/ydGMQK2hPVovdQnhJeqRgdcuRY5l
	 4azhWGG3Z1yINeawH3SdHQqRWBWrRkIrkfFS0gNiZqxESUP/P90jYLUdIuRI2mRbVE
	 jfXCRja4mCO3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93030C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298459358.5305.7353014571294128182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ff0daa12cd1962354f62f259edd0ffd0148987a0142ab21c1b146d4aee5cd3
Date: Sun, 20 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752984593
