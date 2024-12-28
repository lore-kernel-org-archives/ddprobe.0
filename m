Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C45B41C64
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735380954; cv=none; b=CzFTk8G+akyCzCp1OMF54G1/+9FfoApzeBwcRQBpdTCGgvT0+N5kAMohHr/O5yMF6OmQe21QiePIRwHE2qlfuJrFiY9eCPHa3pxvKTb1pDXGpUrYQdG5anjrJ2WGDsED7un33W4xVcO9tYSE8zk6xIJXwZcqFmyV/md/DL8M3FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735380954; c=relaxed/simple;
	bh=YZroMkuy6M6AFbqEUHDI4sUFtyAYcwEeDFOXuPPphZM=;
	h=To:Subject:From:Message-Id:Date; b=aLxTh8JMg3ux5+ogJiC6K1JimKY+9nkKA0XlDs/bp/vGVsbIxD2UP2eZCQUk9VdSODb5nTQnTJGtcmE7Ni34fNCbEr7QRshufCBdmZ5mXmbu8bOo2+tocz19S6EE5YYwWn1R/tagxWsb2CnuLSthu/rdlCRT3yFPoCjR44Sg24o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kafv8MJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kafv8MJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB4BC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735380953;
	bh=YZroMkuy6M6AFbqEUHDI4sUFtyAYcwEeDFOXuPPphZM=;
	h=To:Subject:From:Date:From;
	b=Kafv8MJwOe3+6h54lHuB6seghPLGyXNsnqj7GivdVq6Yk4Exi5lbDq3Ne0uY3TG03
	 /N65D2zY9wNHQzAPF1LyCkOYkdHEwksAmxkQ0OsLYt/cgDcNHBnoHt3HwaSJCETF6T
	 /DebOFg+9k0XhMa8MrXdkQLpSKqq/YAxezXrsftH+dMF9mXPgwZgDg+9U3GCKm8XVj
	 ClRrvAu1g3f3VX8IesEcIQ4DzcUIR9l/Dro6Ld25Nz7MxKqwxNJqnKiOmCp4Ug2kuy
	 A+ZwrtqxlNxN1rreXk9vqZaeyMiZDtC85GKKaC1gSx6UPVCxMpzGtBnhn0Oob61SzC
	 VWdCl3zlU+9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72C0E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538095365.1214.15160261524184880415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8063a3a61f361f241c8f23eb319ea9d59a650073cee1487a0fb644518ab44cf
Date: Sat, 28 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735380953
