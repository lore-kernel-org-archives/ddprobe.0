Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FF3219EB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766870634; cv=none; b=VEBJgogSC2r4uj3du6LQ7vbB8P+nxhYCRMuyOG43tO2RzSerwY3/DnA27czF3RmzrxyExYSR5Dx7+2SvpuchcufbeX6ypxGl8lG9+wfwFeCILjSoiLv8/XA9r8PVmo7jP1TBj7432i/Jex6stsXle6Hn7oEdbKumqd2UKpDQxE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766870634; c=relaxed/simple;
	bh=+nKCe5+cBkvEY4DNTXWNU3z4JvRkqKda3WZBMti1b78=;
	h=To:Subject:From:Message-Id:Date; b=pq2LHTAvtoT4BzIFs6qSWcGrmlAruieaaDWPB6mVr90P6ZfQwPzoPui95QF3Sq46ouZLlZlHWPGEK27YNLIEkQlIRa9SNnxLW4RYh5z0CkbEHckWjYYX/R+hEEwk9IG53tCw5wGe6uzTlU42h/LS7/tO9fbcATuNYV3lgitFTts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyYbTKzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyYbTKzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC78C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766870633;
	bh=+nKCe5+cBkvEY4DNTXWNU3z4JvRkqKda3WZBMti1b78=;
	h=To:Subject:From:Date:From;
	b=lyYbTKzQYkswgUcFC7sWiDv7WRd0Kho51pYpyb99rVgvCi4Y/hNRvSLNg2Pw0S72Z
	 ZTyDgE92VUwxZpuPMRoc36L7mvfajYhEMUP3HXgIstCgA1T+xl6IwmVmFNVexf37wZ
	 zGugZ/uXsNQWfS4LLXxdyjFL3RFuzwObSKb+l3LDGn4zomkfHibZUNPGvoB3mNQhMF
	 bPZoURuIId9NFFb65nBgIdiQ4x0YEjJl+uxAmPBhnxUqxtdbB56MU6zfXW1jh95K7A
	 u1DxCJ7H59vp0ihNiWti72ADZDQmJmRwkEOC5f5qfrLdaGxtk0QsDvbOV4ULeC5sGf
	 0puh6cvpz9vYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A7CE92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687063361.31359.216825126741547676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e39a9335e0f175dd276b4d639f56857cff288456a73deb59deb99ef9ee23320
Date: Sat, 27 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766870633
