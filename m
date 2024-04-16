Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5470313777B
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713293963; cv=none; b=rPPo5OuXnSYZnuujsTa6q751AR9s4TjBHHPMG3upxICiB2gMBXTWmeyQ7zv0p/iebnKZy6WzwwpW9uQ3NntYhuAdxnChVTsk2qo+6Ewb3x6ssecihFYh/OwAtKeLuZXEOSkFPgg51gDHM+Ah9xD10rdfDHYTemBilNY8fqr4eNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713293963; c=relaxed/simple;
	bh=02fKxJpuRuxyS8zHfz2LnM9rEWxQTXKv3S/dLhoXumo=;
	h=To:Subject:From:Message-Id:Date; b=rIKuRm4rm+j3L9TOx2RsVOvg7sbCDRwG95D6F8QhpdL72bPrfzDRItnV+/8gF0Mg6Jv2hkU9UOak44x7KiTm0PhdWoZDnkugK4AJ11a21SZvxDhrrLNDNttwotDpUZ0oTx9H7V5bI3M2q9knrmSDs7EREAL88B/rm28zsXbSph0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsvh03xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsvh03xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B79C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713293962;
	bh=02fKxJpuRuxyS8zHfz2LnM9rEWxQTXKv3S/dLhoXumo=;
	h=To:Subject:From:Date:From;
	b=nsvh03xlWcDhSi1l5mwWJ6qpuFKth9NInYYt9nP/uSa+hNk3BwIjk13tOiZva1FNf
	 71H7iCdi4ahSswYxTkdWXv/d4zQOtlaOAWocJpdKdXOc3v1Ux7oqW9iv2cvofFWP9W
	 1l12eFakX29ofIg5cpxP4Q38mNFU6coFzfGXhKHogcfrzREFRfDi1TyZymTWadZVZf
	 KD+6b5jk3mJzDhjG2vYfVy862NOcSpE3to84EcJNNoKKkzEwrbHwct1aThBfHgRyCL
	 lBtaU2ZNrI8afouKaOAvwtkIy3lXNoBKLUvKi9wDsEhFNgXcfH8tELiw2biayLoH7/
	 I/C1fgTPREwJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4161C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329396277.10168.12927166243017083154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0407d358b1d1de026ffa25b977b2b613374afaa9fa276b7d440302f3ceaee13b
Date: Tue, 16 Apr 2024 18:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713293962
