Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1A017DA07
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720017923; cv=none; b=FjZwlTrWO7yurtvUiuwBwjiO2PJN3CLifkA/0oCOnPsUC13SGKeUj3A3FbAuhf6b1OigtJxw7xKmT6ivvBjZ5+tuyY3WO/ml2tz4B68Jcmt+p0BTNx07z+hQf1e5EwWZTA63WIeu/w4Qa79gaF9D+CyjHlEE9LR5+D8NueGTQbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720017923; c=relaxed/simple;
	bh=2I8xdPU9bS2XRGdMlFbKTCa2agqo5/9npeqOPg8rP8w=;
	h=To:Subject:From:Message-Id:Date; b=CfbZt2hITMtlTAPTh72IhbkbstVXz5vhm+1eICrU+uSOsmerbt+oqEQPARGBi+cS4blRF5sDUDW4rCRWatCWYwuhN2w+mii0xakwuFqClYUGkp723wKUnwyPQ3o/pRUCtBqkMh84BUGcHio5bylTiVGPsr/DVjXYNsjIvd8X8ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=strVfIXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="strVfIXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1DAC3277B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720017922;
	bh=2I8xdPU9bS2XRGdMlFbKTCa2agqo5/9npeqOPg8rP8w=;
	h=To:Subject:From:Date:From;
	b=strVfIXWhlHtcVgJDp61jX6M8Hx8Bb92hIgB0zJEqNYa+7Nd5yZtyzJoBNT/Usvum
	 4LZ6DME8HyObJK6LWjWumaEsFgDxZC/DZgyETNyCneH29PkO6TpDGS55tr61w26PB2
	 oQvgO/pjzecSszifO8izQp5MJ3GZ6ZeI92Ifqt/4toxlf0ut8txMwq1Bc0GcO9H//6
	 OyLIkNK1wwwpGWHfcSqxEgXJNzy/Gve57D4HT7hEZmY6zonhuABCyCdK2RTlgfjY7f
	 djcwwlS/mAsZNc5664DPJO7uOFKjKm9UV4dzyO3zG3mNnNcfks8LlvU4WMXjcd0z1d
	 Cidk1c9lqhnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D75C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001792278.27184.3313472544982373039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5f14f193a0532792dba100963fc996ec2c20259b7e549a3a63279767e14535
Date: Wed, 03 Jul 2024 14:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720017922
