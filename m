Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E7B1F4C8E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749943194; cv=none; b=TT6BNbrSDsaxhwlEx6ehAhzTsV75QkmGYSWbCyVW0voKyJw04BTBiEzXjEqINO7jrtL+pGGBtSKMCAEsMrFU13OBxgn0KT2XBcUaIrpNCGJUm9vnB9BAeOcpbZ02JxWvbbuIQsY0XpDZv3cfRnSU6msYu4MeZLCAQCjEVHeLfy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749943194; c=relaxed/simple;
	bh=WAD/7ZouFHWZMaB5NbFmE19YisG3WZ/68DWhwisXktk=;
	h=To:Subject:From:Message-Id:Date; b=TuT9Xm0XtNGUu+vnfa5W9Ws1W7rbH5iq3Cy6bB3As8K9XamNbOT5XCilxcFMjVJ9to6DrNVUGlVO0v5QZq53lcWQl6LmJTG8iHYm9wCgAIbfOdDXqut75vM2xOoDasER9ICToyiPwOcXSLWaejb/MZl/5OQ8VqpadV+w90Ek35A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrnZFkR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrnZFkR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5D1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749943193;
	bh=WAD/7ZouFHWZMaB5NbFmE19YisG3WZ/68DWhwisXktk=;
	h=To:Subject:From:Date:From;
	b=CrnZFkR+6+DrSXQmxHeCeX+M6XNzVBvBoc9ZwZ/AYDbNqm1U35pJI6kaWpH3YoyVl
	 wFloxnVLngq8iwQCeD3NTM1z0JjI5P0mmwaU+jPbcL3a6eaS8ImzRpWJD8xIvdcCwK
	 p7sL/jomkNoIpFoz2tDdSIbqsKbzUwBcwOLJMnKp3dRC0azPrpEY1lEmrMXMEqbj6Z
	 LYKLlBbKWX+B/ezrdMIXPX32cjnnIF6lhaGq2igNGVreA5potP58ldbzRCxTMqSdA9
	 OA71tPm3ZmGUqtHnjuFyQbgCYd4mfpdknBQpFjaPJVOXU8mNvKczI1bKK/il6feMEn
	 bt4clhF/M80FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C75C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994319358.20672.5801406501147577024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b34d3d460177453ba82a94303a192aa602b0c1afb0948f3d41c504cf6472ff
Date: Sat, 14 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749943193
