Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A73C368
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719621263; cv=none; b=lsT/EAY/Fxc9koFt49EQYMmZudJ/eD0m6f8DiEbzZyq61UsAclmZ8lRDZiOH3GN6qzbCildC2VEwPldPfFC+3JTB91OYyFz6Xo5NTOWEMMm+XkikrjpIcbJUdHaqGal1AsoxrB9B6NC/QdX0yxjINoFpzzf3ds5XXrdFdpYwxI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719621263; c=relaxed/simple;
	bh=PSnvuRzP/QcHd6xgwEL/tsBGIHUi6g8GbaHi60xsi60=;
	h=To:Subject:From:Message-Id:Date; b=QGQFskvKCBz6+ToS9PyaT5YbeZ3NgXH0bGjxYiG2B+KMeXRKLZg845FFnv2nsvzOHI4jQ/Mo56EniDphqqDDen9HyXb+YwaO/pOLgnQo+28c/RXhsIKbC2nlFzn/8q3ndpYzQmRkVjVP1A22ErDahQutJHqWeH2AF+SbXjYu3/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvZleVSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvZleVSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34C5C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719621262;
	bh=PSnvuRzP/QcHd6xgwEL/tsBGIHUi6g8GbaHi60xsi60=;
	h=To:Subject:From:Date:From;
	b=hvZleVSN3afZOhsZwyYqTeEGmGoff2/jhX+bI529NpM16gU3yXXxKbr+/E/+tkYjw
	 YeJFY1klyL4tQW4u3u2ztRIsCNyi3O/JnY8O+4TeqebMwyBoTiaembuDh4eijvCVca
	 oRaRPyUP09T2Ww83KSgd3D/H20V4ITw+jGEW3NH6r6Pcwy8OjSBCVeC3bSXvrfWq+o
	 6DTDgqDKY08nmG26CJTdKC+iBZEKNq4mUxTycg3ExsUhrOgFhha9x7Tvz7nXpo7szu
	 bP96PpmRUUo9xnyrSSH0Gipvz0T4OvE1YoDFjdBCsqMrRrqvDoYAeTkHPdTV8reAU+
	 zbDa4OsehVgKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE840C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962126277.16218.18334391360759914289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540fbd391a417fa506931f32482e10603a384d722283529c62c27a1a1387014f
Date: Sat, 29 Jun 2024 00:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719621262
