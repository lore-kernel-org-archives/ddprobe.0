Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346358F5B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752635394; cv=none; b=IsPROykJ5DbqS1BzC7up47ty06K+JJUgA6swTlxxxOC+hOWTNSMisY1fxY5QMmEyoUa1OFuassocN6FM6HhKmyO/tVNRMbp2jgcsEBuxJ3bVSQCNDnsZNkcmgfNE4l6dJY670Bh4hsbABbFW1wZ2AAc7ftcHbjaeNWPAyl386D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752635394; c=relaxed/simple;
	bh=4Jx01TU2EP/sVRkfrnahNAhWW6vCID9bIst/PZGjuYs=;
	h=To:Subject:From:Message-Id:Date; b=I2HgSJdfd11RHdIl6bWL5lw6paGGevLMVb3+Wrzv8l8H1DE9nVyeSE45xqGJaQhBciXsFg8tnmZLecsbKU6t7G4wfjqfqPQDFexQxK/JmkxCwlGsOcljRgWJDS0KRBSU66Rp/Jel6Vedj2EzwbVfW7loUCiZn7CLljQlw7A4Xxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGuxeKjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGuxeKjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F16C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752635393;
	bh=4Jx01TU2EP/sVRkfrnahNAhWW6vCID9bIst/PZGjuYs=;
	h=To:Subject:From:Date:From;
	b=OGuxeKjG+oDjojxrGUL5wtLUbu0D1vRwhalpoyAKf0Llvzb0uSCZes7uMwpn+esgt
	 phBXcANDVFASyMadu1QEsrzmFsj4oBS4OCBLSULjXlithnaVbqbEkF2HQCluIQsJzZ
	 I4RiFWb3HVEI5bRSIKSzYvvwpAox0Lq1hTqVG8/yklh9Ww09lfdpDUAVyG3AeaFEBG
	 fUByLpsb/48O5zCKCBW2J/gCauhltnDdk4RgA2ZSX0AsEsaq1aEARsu44A7XeLhrX8
	 Oh+RUg8hQeu/w252LiK5SV3N3aCm90Auy2tVGKu5sayOEAd5Kg1YZSBeAikV7qNfqF
	 QJll0SiL03/hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490AC83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263539357.16697.5982612194867796295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5482bc8ab7658b2fd009b75e73b3665b20e36767c37b74dcd33a30b0d62b3b65
Date: Wed, 16 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752635393
