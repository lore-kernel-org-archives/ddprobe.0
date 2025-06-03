Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32590227EB9
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748987994; cv=none; b=c6i+mJUlPijXzuVz3FImXUOCISUPexJYJuw7dnp72wiSGmfmAmQwJjorDssKqVOZlhvC2udjcSHpppCwfmNG+6gsgthOn8enRMCp8GwsulaA6RYFTbnQPiYxA7dzODekEuSBdPb2fjKdrnD7RzVO5iofMEYRJv82RA6uVC3BaOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748987994; c=relaxed/simple;
	bh=3pW1DOFCSZYi4+vmxxMhpKQE+j2F1yzNb6Uqlcul8uA=;
	h=To:Subject:From:Message-Id:Date; b=Gix1ZRlk2o2MqgP/2QpKNQrVX7UjqHYj3zqZhleiVMf9+61UtKw0OzeP6SRffxH3NeKoPDKntSv3o70orLVGPGhplEpBbSyYcEYjKmtoppHmmRsFtfTZKLJWbOD92J0hbHwZDV3mwlXhE3Jg7rPMbBoYq2rZeZ41I0ywT8hcje8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtkW6fpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtkW6fpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A669CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748987993;
	bh=3pW1DOFCSZYi4+vmxxMhpKQE+j2F1yzNb6Uqlcul8uA=;
	h=To:Subject:From:Date:From;
	b=qtkW6fpvfzTGugP5V7dDe1ue4ho9nf9nF5bg2aziUx9VlinWpgTBxRIgMMXoD0CfY
	 kagpq3YbR46VXLVBhdadg24xsZPPp6dGd9YCIKr8LYqfcpnzSKFWaH9jhecTi4GEEv
	 ftw0NScTWlFHxpUX0B0jNmUDz1bSDoVnYpfd5VJmBej6192kquRi1A1phQ3OFy31oW
	 Ys66Nm+PpKwnqoxF2U1Y39b0h+8eBrVYiQZeE5CPFB7Sh8vG3vcv/i/TmkS6NQnW3h
	 NADG/CyiL9AsDu9wZWBAtqzy5NSIhR7y9zp10CFbv0hcz8zq46TY0F/9/27FElj7sz
	 wLi5i2yEPnRdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C78C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898799357.16388.2284637411813019829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1edc3f22f1df333b83430431ddb3be2e044831bd089c35edb1d630f57a9f0c83
Date: Tue, 03 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748987993
