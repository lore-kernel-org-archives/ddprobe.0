Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ECB2C324E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748891395; cv=none; b=hFm9UUmNlyJo1RMfISEPfVm+V9zqM8lf10sbfnM+i5o1glIp+aKs1ksZW1aSavl4tBCOPq6uUaNNHK5OnZa4q+1iSaqAs46xfvxt5NuMEhpF95bbCaoLOXsa684/7a7xAEGR5xouQwlT5ixc8kPnED8jaHvCLNoCHwCo8vGdp8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748891395; c=relaxed/simple;
	bh=HNZnqN/UPfDak2FJ0W2xDo+tieBKW6naqRaty7V0u7Q=;
	h=To:Subject:From:Message-Id:Date; b=HlQec04aKNUPrPVh0ITnBWz0IflN3KWoysvqRO/LAL8HRNi/gAm+EYf0qxW/Yd6ApNBCgzBG6qDNNaGo6MWut5SjvkrDiX/fSwQGlL/A99eCRTvsS3Di/ETLYGnBmPmnmjiXB4MV6lSKPO2wBPD1mjAJiremtCd/r6Rddi8iiGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkdgUUiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkdgUUiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0F3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748891393;
	bh=HNZnqN/UPfDak2FJ0W2xDo+tieBKW6naqRaty7V0u7Q=;
	h=To:Subject:From:Date:From;
	b=dkdgUUiI6cEsrcI/j4QO1tu4E3k0pXOlxbdSYTs1Itk3OaCcKFtEYSdH6ioxy0InH
	 aSU/3uvrOa23t86X/W/LkMAL+F0Y/jcGbA3R9bqzf21z6VhO/xIH9/dpWI2o1Cs5sj
	 brQGL1CAPwRsY/u6QVwfExUaow8nDVL0CnER8us3fK1FRkS3XERE+B4NSvQ9qPcXdE
	 JuVxuIAfUidDepkhSanSbc7ERTEH1j802qN7UJnbqUcv9t+dn8B0LaPkLoH4ZUJJQO
	 uSw66agRp9uLoaSiAU7HGvGRmUfGpQ52kxhS6vAY8duT/UexBSEtVCRLqc80qn3QcN
	 drpP3f0n9kg0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9827DC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889139358.19755.6620292483431454081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775cbaa36e0791c9d16155f0c6c0fac58d5c7aa4bf375787c584d5e5c3349977
Date: Mon, 02 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748891393
