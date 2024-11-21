Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA1D1BF58
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732166154; cv=none; b=cSU6T4fZxFc+DoR6PtNMOK5bO2A7ihCV7PjGtCaAV0NcZ26vUdVoE6VN4d4KIbQN+5lDVgNnegninlkxm3y/+qT71A3+j0SCCLf001T+ooK9efyofR1N8zaRg42KMB86zuP9MaaogUC3wqJ42AJ9nOVufyVRD4leceVdJkEVgTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732166154; c=relaxed/simple;
	bh=bpFXmdY7bSgco9yEbXtEv1t0yXFDOGBDxjn2dKVMbVc=;
	h=To:Subject:From:Message-Id:Date; b=NnBdB6GRLJrejw9y6pNgQFqVezga/PFTODjRWSxw8AYZ7CvtAuF2PMAskNlunm0ABz/QrLg/eRRkVSCtKlyq7HQ3c9onty66D98y/P2gqh2qGR+DHHSx9UVH3ERWmLXXeD2bsg39yRaatMY1xqnY9SMl3/cTJCueDg0pm7E+Z6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V11v0mSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V11v0mSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E8C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732166153;
	bh=bpFXmdY7bSgco9yEbXtEv1t0yXFDOGBDxjn2dKVMbVc=;
	h=To:Subject:From:Date:From;
	b=V11v0mSoYn0JNNexrx4dmDF5+Vmrpy4ZhDcR4OudjhfcaS5x9N+Qo+xyjFaC0gra3
	 TD640fWw4qMK2Sgre3dIAA2DEhwDYqSu0CHagCMztROxnLz7wuvNJMkVjQ2RO8ABI4
	 MnrzuK2TTYAQHjJSt78EbvpJz1lYA/MBVUtQe0pnI2r3Ju88LkUYb+a0am1YrGPSUF
	 VwiInpp1hH3mgAeB8m3yJnG9oVq3PCm7vqQTJFx7kw+5KjCWtkeG3R69a94TY/z67x
	 4PIQyaecyJ3t2yHvHQsdGnKJADZP+z7qLs5AhAsWV5VU9FraEAazjQ3vHvUSWBfAd8
	 AmnObRQI90ecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A352D75BB9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173216615361.2336.11173869204365076703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a182420c2904865a518966b273f630ad361f3015931415f58ca92546e3e665a0
Date: Thu, 21 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732166153
