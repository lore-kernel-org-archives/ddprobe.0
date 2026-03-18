Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5E019C546
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773876294; cv=none; b=r6zA2ACiNnR5jWJ1hrwcdTu28nYaK5nPGbRGtR2Z6tq3anyk70RzCqhKbKFrp9n508+YrqLas5K0yZ8zivoXLZH9lWzKHEcb65gCGEInoXoQYbe/z/TCPpADQBLonZ12HBrtefJsDk+SoMTkx+05XzESdTkKFyrg/Gao6oKChwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773876294; c=relaxed/simple;
	bh=iEK9E/G2NWDJleoxLKpFr5rkXpqx4tMZP9u0NGGH3sY=;
	h=To:Subject:From:Message-Id:Date; b=ESnqswVrszMDLq1g7rmAt5KOwYK1JYL+HTGPdgG0U2XyvNZSKAroHz1Ohrf0KxbSvVw/ytK6nOz5lkrGU/+vs/FPNrg7nNKBYjHlENh/+pjqC7fayyRfehbZ4Q11pOhOvVMBUk7MwJ9BiluG9l/+9pnvnc0oawlO8t/nLkTOZoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wzj43e55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wzj43e55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1DCC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773876293;
	bh=iEK9E/G2NWDJleoxLKpFr5rkXpqx4tMZP9u0NGGH3sY=;
	h=To:Subject:From:Date:From;
	b=Wzj43e55W5opnzJL6yjS/4sKEIGK2Kxl6YInheTFPObf+5nZcH0lE2dZD0eGmkDzH
	 c/2r7l3q+D0YgaNoKYN5O04BudyoUIPeCzfUq/qhvbuE4OPsS1+cUAXg3rJwG9a5U5
	 v5s8DVx4zQqsDd05ceSXvyTF7BjuvVTF/kQWjtdjMJ957KWTFHeR97qK51b7tVfk3u
	 5CKmb6vAPCpOZUykOGaLvxRBRtZ7gZQShwX1AVVYBb5+t+0IWhjFQK/HUqjUurRXK+
	 G97zcuIXe0dy7HRtdFE88e5UGcmbq73A/fl7nq53FFKCuRrJ9YboEL/97/0Ir8zPDs
	 fl4ad1p97pcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999C81088E50
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387629361.8629.1903677418439499925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9513fe022fa8f504f13a9bb45cd5afd488a18ad9f8486c81644b117ebbf3bc56
Date: Wed, 18 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773876293
