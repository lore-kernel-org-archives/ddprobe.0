Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D728F2F39C1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761046793; cv=none; b=oyTT+iABFdilxCbD3q6h9l19G4NY98Q/YYJakbS62PVITfIFQstYAq8J88U4FdTyu6NIpSkn+LtfgJYwDBjg4N0Uh0xzbN8iMFD1jtybnKIAim28vvS5k3WzB7wkae8Vti6Aoz1fFJPMVoyvKvK4v6O23qXuzDf/AmSsoF0ZnmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761046793; c=relaxed/simple;
	bh=NQIl9TC2Tz3x6xP79KsY3ORlEMGwiTTCBjlKEmntiig=;
	h=To:Subject:From:Message-Id:Date; b=j+V+WME93IEEMKHUORtVnQKKMOTZOUBzONBOk2JBuqKzq9YVtb894a7l8tnpDZvhHj8G504r5wWY4TqhuRohcUbNEUX+onS9JNBT9Vgfiracecn38HnP/ct4e9FLGqHDX2YYEnt4dIkTX1+oM4X1HUolSMVQAnSPXNf93+8MyY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED1hYlwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED1hYlwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8235C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761046793;
	bh=NQIl9TC2Tz3x6xP79KsY3ORlEMGwiTTCBjlKEmntiig=;
	h=To:Subject:From:Date:From;
	b=ED1hYlwiiA0tQzMPvJ2rfQpnoN3V+kGalPya9/ako1JegN2p4HbdcjOiSL0PRL1WY
	 MnlphTZdB3Vb/DbQaPe5Fs5w8wPnOvoCohqoB2kyDLOizOVvj7uwwTi1QP7+C6dWul
	 7XnHzQ5Gv1un8F4q1q6V9mx37SctNbEciWaxgEZOeUfHqBsRACH95nX0676dTHCrzK
	 8MZLWFakr8+IHyTZnXqXZ6qUrr3urwZvcupviEsM9EpSX27rXBcZ6cAII19SbJTuXz
	 pgNwgjI+p+2XxSY14ZqjNxRnaTzge20fBpJaWR16fvS4YSRnQ/NikSf9K/Gcq4S/xS
	 GWlNFMvMI7sIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19E2CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104679360.12600.9463819958773932724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583bcba9a3ef41f2d1246d74cb71ce26d4ecd1ca83eccd6460f5a6af8d534d33
Date: Tue, 21 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761046793
