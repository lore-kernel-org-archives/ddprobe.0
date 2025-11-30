Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EF21D5CD4
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764465175; cv=none; b=Z35hM6vaTCND5cJyy/IMXdeX1N8Ug6U+0nJVuT2M3r2ZqsDhs4EAaOQ7PZAhRE4OoLrS7viI4yCIe5n8kWaL+MN0khSViTaWP9dn25ouCtWUZJtyHtYn/7/PAVpoS++xW9KAzzBcQOoyMS/Ntf95nhFVICxDO0n6w2NNeykdIAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764465175; c=relaxed/simple;
	bh=KV+HxZy0dphN6zs4KrR8G8tL0mUbLxvdVPEL6O9NcaA=;
	h=To:Subject:From:Message-Id:Date; b=dzdLOdoWBO7R50Zw7uCcWQQenycTf8z4P3dYu460oO38m2eOBpJ/JvgTIkEo7KGB3HKASqDv9Gd3iq/zAFvQb1mcr2HJ4J0di0L2+klgHKdblh5LTmZ0a8HDoMJGtEAHxG/Zp1zaNPlXvZhTWrylZUrAZeDtheIfZzXb4ZkEfec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN61DUVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN61DUVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3208C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764465173;
	bh=KV+HxZy0dphN6zs4KrR8G8tL0mUbLxvdVPEL6O9NcaA=;
	h=To:Subject:From:Date:From;
	b=NN61DUVemlQOB5PeeB5ub2xv8p8w/U+R4MUmmqQdOTkENFMfVVxRsw4Fkt0/3Jc8c
	 unMqZWk8T9kw3C7HBk79qNzo94te0ZjUX/rsyJ3IGRVawBipW6e4lV+UjhchmSpZW+
	 vzQP/oxElz7sYa9GiSAUcG3TFdBCE2ba10BYfuHxmS3erMp6pU4295Qday0Wmojqca
	 qkhGMOKtlEXK82Mu12/i6lkChH/yl8W9GgJYOUZPIqv5UEJfe+pqhrY4rIDuaPZ7AM
	 WsYs3WjZsCWO6Yp0hEHtlG4HGxSfqXvMSUu0PqDJD0ZAaSwSU2zrTL09GydfC59uLq
	 56yPGsYxj0LOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909CFCFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446517358.8181.1341005201867288323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e454de56167f83a42c18309303e0ffc94ca8452f138ef4013bafdb52a26741f
Date: Sun, 30 Nov 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764465173
