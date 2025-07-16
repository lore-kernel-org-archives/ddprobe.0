Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9F53FE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752707394; cv=none; b=kUNOSibHrfQOfwIVCzQ52c/eQw0d/GgMQMlAzt+3q8QKtWa2FvLAs+tAPSI8RF5mQ1oCHEHMBFnoVtungLkZ2BIwT3eTNH3OlTOC0NH4eMk9jWT4I4P3EhGNrdzoLQpZkksRdu+7YBVshGgr1CfwypqLuQ99UODv09vHyf9fpGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752707394; c=relaxed/simple;
	bh=LuuP9DwfIjlCmMuwfwIzoDVs7sIS8onlUlmSRLRCMAU=;
	h=To:Subject:From:Message-Id:Date; b=Jrc2r5PK8pTlJWdbi7Ot3UOpVzAAU+QCUEu/gDmYZAgRLs5nmhd0mR8pSmb81gW2wlm+2ahCuZvVbkgNxhHCSXm8+MDOqaUJyM1RRnVQaN7U3Fr6tbF2rRcNoMzt+TTd7U3Z/wzcStI1CoqHgb+JhZzCF8LqMvZPfF3DrvE+qm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=japSn7p6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="japSn7p6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36DBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752707393;
	bh=LuuP9DwfIjlCmMuwfwIzoDVs7sIS8onlUlmSRLRCMAU=;
	h=To:Subject:From:Date:From;
	b=japSn7p6h4tErwLO2YO3poqUnHulFKCVRLnSi03IfLXQLh/cEWCzGNDWrVAKE9qlr
	 vHCZcAQVlITpSduZoy9TSymHYLZN+BQEO/mrJTUck3jPSIyytuq8/K2nwuzGNqhGb8
	 tWaw90iu6BIndhPMcrwTTiRdpni+00PmV10GBdjI5V7DxwjshqUi/o+Yv3c4getDD5
	 aYORDylN9LEh+hDflNoVEsMZqoInNE8YC47GjumuDydL/vIrdpu8HGLI+1R4z5hO6J
	 QRie1jisAcslYfLSSOpTF41ZPR7Hk0Fl1W0mf3dnc1LM87rYNI4/5e1MJ2YKKJByQT
	 3hEkj7FqXUVHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9DC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270739357.19556.3311838181411294254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53a94583f1c7ebe4e8e0470d0caadda2586cf0b6b2954c785f9637fe5a6f4f9
Date: Wed, 16 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752707393
