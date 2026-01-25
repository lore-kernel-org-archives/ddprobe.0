Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144891CF7D5
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769373234; cv=none; b=eaLoKcZUvY3mDPpEqwXenDUvufuouF0GoPxYjSqE3xBNj1SX0gyLInEDbekviTPsWxWx2uVSSC4ffVBNWNpaRU+nAB16dU6ppzYFUIZup6KsBsgyZ6krzCJvbGtuJ06n0qoToXj4/NdlOhxQTN3bVHElL/PaU9L24XQpu355VGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769373234; c=relaxed/simple;
	bh=u/VysTD9+cwWtsI9QCO2Bl6HVSWyUtJh/DgagjsR0Jc=;
	h=To:Subject:From:Message-Id:Date; b=R/yGZKVfggxmdZDfAPm0BqEHryY1BkRXHDJkRmq1eA647Qvj0KTHe34yTitXIFOxQtRwHffxMel2m1qnWRGu1Lf+yCDfFETyeZqLlqjg6SuNdIPgNx7O9v8oq6tsAkECo2HyXIbbAY74rwUXs2/URFghMP5ec4AwdHOHJfhRrlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL8HepxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZL8HepxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34A9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769373233;
	bh=u/VysTD9+cwWtsI9QCO2Bl6HVSWyUtJh/DgagjsR0Jc=;
	h=To:Subject:From:Date:From;
	b=ZL8HepxYIJUiW1Df2HPBqnvscJcmGKLh2rNbD1Ya9SFCQxSGLThh2NYKSAJ96N18x
	 y1g77OlePCldmDCG5l37egJFBCWiCsRYBKsQ6LvEO5iYxbUZFOEuZxp92uqNjG8+8F
	 erSIp3QM8q/1Cx2tsY5HBHF+Nujdra/bng1gHyv44ibfVJHPxyBG8hOdydqrRdkIeJ
	 5jT7Nv0yIek/ILLKF0yeRuZStPQ+ZXLPEGxK0Oz0uOTTUx5yYhgSQQP++H7kx81KDG
	 7XzqG+3IjuBsWBjveximSx1h5PrsscfHEabrDcw/CdHqOPVjqWn5ZyH7wmWACmpvvv
	 9B8SOVdPc7BnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92633E63CBF
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937323357.30707.17609454428049419846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54e742346dd6eb881b4626f02bb4b9d3a4c2e0404a4463513a04c51fbed6c72
Date: Sun, 25 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769373233
