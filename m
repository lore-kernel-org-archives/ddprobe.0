Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F752C1A2
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747568395; cv=none; b=PS55wTje7+b/6m+GpNpnjwbAHG8tkS/X7mZAOUPaOZc/uj5ejXVorJBXW4DDAwwhWU3aIwQZtNSBgUg5EwEwEGOmK/O3TDhCWuZP0IRmibpxr3KIChgqTyKz4QNjydghtMa8GN1OZcD2TEaQNqd5S4ZJn2fDYEVs05T3r/PVpIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747568395; c=relaxed/simple;
	bh=6ocpt06PsNt2PcD/OUmWwvrFlmG7LUtzAcWoWJx3E3s=;
	h=To:Subject:From:Message-Id:Date; b=Ws5EJgogn2gTGpachoy6iipzceVHkav5Eso+VOXbsFp8PpGexXivIhWHGkpmx027htjMryaFiSz3vFpv3yZDNnESlIeK/JfAqr5CNbrPnYdUL8QOvtmIy7XCiC4jD/tdHOABN3NY+E9Bzhavr8eleSCeVe1cqIa1xoTAFxIOpAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X50zij1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X50zij1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747568393;
	bh=6ocpt06PsNt2PcD/OUmWwvrFlmG7LUtzAcWoWJx3E3s=;
	h=To:Subject:From:Date:From;
	b=X50zij1q/Y0eyHzzd9w3WUI0IIeKDNxqKb8F1p3wEkvi/nEQwcfH9eyb8xqqz8rzl
	 eUgeesi0kC1F12NokNY2KcRyHW5nCHd0MGnalrPuw24NDQY/9MOUoAPEg7j5NVEiH7
	 IzQoQvmPMtnUXecm436I93Tb+JkFfttwTUFZkw2L75fFOZbWUvT9eJWYqniLz9AzEW
	 /l18rBuGsGkstuJEGSngBp9H07b7GHhdhU//IHD1bgzCrmi+x9Fv2vqX4QYx0fN4KL
	 MplwDD/QWF39Njr4JlDQ7rniFctslAOkrQMKRgv80M06Bs6b2gQMkOW9UXZCan6oGZ
	 Dalm/LAIs4wVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D3C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756839358.11529.14346059642006097881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffb1795f00cecb8659a57d7a0bbe5e0d57375e6b3702b99e1d3ae5a51ce0c1b
Date: Sun, 18 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747568393
