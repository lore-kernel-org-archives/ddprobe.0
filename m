Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FC02F1FEF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777327654; cv=none; b=L4MA2laj8kVVK0SxmnSG1n2H29OyN6KtyMF49bxph1RfcLFJA36Zm+dvONDLDbacU1HZ7ohAlRDepMoB1OXWiTMxNCMreRRIurCshtKvvNbhCIJLODapCeTx5rcvJCDF0GIcZIcXzMkhxl6ab7ll0CQFkka42YM5YHGGDR8w1xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777327654; c=relaxed/simple;
	bh=6WwuB5L7Aze762+hxlS3fe1hUTBEvezyhYJkBVLVOYk=;
	h=To:Subject:From:Message-Id:Date; b=t4bM2KJRHN6BKtsrKtVfUEeKqzChbnppXfuRDcONqXR+jm3o3d2LE3Id694vTefGl4gJ/I2SseQydAKE38X4EOjvAuZcnnVWetBEaLye8lqdEVRrvz73bFrV1mmAO8+REXOmY+fCOg0+BFv7HLo74xu2y2zQpbcc6VFMix0Q6Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xx9E2p1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xx9E2p1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92F4C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777327653;
	bh=6WwuB5L7Aze762+hxlS3fe1hUTBEvezyhYJkBVLVOYk=;
	h=To:Subject:From:Date:From;
	b=Xx9E2p1lOS3+7uuoiXdUw1gHhVDqZ+kwIqHOTkpjALEZ1f3hoW8ynSGiJ7bwPgnL/
	 eqj9AnPy3jjlPGkRqyFUK9Mieq613gEQN0LKaXWQ6MDWxBCK3TCLEalKyWTnyDNvXr
	 8lGQj+/9BGj2kWP6fxl7kBN90sVlG8aDBBdMdaWz7SNYo2q9IIMmxoOXXSXfaWcyzU
	 ULKu1FDb360XeWg7y5IDeMKMb+2DcwIM+OcBvb3sKuKulX22Ie239td0s/1mx/uKzj
	 ISdWuNSOnmYyNggrIHbxjRTRO28W8szFBEtGlCgp3Jw9FBePBwQPi8ff2fg5Ky1eZx
	 otOWiSzA43NJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9373FF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732765368.3260.17656801438764031718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ed079dd8cd356d150cc8fe9d09b6fc4cb794abdcc9703b5746d3fde558f492
Date: Mon, 27 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777327653
