Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A16291157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750149594; cv=none; b=Bp5doO+0Nk8LGxJvdrnPUHZhjT2HJnoZv7s2d4LGaNF7MuR1Py0q+EmdLNx+LvTHaFJzXdwtMFkQijXtxtl43XsINu6v92qimM6NAMv0rw/vSQLHV+F37mQyuUQ636Fpi6jYxCMSQPIRjpAdB9XjPq6nGcIZv7cUC6rwgGeq4w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750149594; c=relaxed/simple;
	bh=zbW8GXbpE14FLRic0RH4MIJooOqfKIOl3OKwPBIF5MY=;
	h=To:Subject:From:Message-Id:Date; b=us5ZFtvme1PH3yaLx/2V//rQMPlepX+m6Y3+Pr59gnI85UMUYvx16MOw6P2eBBWiZKLtoAeY4bhOF58253Lev265C39lk1vWhqFmYJ+qZmiHVLE+g86DcnUT2jSjB6Y+CDEPcFDre44fY+kbDWxWT7mZTk9J4sDSjRSuitD2dsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLTA+snw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLTA+snw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D9FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750149593;
	bh=zbW8GXbpE14FLRic0RH4MIJooOqfKIOl3OKwPBIF5MY=;
	h=To:Subject:From:Date:From;
	b=HLTA+snwkfn4Kt5+VGGrF6pQJFs3OW3SL+6TXF/Lq10TKcXdRrl4w8cQeBpziAMxE
	 E3LP6ag6PFMyVx+l09GD/AYbZOx9VKOMVHhvnWcQ7V4IzQkBelqnvnypCkOK4b3dPd
	 G+qa+TUvvMbY4LAncqj6beKOhqs1AIZjzrd+RK9a3u4x/YvTk6UZy4uy6QBOXL8oJk
	 BoE3OxjLmmp0Yp99uH3Z2y+ER1eIQ04Z/+lv1lf0B3Tnn49qTHNE4/5HhbnC72eLCS
	 1WCyFqnMzOju8GGXV1Y0rvgCwNvqnUZiCDbVK2rxVsO8tKz3W/zit1YylbEokykLKm
	 P5VFZMrrnYxLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF1C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014959358.28080.9133482424682945837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2196022f59cfdb9543bc6c4e297cfd9a845ff3170f7036e4ed67746a11ebfdac
Date: Tue, 17 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750149593
