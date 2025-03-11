Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314FE13DB9F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741709934; cv=none; b=CbVkVgqLomSAgijM2rZOCMDFcEKtXK9XYXffZdkaYpx3Bq/EadR2xWLhWUhd3pRBKtKf6yCzsfNC5u49zSoMDgS0vqE4NDA5+ZJgkOJEbqc7T9oOQSWeseha+npqWZiTo49vKOFPaEl21L1OiARhXp6ahx2Rvxl1K/LH9qHVveU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741709934; c=relaxed/simple;
	bh=Ly1NpmzHg0vAp4isOrLfrH4HEp4rZGcEfbmXGMCuZHE=;
	h=To:Subject:From:Message-Id:Date; b=aGatpFHB2pGkesx6Oc+4+Y60vHVJrsjeoqhiLCMXARKSiWqVsVNOPNw9L8zn1NeXfAJHd1ALwsF8qa8Mb7IG9drm3uwW7UsZ/3ovkmKNxMA2ad5TRZyz1vr5kh2RKQFnDy6uKelSPm0rhT6kLaYoxyIRg+GcMDf1CpQW4NjDdOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UN77wxdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UN77wxdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20ECC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741709933;
	bh=Ly1NpmzHg0vAp4isOrLfrH4HEp4rZGcEfbmXGMCuZHE=;
	h=To:Subject:From:Date:From;
	b=UN77wxdhxK6mkrA4e0Aujtni0YYlTlERHvq8KrjXyWYhDmGDlDX3quijykVoxxBZ9
	 ZpON98F3UA4w9VMSQf/0L8hRvOeeWMpZ+aQEhvcyZjWArOadBR/OScj8Pt11/AYxIK
	 HkFOxeTaFBBbazxQzxwBoD3qAaWu8WLkTtK/C0QGKYtTDTZOphmLY51YHVPN4prw0v
	 LkR4lK2m568Ums8gwSNgZeo4CzYjaTSEMdSL8mA/LO1h8nqJCq7QTc4iVxWlwC5ICJ
	 OjJKZtAsdFIl7HOJQl3tyzk7aQEXUYzVMyjWaedyISxJLGqr5C2v2FdXESgtWhN7/I
	 +fTkKdTKs5Iaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F438C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170993357.32425.5048316601592788154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898de3dea969bba9a1eeb999756639ccdb1cb4c74484c197e6f1bdf5ed4d4ea9
Date: Tue, 11 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741709933
