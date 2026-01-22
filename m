Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2482930F542
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769084634; cv=none; b=smfVov8VIA5meXDT7+TlAxgQ++gk1ebt4uBZbbFuZMBRwe+ANfv+wiFHJJR6+3m0qHPmyjUv4XKYR+2Y4LX0fBXRG9fZMk5JdFibP8qFWq33dy7Cp8YkbeaGpFTPVhIBBfqudmanvYDJLZswcNZd4Q11F1BRTRC2j9835GunCiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769084634; c=relaxed/simple;
	bh=JpM+Ycgzn3DFcLHcx0ZdkaI2PwcpDmg6VQ0KgBqbU/8=;
	h=To:Subject:From:Message-Id:Date; b=K7I2ouc2+dKMaLW9aSKKFp0YxpioTj6ZgGOH3fhH2DB/IpiJDKt90fVGcmW1LdEsMPyEcbIZzn/zLm6Wz2L0Djmsh7kexu7AsWVLwI2218kb42HJzLNGeN0hyuTMOlKerAJy3wzrisHeuDIQijdREv0tim/ze9ryvK1OSJFZvnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrB1bDJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrB1bDJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DE6C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769084633;
	bh=JpM+Ycgzn3DFcLHcx0ZdkaI2PwcpDmg6VQ0KgBqbU/8=;
	h=To:Subject:From:Date:From;
	b=LrB1bDJ514dIPeiDxpEgyvGxrpmmjZ6U0Tq1sJunvhtxN2RpPkxq2mVHaT6QvdGCe
	 70l7PEm8L3sR1pzX6wWaWWH3BRpuk/mxDBLjFTMMw6w7h4lFwhD4Qdn+pbisEYEUPV
	 LNWH5jozTY3/PNQwEZ8rPNNprexRRzb1mqtjEY3NWd68oXpid4yCVp4l+fmK3u/A/S
	 zeNcyVkF7bHbD6B1hdV+0+UIYJkjp0Z53XkD5DAUsR2TIqUehnAZmCA8cK+v3g0E4e
	 Jg13XBh7qlnwqULHWihUXgxYexHRbwrVf0jGDeaBow3l/3PQ/UXhBtOQ9ZIlHD7AC8
	 YZ1sJNlv6KxsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90746C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908463358.30263.15883893471431090115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c55aaf6a718f4216bc9ce201d90879ffdf25a45a824e25e3ef5bbdf7022fe7a
Date: Thu, 22 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769084633
