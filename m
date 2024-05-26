Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7756BDF60
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716751463; cv=none; b=aiqmCbJyzzHOaewKE9nIgFRWNd6BXoeJ2Hi8y/BdSClUMEdwbo6cJQk8m9zyJVyrn/adAMXjPPNcPD0YE0a4FeR4Hhf41yq96fNkR3DfGyTp7iOYZbcC99gFTx1796gD3We0Xw/ztW9v/+jKT4HhT4m/qu3o6iDNRqP56z2Dytw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716751463; c=relaxed/simple;
	bh=PEGo/WB+SpjVpMJSo3TRv+xEO6+YPVr5XFrHkiZFbH4=;
	h=To:Subject:From:Message-Id:Date; b=JNVsyNOLdHzp2SXSzj1i1exipHpnGPgZFRFt/l0IlhpJfT1z83ZjkxYFzYkjC3F4QcNbG2tzBRHc7IR4AFnsHVJPMjITGe0Xv4KUlWvPNZMKG4Wq+OR3h4aaAUe10DIhL5vWaUGCm9aOopTV0bL24rPzpiro0DOmlbi5NLGAHuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTSbowAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTSbowAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AB1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716751462;
	bh=PEGo/WB+SpjVpMJSo3TRv+xEO6+YPVr5XFrHkiZFbH4=;
	h=To:Subject:From:Date:From;
	b=jTSbowAC1rw9IDGzreSGys2m71fsbM7+HxnisZkH3YFxzxK/Q29P5IVytoyolUpfh
	 Ki8CAnreYY8ybq1SKsUXBq1N3D1akZdfV3kkuSo3eNmMU0DouMzY0VR010A0TN1SDK
	 khPHs4lAqhytyfPWTF1vNV55yS2RJtkryQ+dtq6SUMvRGiP/HD4ZXHTSlWSplRvKn5
	 t+ycRIoa6MmNdcSfqxAx25lPUft855E6UZvvZlcqmXo2yUjrX7MfAHrMRpUUmQP7ml
	 IWEq3S3cdqr/qC9S0OK5sQWeeAmfRPKnVCvk130sP+w06T0RCydTAT6cvin9q3Ytqo
	 B3FiYWyEgJTTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA3CC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675146279.5537.9522075963307032216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b62bae43ee01b1ab3e05272380c7e9df8eae51f26a195ef159412a6abac43bd
Date: Sun, 26 May 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716751462
