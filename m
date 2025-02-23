Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5725D8F0
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740334734; cv=none; b=lC0GyXIsUHyxQY5mXfHhUUsyp64ZBtq1MYLwWddR2eiAsGAzoUiSCVCzXU+I4gYRnA1vq09KMtYwtAAcX3WkmUlVqn8ijMFPuKPGvG/TT70U/W/xsE6e40gzdhblWb3OEreyRz4z3PfhknFwPg362puM+ckVHY5xJ+GyXemWydc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740334734; c=relaxed/simple;
	bh=nPZ4NJQqncVZRc/16dTalCYTmIihkO/8b+v6CydBQl4=;
	h=To:Subject:From:Message-Id:Date; b=NrfNkb/3hPEV5Zlp+nsw/CVOiVO3Q9tSJglBrcjSaE4pUHasoenGX0WDnbuXRFSmrd+Zr8oRJVLCOsfp2zEEki0OrAol6slddl4MvfpmWNkcyCnHOu+OQuIBXxgxUczKV1GvQEhNWli1kfENwtEc7xHmGyf6KAl+OvqziV2eg9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoL+DpoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoL+DpoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CB2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740334733;
	bh=nPZ4NJQqncVZRc/16dTalCYTmIihkO/8b+v6CydBQl4=;
	h=To:Subject:From:Date:From;
	b=OoL+DpoOe1kLlXo/IUbaDjU4ddX2kMAeWIrZYLg6LvVyubIZr5oNKAv016FBxbMSi
	 8hFxydsGmoDt4QuE/UNJFx+5vMLJHkPlnev7awNVSjYMNu3sz+SlypZAhtjQED6VAU
	 FIE/0j8u/mfIpsb5yK5GWi1BLKEa6RT1O6NL7efq/nZ7E4PTtvP4SwORakMjImfeyJ
	 aeXaZN9a9OWdEmgxP+VS0Bm30ODgjWQpe0wxxwqUx89Xs9HvgTNmQOonHjsegjSi0j
	 Gql8AWXJ7IlSRK8e3MZDMrGoyxgBz9HAXJPcdTwtjfITWpP/DG/owmKkFHA4KNa4Vy
	 6UxpxV5lU4UDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AEEC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174033473360.24594.10657717510776762406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b282142078844deee61440ea6c7783803a01a21e5267178b106f4806e0595c47
Date: Sun, 23 Feb 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740334733
