Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE8338DE5
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 06:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716531803; cv=none; b=B0g+ZlDh/if+EEwNgdqgJV0lBQ8Ul+LgPUq9NWM8StKmZs7IRIQrGQIT5B13mC7IciSELNn/jNv73kV9ct5ORQD09UuurBjyumrtJv/TMGFpRqDSo5a1dUmkn5wLE2po794WMgQmTX0FVaN0KqBvs+HUxHE2FeHIDiEJcDfBsdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716531803; c=relaxed/simple;
	bh=baeqBpr06qUZNSRZE2hS9BeWASqYKuUfJcphX8dcEzg=;
	h=To:Subject:From:Message-Id:Date; b=CLu5AwTrThnfCLeEMSR4APgqTp/fzoIh6ZIPEoggdbWMLcNSXFay2toNZT0OaFzvbwvnfdPIBCCT0cD45dlpBRiPnMhsry4wDbvkYm0vbqIpoWFrsIUrABDdXxcE/afMLuE0anL2zfDHTm91c4N3nyGQsrnckaRcFWcVjQHUKHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dk3iDJNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dk3iDJNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99D9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 06:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716531802;
	bh=baeqBpr06qUZNSRZE2hS9BeWASqYKuUfJcphX8dcEzg=;
	h=To:Subject:From:Date:From;
	b=Dk3iDJNCCg6/sQyu596S9S3BRSF9fwvpobRioc6aEQjt61P3mrd2leM+Z0+VqBSJH
	 h/wAc5vZYwq65e5LfEHBtcGufNnnJ3Tqsm4JlZ6ZPQIgXAmAOcOo6iJG5IAfF1L96B
	 IhsEEuYucD5/Wo4gQULEgnnFayT1bYr+SCAcS4Z0caBWk7a7CAC3RZ2e9lZsBl8gAG
	 EKClojAQqwF8XseaTZeQ3giCUnpTMeCztVKQ9vqfq6oKJPVzLDEbcOJD3BwiCdEJSG
	 hOyIKOgCrTuzn3XRoR7vE2JfRiha0l5l0MGSY9E2zRxjEujTNkO7XcUrEqk9DLeoqs
	 dHPpwtUxEV4Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D326CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 06:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171653180282.25417.9009115361525267079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5a871ba21b45389be45c9cf8017469fd3f2adddc4fad1375745e5c12118195
Date: Fri, 24 May 2024 06:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716531802
