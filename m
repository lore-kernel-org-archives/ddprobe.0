Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BDC6D17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753934994; cv=none; b=brm6fu+MiyBJ4QzT3yNFEIb8zegXuS927CXycgpYtHTgnUimlJ+z1d5N0LXk1BIjy8Zce8EW7Pzkjr8hXYKlSlRziWLA35rPS3PqzB7/k1dsm5r3onSdGrpjKr7gjdqWP6QY6Qa65uw/U4i71TqS8YNJ1J3sEd+ZG3/Ieudwj5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753934994; c=relaxed/simple;
	bh=thfHLnrmvsh1OEPCcNdRA7UcG8DrP9xXoVfL4cT53Ek=;
	h=To:Subject:From:Message-Id:Date; b=Kaj6a82RAslMIvqsF1GMZhOSdybjSekmVeY48/mrC8yprMk6Bl7RiiReGuvLufyVrdufh3G25ETwp+ap1P5UuLiRbea7ZKPVNzFb30xpnfnBaNbSIIasBN2Gc2UFIaVZLpvHvOHsAkgd/dNZPz89enQFF5wlEmEztclUb01cbqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgC2MAAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgC2MAAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A7C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753934993;
	bh=thfHLnrmvsh1OEPCcNdRA7UcG8DrP9xXoVfL4cT53Ek=;
	h=To:Subject:From:Date:From;
	b=UgC2MAApylqNTywynRTYv8oqQzBBdUEZ8qf4gUBgOxaszWWp0W8fovfMOIGiC3GUZ
	 wHdT3Q+RDAoJbt4XO/mFHd5fzJhsJ4nl0cE6/nIliWQh9MYKaWB5MWgIAczRvrFbU7
	 RmCjp6z6A+0YJiIASU2D8SulXxuLJvZGDeC4UnJGd8O6gR/GuuuuIVIQhhi2AFamYJ
	 L23P1X9dE5eDmZuZ9PeXBci1H+d67uklh4nnrOOsQwtkTkn3aHdP+6XLT9JiBzxDnX
	 odcLzvkHlRTZ8oMn1bNPNBrqZZy7ImO3Vzgya4d810sQzNRMCUNjsJ8RTOSXg/YIx3
	 whB64RtJUCQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD1C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393499357.31748.17500880671887273332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7df5667028db8071fe600301420efdbd1ba49d1052ced0273f6e22381f0baf
Date: Thu, 31 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753934993
