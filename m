Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C48632C60
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714653743; cv=none; b=ou/henGApkC1L348tJx3E4VzjmjJYhijtZprvt86eV/CbfO1E25PFryMYDkmngXy7vzM56UFj/KGbyCoAn86uAjWzatDaoVuGAxLeT3YTVBw9J98kvc/naPOJBcvVBElq1W+hAJ5zaY8CvMNtDL3rd/Vc1JW3WrBw8/7FCjSxgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714653743; c=relaxed/simple;
	bh=hcBs0XXyw89OPEJbW7f7/UaY5ZcTACwwfnBam4aCBQg=;
	h=To:Subject:From:Message-Id:Date; b=c4mM+u63SQQWuukKCRV4u5QFgGtt/acGisxS0SnI8wJUG9okrzKN8YLAozfTgpvKeP3y87hpvI2YQx6eMVLNPKL1n5wu4M3Oa61piMsdz96KI3YMneyUE4Q3dwWxgpTKv6csEkhfaBTXayikZ/FlPLRQMm64AoNNoa8mHQ3DzbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPOLyokj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPOLyokj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8F7C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714653742;
	bh=hcBs0XXyw89OPEJbW7f7/UaY5ZcTACwwfnBam4aCBQg=;
	h=To:Subject:From:Date:From;
	b=tPOLyokjqDWydQrtos7nQ5xXhkVhAxYZEN8mWKk+gQ/BQDcUrGUZxcSAC2E9DzZxn
	 m9WhiUmzDDdJpLDp9Tk6aaQClwFtz5sDgPmWbtPga/hQJtmAuhGqgl4mUESeoegsgP
	 QWev/ghFExTh9w640szCnFmrOfpymtZZ9FJKt4EMNV0U1P3sHDIhvoqM2hNyz63/fo
	 WN+A0HPrcg7ejbscDSDeVjnIDV5L6rNfzhaL0mp9TfBS5mcaCFViuq9XakqsRAjKEX
	 6VF2znnoIeUsa5wS7jNn91l+ClbUvpvui7pJ+cIKM6cFZF/i6N97eirSc8eTa1o2Pj
	 k8hpTgYHNa2NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4359C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465374279.20526.14484173826592094114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfbba955414f09f72ee1d16033ae666466896e25a07b4f6ab914329adb9d9a17
Date: Thu, 02 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714653742
