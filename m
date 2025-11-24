Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288A3314D1E
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764000714; cv=none; b=k9C3G7LlkwozLpfQNsrbUFI6EcPeoAR11zv5OTLdhsHwhjJdf81w6rGevBWG7aKCmefyAD8yDAaWSHs3sxdq7ciwazW5WMtgpK2RzYlzTuLBNGiTxslhg3P+2nzQbaiVDZYB8qabjU/mTVTouBZEtmPk0d9Ch2bkeylCmnq2Dng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764000714; c=relaxed/simple;
	bh=QGY/jLgacIV0UZtIJ/gmx0smEAXwdr5eMCd7RB/qrts=;
	h=To:Subject:From:Message-Id:Date; b=MgnMDT5Fc7TmpgCGgSE21NvrGIWG3TzelkCVmW2BTa3G3G1flEq0wyeEKhKizNETyosUiIzw3/yJUb41Nnu7TjPFUNpaZIv7UXg0/PNMrWTlayc3VBFkgKg5Q5NC54GSA1acGd24Yxf7wBYh+mAHndGbVIKCFbL8YBt6Ouv4DWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuF6Cpii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuF6Cpii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA5CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764000713;
	bh=QGY/jLgacIV0UZtIJ/gmx0smEAXwdr5eMCd7RB/qrts=;
	h=To:Subject:From:Date:From;
	b=BuF6CpiiO733Qx8LhMET1uCZnkZ8+zD30+Pon7UVGw56SBb+QV1S9ncB2Ys/K0Fnf
	 Azn6NVLsNassaexQAY21npVI7oq7dKXIv1pnS19/KSF13M+CKK3l9BvMYDkhnczpLP
	 QflgF405V4zAjPZMHeCkJWJQdemiRRpd2k++Rk76146Yi051pMxrCoK8nPV9FoqilR
	 J61Czfl23Kh6HFvEfe+5XNOgQgZvsxGwQBoUIbPZ7NGbGvN0qGlmXx0GBtdi2yzSG8
	 X8HKYu39Rvjymw1Jk2sQFm1TlEEHbpw0Ackkdx77aBSCELuygIyjkqfsytYN1q+8n5
	 GQkGniEgV0n1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F12CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400071359.8738.543234571366634334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94762249097b6454626f089b477b1c43a44a2496228bf4cea5d794957c8b4f2
Date: Mon, 24 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764000713
