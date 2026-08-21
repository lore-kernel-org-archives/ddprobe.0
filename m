Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6313C234973
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787326234; cv=none; b=iSNq9gDMs5T00LaqQu4aayboXtWH4O/6RGs6BvNRVp+kcbkb9hHzorQQII3z1dPmocMaegtpHQq1KoInBdkO1QkX+6irtIh3zQJWMS9VuRP+/PNzE+ZKi+8vz2zp/8Bfgoqwt4VSAM3Y3kPM8LcBB3um0TYR+NGXGJdqfDsDDHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787326234; c=relaxed/simple;
	bh=nZdHgJMOoxQM882FZXVO1VXaP8ShtLNIx9nHToDJaMU=;
	h=To:Subject:From:Message-Id:Date; b=iqD2jfpUa6xxO5MJHqZ/6sYbHDRLOVHid7RUVe0apQfEYMFiMuE4w9Ytyf12c+CFKqPdevz3lt8CcNTrJu2vetbHJNstoKsH6jU+9flWOXF7VGfXoRzD0X+Fn9BLuVNFunbi/W8ntneM7saL7qYtNPQ0++UZzQ2zo92bJIbb0Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKfwmL1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKfwmL1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F53C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787326233;
	bh=nZdHgJMOoxQM882FZXVO1VXaP8ShtLNIx9nHToDJaMU=;
	h=To:Subject:From:Date:From;
	b=pKfwmL1OfP8ArPed5VFojVYEjwYz2xtSGAi/GaxUUjXpS8vOvG8zxGD0ScgP5+5yU
	 RcV41BhD2GcOLt7OJA/FyEOxcmwV8ngSh0PLKOxSn3hD2rGe5z0GKhWVnutlhnA0/Z
	 R2jsg/bI4UeEHWmJvKAB5vnvrbaJsNdFljHBygMTJeJkfRuvGBaqLOhVvU2fjwnu/f
	 67RI6wGrv+5PHIkFmlGdk75HpOpcq4EP9bztF+9jNA/NqlSm8dKP6dg19hoDer+yLe
	 PtlEquTdIHC+8hA9JI/J96/bf2FrqcXFiCwGVLipLBr6qzwPpulPNb5DpnrP5rqZGU
	 G/YzSqBAp0vTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C2AC5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732623371.10942.6573170899728928635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06531c6255f18381ec152023ae474b6a16295b5d8a0a65c0fd2b3d6998ac580
Date: Fri, 21 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787326233
