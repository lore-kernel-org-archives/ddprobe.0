Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39567384CD8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780949674; cv=none; b=qgPDY1pJ7QSVWaCITC5PzqeE17PCqjyroGQzdZv8VxmFBH/Mz1XggNnn+j97IeWPPbD0EwxorzdCNiLilhJaf1pZREJiroi+YdMBQLFEkP/7xafXY69KNRq7b/en3+eZb2uaG+V+l9pDp/Jd6IkBa97SZOO5xX9ujkFxGKnZ4rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780949674; c=relaxed/simple;
	bh=P4n91dF3vbOV/sRxF5/qYTw7oavG2fdOdad9r8lvFoE=;
	h=To:Subject:From:Message-Id:Date; b=EI1S9AIEEWqetoBSGwOq6WAD9P3reX5QReu0/BDjiMnb6DUpmx+hCqT+3zAPoOTwE+bHORLA9HQkVUBLNn4vPM0yY5N+rEBiWAusM2ZbKoo4XaDgPEiYEp7/VWSiodqj84D+hbQGHGjhT+fwVsSULf/KosLiDxW2SvbWh/oMXvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lth2J5Ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lth2J5Ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D71C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780949673;
	bh=P4n91dF3vbOV/sRxF5/qYTw7oavG2fdOdad9r8lvFoE=;
	h=To:Subject:From:Date:From;
	b=lth2J5Ov9Pk2eRCutwFPwfyEIiWct8kJP6hnsYFRoig6MSSuT/NGiHjei+ZmlELZv
	 ltFj/WixeW0yRF51neHN4/d6yHDSJ+YLtWIb5x718CPmo3uHxr4c8Ck2eVa5T0EDiS
	 gLSHoNHzTCOBBSZ46slIrH4jWfhRlBu+hpvGgWfPhBKCQ/9V06Ya13C8J4UnbLHce5
	 /cPfQW8jkBajYedzdGk/aMQaRDF6JAQEB6lUqOJuQYvbW/ZgjpW/D6spTCDJFT7Jw1
	 elEvf9b5r6HK6rkzHK+5ZKDhduiFE8ylWvzG23BXN9mo4NEJOv4r2tYRNd2Q/mB9ao
	 eUdT6nn9arCrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5795CD8CA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094967372.24272.12378005485380101492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04215cc48b0d029997fc42ea74720410a93208e194c06b96d67a10b4e55eec53
Date: Mon, 08 Jun 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780949673
