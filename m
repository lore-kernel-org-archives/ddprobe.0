Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4957DA66
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788574834; cv=none; b=LE90HDrfmVmZMyFpOHIxOG8EG1Rw5xnOFS0s2nNU4GHsh1JqZ/tQ6qRR8nyqoH70n6Nb5ikWggQ5O07BAH61SRSWZnVSEsR+rBhKYVMJcV4E1lKO00hc6osddk/hRVRWRkOkbHeNCLwdx4s6u5DG1SgApiwcMg3Qylnpdri2AUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788574834; c=relaxed/simple;
	bh=/qNiZJmY2MKRjqcniAswifbWpcy9VN8DpZaHanYyEVk=;
	h=To:Subject:From:Message-Id:Date; b=TA+BO57f/n23y/rCZheN0VoSh3s1GtbkLWwF68LgBjAyCAisRXY7UOIm+Z0yZK9PoETZBpS03QGaIwx/Sf+TW6e7jeM5aNp3HMH8PrtX49Kg+WLIgpTTGXqt5GdpFWKNibr9xLSEmBsjWrOcNFyXJzbXIVYXvbvB6lf0uXcq5eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxcAc+k7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxcAc+k7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AD5C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788574833;
	bh=/qNiZJmY2MKRjqcniAswifbWpcy9VN8DpZaHanYyEVk=;
	h=To:Subject:From:Date:From;
	b=PxcAc+k7KCNZk6XRAmrIN9tV3tCwRwSqxfBcZj54TX5b7tpOtoqzZ8Lk2CdDgUKf7
	 m30NEJENEs2nHVw9+QMNWfL6In4XvKIPmkSzzb8KnGSKG03Ui87GaOPOEgI5kKEyvu
	 fBRfE0MX2X7yY3iPU3/+7qFt2UPI/csfkzcTPlveq7YxsGP2Kb+MAqt1mXSp7itCWi
	 JG/uQICbHoRI3PwVNZG4mZHmhZ6/JyO0+9naxfj93CfmD8cEH+CoyiUROfjRf0fs/W
	 5Nrrl9x6WIMna/CDceZj1hnqwJeuIZQCpXK4I6C4Bvu8umRYV9i5W9GenU4I+mU2U7
	 GhzMgPA9pZu4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26C6C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857483369.11958.13648092078610006699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d207309e17ecfb4bbc63fcba08d21fa224370a682cb4926df4783c1ca197f7
Date: Sat, 05 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788574833
