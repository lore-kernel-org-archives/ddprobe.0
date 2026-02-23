Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46A037474C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771877693; cv=none; b=SYAl1tfTjFmCbt5sSzFSJYDzKmXLn59/Vxu+0ZTbAcj8SChpFpKid/vpe16ImRYkt4dm1lni1qCdAXwpqdvSoZThEepiGpUeYck1eGbl5xddx+Nzunl4wxN6Y9ZqVd0zDCdkHaEdD6EY0F8V2GUlNxLkhdE4tzcqkBp82s8Op1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771877693; c=relaxed/simple;
	bh=tlsXWCHDXLauxS9yBQY1QTlADArMkewRWJ8sybMp6dw=;
	h=To:Subject:From:Message-Id:Date; b=t8261X2Zanqskmd/yCK3eMOLQp6F04mtToLCHB0d+E8Sgl8i3yU6YcZF3JEIckGBPV48pzwx3RiAh7VxU5JlJb2SPeRBvY7hhGggtxfLe2h2dlwsTx0C/vmDZiFoLYpp5/x+yokmS70xb1ZgZ7RbueLo3p8u5qn+yyfKFtFCk+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0ZxeccL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0ZxeccL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE91AC19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771877693;
	bh=tlsXWCHDXLauxS9yBQY1QTlADArMkewRWJ8sybMp6dw=;
	h=To:Subject:From:Date:From;
	b=Q0ZxeccLFJKntgdSmuXY43D40wVSOyGsGIGfMqfcgrlmlA4aH6vwsZwIaSwSEkDA/
	 8yITuzGMK3PB2diUFaFb5qzrHQ+mrF4PPXi0nnFTvQMNBNCqb0RAq6auy+YP8OY3Vt
	 vfkNtC7cOjt8efqUSD2T1cJPuPu62v4I1v7Dqg5WPdmoe+2GxrMIS3sACAHbD8RHcj
	 6y1fB1OTHoynQ1Q82bOg37HeVXqyP13u71EEu2S6jVitU4ZfxDTVRyt8GvW6wZKPJR
	 xOq4AVURujWklU5a/9nTs7IdrRre4k5YJErtdw9EgfJsvpEwwjUI43jVGuwNXKjyTV
	 YKDBkZODITE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423CEC112B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187769359.31155.18054056331672141088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696de3405f6ae0053667b579b741e18d715eed06f65dea0d76fdd830f386905f
Date: Mon, 23 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771877693
