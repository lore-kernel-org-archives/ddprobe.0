Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A8425BEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764070373; cv=none; b=U0fUpaFyjxE2BKS7EsNZXhASRC6F738YQP6IHXEJClWXr/k7hWtgeeluRoQW7VGOb1MZoZ/B9G7C28RQevgykYXTSrwcoAGhQyVSdqbu5YrwWrGlCGnyGztL8HrCUWocut2lD5sLOXkMmxE3edo0Waspu1U7wgzRBp9Y+aaf5MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764070373; c=relaxed/simple;
	bh=CdfwmtWt7vcHGz25oHdoGw8to/ciL0Wp/8GnJYgsMaI=;
	h=To:Subject:From:Message-Id:Date; b=uEcbVaWUOqSUtpRlxmOSJOJmteCdVStPG4abMoCFt9PkksFe1TFHcxn3rPYVy2/BXzuDKh7pEsYLotN4d7nkfFXi+kIo11zVj4HCgpRbbkJ+HpPF5IaJ6Xm6RpHwPbTf6NS36LdJ+p11MfTsRaCy4WC/QJ6N4mmA5B1otnqUt7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhKCCXBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhKCCXBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19FBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764070373;
	bh=CdfwmtWt7vcHGz25oHdoGw8to/ciL0Wp/8GnJYgsMaI=;
	h=To:Subject:From:Date:From;
	b=bhKCCXBXvTClYtP/YoWA12DeJZP9VQktMAHKD8a2Ovv7WfsvFhVzeVW/QxJcPupve
	 10OBbyERvovYxwqLSlhGimdF2bp6i4G2x7QPFg9EQyUIIqxf9gBaSDs1UbFMu7HqGm
	 8lOb9x3/SYx/TxwwjIelFYyvA97LPESb+buP8YKSpFa0ZcHp+c/Lq1HR89VeoAPg5r
	 LlsMK7EOV86VeO0lT4xj9vwtULvV3yC+1m6SqKV72jR+0kxK9JJWO73z2/w3ksdj0J
	 X4XE6IosJWKvowc4YoHlNfgnSOS32JN6MU/ZSMx1ZzIch+HMPPsBYo1cWgb/rKK8WU
	 MYVG71bBMMgYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B08D0E6C4
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407037358.12626.5600928884418874421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bdc6cd3a97b41fa20cfb751b443578f0de3b8b082313059d15a8c24f5d14821
Date: Tue, 25 Nov 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764070373
