Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B21235072
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760311794; cv=none; b=iR71cissXIvc/2+IVOb3uePmxOg7quHetgBznBtwMcc1NXs2TFivk58IXmaSoeagDjOmA9SoU0moacmnWTlkVm0ckBEqG4YAa7n2pIdKMmX+uNoiGTvjmirkALSFXRlPOl5LPcYuaZoBJI2CW2REpDuykEbkwPb2OmUOjkb3xdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760311794; c=relaxed/simple;
	bh=Ffgref+5kWM7QMrB3dyEPUWxfvEkr2CjDDEAMSfKibw=;
	h=To:Subject:From:Message-Id:Date; b=jUwTUaguCc+rLuun5ZYQgw0kF5DHCtd36AwiRDbmaJDn6dxFH0F9SMtUa4Gzrdcvr6DIuRkwrC6xg65jiryhYQ6IGB9t0KJb60+t9TRy6D+eiHKjRM3HzDWdEyt74m3Z7Z012KEpBECqxs7r1QFTX+KZemod7i7/cfIf+27j7bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2iVMbF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2iVMbF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CADC4CEFE
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760311793;
	bh=Ffgref+5kWM7QMrB3dyEPUWxfvEkr2CjDDEAMSfKibw=;
	h=To:Subject:From:Date:From;
	b=U2iVMbF3dXbcGjG99o9TNUwWoCBOB8wmQMXpjQTwzptzv6nh8qJrAXvhcVCBqngOv
	 Uv3LixEmpFmqysYOTKfWCPixJJ4iHm8JpT6+LSZbV1uZEcEHOsSDQ/2/AbsGgn/RFJ
	 wrbQouQcfcs31sMCAHeaWK9gkISRZEwVAZGk1nMzFnkxW9Jy+bB60aHSX/QqPs2iPj
	 629ydBdINfYN6umTCpoXrkSIlWPd3XH3QDZgBGunU2zcKUqKFzmEkfzvfkMlGZhkV6
	 ThTtD0eXNiaeivKlPf7OCuxw14J66gDIr8DbPZICB8lYvA/TD03JGXLH2MnhWIUv8/
	 MQtRszeBxfhMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E6DCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031179357.31246.12635485037102111672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b1762b388a0ae4a8a5781ffe63b9178c043cc2e4d7a59a8a2756eafc30c879
Date: Sun, 12 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760311793
