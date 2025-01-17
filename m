Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCC71FF1D7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737118554; cv=none; b=BWwDvcCQvRCfk7tFO+kl3qMjQAy+vf6ObcFw97rDdz/7ZfDjiPSs52kvfc2dVAWqK0/Z2Z2fQCTfxFh+J4Hb/oT6o5Rofozewr+eKm7recwCwj99Q0iMfNStp1vQQ41SlW3PnDsi7hGCTJReCdzCC1DEfED+3Saoilzj5MsDU2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737118554; c=relaxed/simple;
	bh=To9LkzDMvnpeOILygEZRBfqYAUE+h37FkS88JP5inZM=;
	h=To:Subject:From:Message-Id:Date; b=MhbapPFtvEhUm1SwNAH/Q2q9Seg4dBmeOp6WEFF93fEdtJ5LNP9+sDEH58Az1HUoq0pv3Sns1bMC0BHW/zLD4ITQa4oYaUwZsC9G9JFS7Y0fiu5e8EYg0XRpHi+htCkTAN9aj3OhXU2zNB/DjTYpg3qnTC4EpjddhnDRTmMyywQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkB0bZJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkB0bZJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC5EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737118553;
	bh=To9LkzDMvnpeOILygEZRBfqYAUE+h37FkS88JP5inZM=;
	h=To:Subject:From:Date:From;
	b=pkB0bZJQPhsRygGjMfxkNjgot0a3QZK+F3Eq13oY39MZ9rBNM8Hx0j+7/h4WNt6H5
	 oXjtXekl09eIleh3lw7Ph1pa5hjBsIcUKawCJOA8BJCtpEwb888Vmso8NlAxeqYXIN
	 y6QpU5IHVpnR6rnkhylmm6XCDbMurzGif7FaGITBoj6OD58GDcGOq9E9QRnufGS1AZ
	 4ePIDfZyDyOFXzwQFb5Uuw6Hlrcz7XRTtTw9CVldqHq9cOgieUTW9YHYJ1XdytFtb2
	 1PSPMaJ0tGnyyU9adWDHNWluP3e/JFYscJJ6W3syI/LsnFXQ2LFhETj7l1gNr0c3C4
	 BNDhM/OBZuVaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A017BC02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711855361.11675.7180190557220630290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfc77efb08fbd82fc3e331142c4ffdddaf79c4bbc0654e129f08f3ed70c11ea
Date: Fri, 17 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737118553
