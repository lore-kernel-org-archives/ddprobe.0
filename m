Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332572676E6
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746169794; cv=none; b=XMXN/GHolSqx5dVO2zWLDgFN8VVPNs44WTQ+3ImSUCdDMf6ejjhF4+ukMZcitDhun6qPdN3hFSHzfv17XYR6ml9tJSBwMUj9fFLbAbIlTjt6VNggy6dY24CeW5m7dTcVuGuy1XW/tkOVlyGMMyxMo48vcAE+Z7Zmtu1cyOXMLh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746169794; c=relaxed/simple;
	bh=D1QpQ0WLFtrwLAjoawTOmGRmh2R8VoSJyGdP0FPMsNs=;
	h=To:Subject:From:Message-Id:Date; b=EQttZWAT8xK9St1kp61KMzG8E1F1s75Ew8Jcv6BvUMaTxTBUXa/9q3t5vy5+2riZieL2msS0YkZz9UtEWLaslhI1by007EH0QF81IpEFcEVyyQy7jqqaEjrq+psifjpY4v0ASyRYRcRjuRzrQLO96K8Fiz7JmR+0ios+jPp7deQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7yfBBOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7yfBBOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C9FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746169793;
	bh=D1QpQ0WLFtrwLAjoawTOmGRmh2R8VoSJyGdP0FPMsNs=;
	h=To:Subject:From:Date:From;
	b=F7yfBBOymMpQLUXRqdqJ4/zciQReiQRoDDqXdQQ+K0Z4mOHpqXGwxgz9Fuv/YcvPl
	 DFNoYj9ng4tVS2rao7h/7qXYTIHPlpojaBe/Mzh1Sl3RmOa3qLQ0GWFivOranh6VRx
	 bgwq/45Y0yMf1X6FCk64dgHrgOVUV77i2dGTKJRI1Lveu4luL6NAOSJDkaLJj64sqU
	 pw7wHyS/oG5yAyB34am+Uy5Qn8hBy4Eepv2AMVkmVADEHFoHv1fmgveq5M4c8fMkYh
	 AUOE1ViV7KqIZJirzxhsNRxEok0nEcfQ0R7R2OPdvjJYNYaHvzHTSeN+WGl3u4Qv5S
	 C+lQHaNOUG+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC9C3ABA9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616979357.3395.11076167010732065762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45598cc23ec115cb9aabfba32a19a96da26fbaa8ab2f917472c06850a0a36691
Date: Fri, 02 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746169793
