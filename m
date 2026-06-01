Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0FD286D56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780350874; cv=none; b=WQcGfNnzi0mA1a++9IwQ5aJONrpUf8Sfag8I4DgiRDC5bc/A7+2aI42u0QQTKp+iTr8KrBYkPHx66PmPiSPCDnpEVS5fN7dOlJKwZEGC5NT5uKtpAx8i3dNIdrZlCIwgHYd3zTlVImI4uZemqdzPLjcXqW6pW3gd0A18ZtKxdfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780350874; c=relaxed/simple;
	bh=hyV01J6k8+jUaemk2YhazRMZNIPOQa/8UgoIbaj+eH4=;
	h=To:Subject:From:Message-Id:Date; b=q2BeolkUj6mBjW0+HVIEFX18VGjywFLEyS4lMZF6/daMqY3UpSTjnfhx7KvE87ymefYfB3ebWDlZElN5Mpmg+G+BX4iKptiy/ZJhKwMCkzLwj/zrdbyNAifCHVCkDD29UFtZsCCbxjWHOOY0ru1Bvu0SOYHkk0o66XOKgGeoCMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+l6s/Sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+l6s/Sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D82C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780350873;
	bh=hyV01J6k8+jUaemk2YhazRMZNIPOQa/8UgoIbaj+eH4=;
	h=To:Subject:From:Date:From;
	b=H+l6s/Sy4Y7PYKtNita7vODPxg3RpI91yg9TGIc4CMyZk7291puqvL8tPFzKpMXk6
	 EejojZS9pDZgP/Cqe0tjUKtsjxld0nRuz292peNf0Pt7ZZbh+Qc2illIgdhN1gj4on
	 Hpmcbe9lkRfp57JHen42cojdHFMHvunjtJR2vkStJxBpCMgvLsixyovE4p1NzixhXx
	 9zhXO1Z2LvYAG+SBfnpY5Rj5mfKiBkZ5XVmwgBDW+QftQ1+HsTmj9uqmWpPbGWTGIq
	 kTVcf/8V2AoEzK0+ZOUwIl8qVyXK9napvx7XdkIl0j3g5hYTE0m6k6soN7lKeZRH9v
	 OQZApg5zL7oew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB98ECD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035087369.31625.16317784023412514369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82b79697c673f7f1b1da81f39ff71af206ff03c04eb0f1e921d1725f4bc9ca6
Date: Mon, 01 Jun 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780350873
