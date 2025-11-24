Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAEA2C11F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764004314; cv=none; b=Ann5MulJJeJIv059RgxtKxrI12V3XRqXJoZ25U/ZLNtjY9vwjOJmJj46vhFTS9vx5JD48zaJz7lciZPsiUWdLZrVb+aML/AyDSWgMAFlWbf0hqOzTUrTFq4+4/TIuqEwsN5FA18oR9NUhtD2Cet3a9Zzk6O7PPF0ZSo7c4XKiro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764004314; c=relaxed/simple;
	bh=FeopCMNiN/ein67s4Z2yx5Y3n9sK0GlC5DXx4tMO8Jc=;
	h=To:Subject:From:Message-Id:Date; b=e3/pv1fSM9Rvb3jNYD/ekMVi9WBgIe+Gr/c2RTWwTnrccNKimnSPa3Gg6PhDRJm5KveYiNLk4tpVIN/OMnYHyxFxk+Ut9bib4bL/iXdxeP1+pe8amzD8ovVdBfQa4Oi1ChWsTu1F9skYAWkGwfwZaxoaTCUlsYSDeAtHIDfq5g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSSPUqdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSSPUqdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764004313;
	bh=FeopCMNiN/ein67s4Z2yx5Y3n9sK0GlC5DXx4tMO8Jc=;
	h=To:Subject:From:Date:From;
	b=CSSPUqdzC/vWCFtGwnPmSvVjI0lGv9DVTx6vn+NOxH7EbXVhR3IJ6X2n+asuokrRP
	 x8pdmnaouT9mtSeuksrcwdZMDiHSgyEmsDBkJtfi5rkQR2MpXOaw7Y0D/Di18aWwCD
	 vuKWhV9fXPBOS7LkYGpAjI03VePRejXbZYTB7ixq3ROYrdW1vUVrGjHK4fB1ikgxeL
	 aQ7/MnpcIF/O2dGggeIroeFyjjNHpU/7U+xi7kgTmVOneX78xggCwrKJN4eNtiUk6Y
	 Di67zQsckRaxvuk+SpFaeWXJpYT4MXFpepD13C1W873sPyb5u1I5c0UMq359Z68GKi
	 qgBU5UStnoImQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F2CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400431358.27071.10879631057053132008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267cbed7f6416e480b35872c7d217c00028ac8579481685799b15c345296c2ef
Date: Mon, 24 Nov 2025 17:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764004313
