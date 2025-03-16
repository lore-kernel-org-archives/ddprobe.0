Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5536028E3F
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742148594; cv=none; b=TaPtbhQwqzsIpN67DOmBRs44aQn1gyBQaGCLTE1364hpaka8hKzwi8xBOvPUGqcnktgNup5vI8TF4BYLWRnkckhwpPAzffdYwbCjoC/pVhXEjFdxr0P97JDx4aIACm9qy16W0A4pO3OwBJL0wRrDG7VL9PX9kkoHBnLmYcBcZDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742148594; c=relaxed/simple;
	bh=EqVdONTtX0g/2nv2xaXrWFOsMsdHIqBtyDjWuLG1Zw0=;
	h=To:Subject:From:Message-Id:Date; b=th4ZhVH86oyOyJrDo+mkH13PFOPra3Sa3OCY0nrmbwgsrZ95r0xBgqcT8iUt2C7d3GqHSRFzB7eeOAbrNe96LArGoqqZiLEFkwnDufEMsdAHQBOu64ohXkjP85wny5qWMI7nGMiyo4AUC8YjCqh+rrnfISB0Hvkloir644U7Yv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sW/a+hgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sW/a+hgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A4BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742148593;
	bh=EqVdONTtX0g/2nv2xaXrWFOsMsdHIqBtyDjWuLG1Zw0=;
	h=To:Subject:From:Date:From;
	b=sW/a+hgcnsRvOoIqg7nO2s3uc1BsSd6brZminnUoK2G45uuqykMd56z/1R529lLUX
	 LL2mpTwuk5DCbwjtsk5TKk+fyG0RtWQVo6QoxUuJxHWr/nPopQRx0uI94U+jJxUYqv
	 qtTVMaKBEZqU8wF0Q+dz3YwbXMkoosQnptXLLtfEsFzKrOL9RhYl09q+l8+ZoHvHEs
	 Rps/viam/lI3+nIoyzCGdq7A4Q6CPNyvh/mod7kGVTHa9l2xbrsFuUJ38569EqtnMt
	 4LOy+HwnzZ9a7//f5yqDzUhp+slLGAAPzl9I2DkU8G+/t3gcuurJOonGKJmtZkV7Ui
	 8MCk8liP5D98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E67C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174214859362.3573.10378427685635436515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a418dab2355e016bbfc1cacc0dbf401858d6e4dcf2965bc76f2264bf1bc2d6
Date: Sun, 16 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742148593
