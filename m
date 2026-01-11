Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E409318B9D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768122834; cv=none; b=k7qPcJQOMLeHFDBj3BUVDNeuQGz7YYour8CHpAN0g0Dwcon75tfP8QwQsnqutZ37akPDC4hzAneYwOZYHFzW2VoQ3mHqdatMfK9qmUUqu3uI71rw02BDM1GW8cnqtfpx6kNK1UAsw5ElPsRgcJ3BDcApMu5i82WOy4aq8whu2RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768122834; c=relaxed/simple;
	bh=yJUQNbInzkbdlExiY3GbLuSpDX0kao13kkyKvHK2zCM=;
	h=To:Subject:From:Message-Id:Date; b=cBO/TlKDLUYSoJqeD2WQg4suRQ0WHpUBai762CMKVbyaXL2V2uv0qGMXdTHpDewRsst0vHMC/s9x28brUqB0+hrf8Z5RW/Uj9qQJ9SIXJzA7nakAYuhNg+Xrv4kK2Wf7Wxi6FVIaAoS9bHK6wI/s8Vfsqc0BkMjmC4xN91s/xk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpOBT4nA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpOBT4nA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5921C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768122833;
	bh=yJUQNbInzkbdlExiY3GbLuSpDX0kao13kkyKvHK2zCM=;
	h=To:Subject:From:Date:From;
	b=YpOBT4nA4VH9Nd378ij1xjoP/hvbPO9KSkk8tqPt/HW/51YZnthbTcSPXPAYXcGQo
	 TUBg9Z5evhaN6RRB15kb+S77toyZWCmMZ8jI13njG3dGmL96wGuLmbw4W+hgLSsaQW
	 o+XcrB5fbWXjj8eA34llmgu5U7DBfTSSM5WwrFyupE9899geBDgqJAJoRuXmiYRsPs
	 S2O+RUjMBhZ+Rs2xrk7y/C9d8hVhGD16R1zESBWc9sh/S9cv4LA7iPiypE6oAA5jJx
	 /pVd1djA/MT6MK6o7dH1sfAQOvZKuefoN04fhOTQIoPnumwdeKSQg6HewicUshvoVs
	 31N9gidWUtYIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2DD2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812283357.14399.13725924725522895962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a588a9325494e14beaacb54b1bc987bb3c1fc655cac1fcf13b33f237d85168e5
Date: Sun, 11 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768122833
