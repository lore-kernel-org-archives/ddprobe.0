Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205531547C9
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760559594; cv=none; b=ec241aJ5Oy3K7ADBB2X6LXuW3N77g7sq/nO1nWB9bHemjGdpJsGP43+vBOuee8zytjGWc2Z1wV26PxgRjSXAELXwIFr+btLsZcGt1+4QU8EJxVrcvcdttKTafqUh6QqeOGYA4uATST7mQUnI9ez9Ytw/f+GKd7gFrfuTvKRW/Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760559594; c=relaxed/simple;
	bh=i0pmLYxRDVrerEbFa+MrL0iqSXyl1XnPdNm3aCrembY=;
	h=To:Subject:From:Message-Id:Date; b=bOgZ+jSFQ3wdlBYR2P4BbScW9doKpPX/fCzvOcBHqJM+gv8ybaMl8aV2b3bfdWked10CYCNrplJKzF772+KfSGz5IYfw6ASEpvzshK1Pa25Eixmg+NSwZcJaUgPsLGQeWAZg+zvVnN6L/jK1rjaMugaUma7b8tUyjWFpmmX9UHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJioXomw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJioXomw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B7C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760559593;
	bh=i0pmLYxRDVrerEbFa+MrL0iqSXyl1XnPdNm3aCrembY=;
	h=To:Subject:From:Date:From;
	b=rJioXomw+Fk4qnK4gGMJDYy68V7IQQdIagNW6tNCy0vU1DMDUIrMuW+5GXvxH7anQ
	 zhEa+GdHYZCDjePjPi7/K1pH8YloFjHP4eXJNlQrALegOJzqUlDcwoNvFZDKVDF//t
	 b6kL/DLgY7ZCLBaB75nmjoAj9bSlSXfVzqCCLgH5WFpHcU8d13mUw9sdHV+HBflXVQ
	 UwGLGq3drWvs1+8S8UfglGBsbDPIzeJafGJ1CzSfwOI/7z86X3LCjKjJHz2VIn4Ebz
	 kCkpsvUxePGmDzN1XTNMsbWA+tLSS0Gmrpb/nC2egAdj10OB8v6DTbFoL7AkV90OdT
	 IRHxo5MTjmDsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93742CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055959359.23913.68652072462245762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ada9f93626f7a2f3442b7907a302fefdaa1f5a87f82d3e8e14574beb308a4bf
Date: Wed, 15 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760559593
