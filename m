Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB8837998C
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786434634; cv=none; b=eoZsopiZ1LWiDWcRht+RZ+LiJhk3Y6bdLTh/k9qGH4NfRhq8fB2kwHRxq3IDKJWAuqnEAKGEfQk30PIJVBu+b0oADDYXHCeyt39a99WRea12KGVWYJxXaxfvzets4lLxeUY753T2cyFUVXRa+HZdjvhBCJzcKiHScSxJURQNJYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786434634; c=relaxed/simple;
	bh=Lv5sOA5mg6aXCgC3gkW12N7w7EAFnO47qwOcqDgmjxw=;
	h=To:Subject:From:Message-Id:Date; b=k7uAZqRlvTyxumLsZQ/VURpB8C5EP3aK5TWQirQEquNFaQG9M9Cz1I+LjQEG+bMMWixq3i3jUDTXzsjeUBTG/QEjl4CeP9yHB03cgw9WZnoHzYW1OwM0Aqy4r+bbj6B4AQxBv5aaRLlCV3ARMpHYMkrejhJMtzhBSCrpEWudBNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIqtLAVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIqtLAVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A4FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786434633;
	bh=Lv5sOA5mg6aXCgC3gkW12N7w7EAFnO47qwOcqDgmjxw=;
	h=To:Subject:From:Date:From;
	b=lIqtLAVuB8U7LoN14yeqp/2emtWc68ckooacAFB6rnZWqT+GNuzDNPj3+npWIAWUF
	 2uGzKt5isVzQJAu9W4eclySA/siSOb5uNrdQA8Ok+F6ymg366oNAaL4bYb93CVGuQ3
	 kA62ZtnL6YNXg832NmDXlH3g4Xe0eGml7lrinyKpjpE0Bmexx1EiZ2pGDhCSz5c8VG
	 2Hgvw4kFkMVTjMNb0HnrSdzqCKQe1WhkgEwcljrc98uBonr8Lxo5ahgixWKFY0Q3W1
	 xXspiLVdqrJR9dOHP78gtHYr8vW/N6ZtMAhEUWK30g8ehXJYCLFDfr/aZCT3DABS6O
	 BcFLtvE0ZLz+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A870BC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643463368.11719.16968355228314053246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dde3f9c5e22a009641c6fd35d583e08d425bfa01e3b991643af764bcede10fd
Date: Tue, 11 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786434633
