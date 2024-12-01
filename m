Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EEC1D86F1
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733092554; cv=none; b=q5imECRkyZkEI0H6p8iJcym5ZlZLHeY151IbloZ/5aBILyOCePjfA9F6o7oxUPeg5nk5QriosFz1uueo3R3iXHJUGXNGqPOjDP5j1tbHY6z/AYDGWqc3rriHLrNZFO/bfagPotaMF/jzIvUr0WGlD2g2Yb0VEsBme9wzajweoY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733092554; c=relaxed/simple;
	bh=SujUdFN54nw9WvwBJuWd20pomxj1YlPKXJ7VXwNNU1Y=;
	h=To:Subject:From:Message-Id:Date; b=YkQKOD1IF0jEoP3vTlGAtTYO8N5cda3Q7XIcSUyOtzvqRpAt+C354Dt27TaCDM0NbvjPRB4nuy+ak64yv/2cso+v3iIv4Mw4gxIic3YMzmjkc0SD957QukBMuX9ujSaxgagilDqLb27Vlpadzfy1323Q8YR529UuqPc6TND628I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpGWXC8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpGWXC8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50B3C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733092553;
	bh=SujUdFN54nw9WvwBJuWd20pomxj1YlPKXJ7VXwNNU1Y=;
	h=To:Subject:From:Date:From;
	b=PpGWXC8c+cyUTN1QJT4NNDy2HrkoSK5v3TCaGYFvoTh1EwWx7pnVSQTiWIW6nHAeG
	 JH0H7OPbir9ZeU3Sgmva0TQkZ4PKB21HHoubHK5TSs7Ux0jobdHBttUnrvCsdBnsOI
	 AexhS8diol/haDov+rBB3T0N5/Rz6EOZQFK+axS1jNCWIm9eKnxhHQAOOf2mu1qVNP
	 2e+eiYNtxVHjs35rS4tCzO0XZXjz2bw4OxoaIOzaAaUDSohQFYhMI+JztUyGIQNH46
	 Q9Qbypn8vznWATd2qKjEe6PJt+eKtEDSZECv8nFgyI/c2n17Tmm2nGfjFCu8j4l2M3
	 vHvjiaQhhSEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFE2D49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309255360.13785.17278305314073394991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257384511db0033254a95f5a81ba5e54f0c1cdf537e74426c619616dce31f252
Date: Sun, 01 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733092553
