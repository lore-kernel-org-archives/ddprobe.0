Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290B772600
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752408595; cv=none; b=dwGZ4sD0YS+tYPIRC8tV9sX7Uz0Su6sXWrHo/TjUIAYC1TdAciK3MSq/VVJa/MO71f7DiSDnjMPKScrPiQFpEtE9F8a3om91SNNUxy0aYOOmeYCJ+yQbkxXJ1c/8NyZNLuoZJzVym7NXusHvOrpEiOHgjGwNgGLdXT/DuoAo9dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752408595; c=relaxed/simple;
	bh=gifv/aw8BP1Nof9iXXh0qr6wZrEmc/HVX7MSGUHD1Hg=;
	h=To:Subject:From:Message-Id:Date; b=iHyIbUxiBsj4N5kcu/SGPFP8s994wGlUcUOyMSdNbmULIjAygGL2gLocvE1kqc77Y3reazdQb5+amgY7xdbyIogLBRKXoO4cyUMkydn3fGzqfpYtWBn4Z0Que1dBL7m9iQzMY4J2vc0GOTGag9/fjOrn8++pgMSm7DQ5IvJlXvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj5iyCHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj5iyCHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C68C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752408593;
	bh=gifv/aw8BP1Nof9iXXh0qr6wZrEmc/HVX7MSGUHD1Hg=;
	h=To:Subject:From:Date:From;
	b=Jj5iyCHgfhq0i1tPPl67rU4GTBb8r0rIRKG06vMZhHm1xs7XMmIDExfqXfci/F6iO
	 18RqcnK6TaJGrr2N0CCuLTq8BRlW1sM87EkmUIXvkXbGEIGuo6uhka3xDoWrROAMZv
	 1tWDU+lhQGy/gloaZf/nOk/sy0g1AZ1cq4Krj0fyjs/L8s/jld1JpuUajaOFVP3EZF
	 DrNsFSrlrdvPGx1M/ou8RflTsH5aoiWL2AChXOIIqj58rU9bjBBhd3pN7glBdDm3n3
	 LknP65wprRuAygJwsd8xuMIsTsOlA1uUdvtL/nCsVCmHt5HNNpwPMYdpKnGHZou4P5
	 wn/7gjz6B32jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E29C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240859357.8504.648587630530875830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66584c0adbb13f320b07f152f6e6a5bbff9bd2d93c29f5b54a8457bca1224c4
Date: Sun, 13 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752408593
