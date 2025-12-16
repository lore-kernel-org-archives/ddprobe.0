Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7EF1E991B
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765906434; cv=none; b=B5CN+KP0KFpZvOhQ/E+YBHPO2+zbXldaPDXEOHrvL6hi5HRm+ZA7qckjfepDkCwNs51C3TdfZL2Vd3v4thCGXu/lHgm+gFT03lPx8q17Cq7yLW92Z/2huqLKcUQ17t6SsIaHtmH30NntdQpnyALpeuGvgVAKFDhOQdgdrkZmhb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765906434; c=relaxed/simple;
	bh=HARwYTLIzwjjD4TRYS4XPj/fhZVg1nXF8J4u8oQXiCA=;
	h=To:Subject:From:Message-Id:Date; b=U4mrse8bFqnB1DXxyN7BvN/Xb8TnygAu+cFLONYXkRA+198MN3e1TPgVyd0N0W9WlcWIeswC/PxcXnB+/aUsT4CTFbgC4S4sJyckcADnOmeCM2T3/1XvouqN2V5KQCpJgV9n0WLNNzbLgylYoQcBiXKXn0+GRhSZPQVG9oVod5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uf0X+z58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uf0X+z58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1426C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765906433;
	bh=HARwYTLIzwjjD4TRYS4XPj/fhZVg1nXF8J4u8oQXiCA=;
	h=To:Subject:From:Date:From;
	b=uf0X+z588HEsIMhY456LjiIhnP2/fiHiMHDotEEcmSpR14p4uF56Buti+EaKsD9lT
	 lVMZI92Keyzbh2c7luF87RkNE/rujEyImrB0ShYyG8UNKFwFGEg8p2NkNnWwmHzfmc
	 nimy5OGktno5qBQU0Cj9C4lkBOfe9KY51j5Mw1LiEw0FzMRJsZosi6WIE7HVSWuN18
	 OnN8++7Xs1sFh6jXBAlcMQY0IyF63NTp7jKN293/sU1o/wVNg5T9jm19cMKe0w4ohT
	 YJuyS3oAyrg0pyXIRQq6iRlW3PinUIQHSxvh5Ab/NW9Uxu1xeeZdf9xylpp8rorbVA
	 Ta2rfEjw14ACA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F111D609D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590643364.19531.14986385248541749532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89b18a457c3322fa633a625fd61bb1776edbde01a6f4257ada143d9fb1b2b76
Date: Tue, 16 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765906433
