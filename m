Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04216378D85
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769771634; cv=none; b=uioaZoGU3dYaBXbgYEOBYqP/Sox272zUdUtAK11h6mci//LVZLEAUzIAhlf2fnFR0nKmqpaeLE88VAAy2+5mtLZSlJf7JtNJ1LbtUu+HAUExC7YSDtPTIb3PdgrjqURVg4lPs0RT/JZTrOuugPIvopaBnIAMC6a/f3V0tiX/KdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769771634; c=relaxed/simple;
	bh=WxwFg54Hg9+z+/PSczCHMX3D82B2ohuqYFeKtVWj4NU=;
	h=To:Subject:From:Message-Id:Date; b=XDVHAJKW1BlnEaPREvyRbiNfQn3DuI4ovVsotNtLphLqjYVYQ43FIkHml5cNtWs0WIDlQoWLDDt/SPYw948awIk4Jyz1vYuvsstsjyjcV+1YSfXykRB4YIK9oUx/h4IXVU0zLIl2gzw7PyRX6jMn1fvIrH3bs8xRqzdNb4K3D04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qo8c8QWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qo8c8QWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A342FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769771633;
	bh=WxwFg54Hg9+z+/PSczCHMX3D82B2ohuqYFeKtVWj4NU=;
	h=To:Subject:From:Date:From;
	b=Qo8c8QWiWAF1SAUEdKbPWiyKuYOGTDFlzNsYwKaPVq2eQQ1hwhfphR/tzWRnjlMq+
	 IGg+7CYFaJb+n05oVJa+OJl0X5aK1g2zWZo49fO/yv+BSSFG+OUJF8T53DgDahpT/q
	 a/kYjUMZetLWSx5auBc0UvEtU06KTz47Ms4rsRmlNaO0F0nTWzM05kRIYXnTByBae1
	 CxBOnxqwFTCebC1NK3UJ9R1HE8WJjw256nOmwlE/IQsbcIrLJ+ps6+p+xZpFaFhVGN
	 JzLfkDJw9GzEvbbe/g6pYbPN9jH0Dex6xHT5HVzVpRgCLHbwCxlNPu20zSyuVbaBM3
	 yU+GI5a8b1ipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9139AE6BF00
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977163358.17558.13162184675955828921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a25e7c54d97bc038f880eeb52e5387787276586122ac0ec19a695fdfeb6179f
Date: Fri, 30 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769771633
