Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9E73C140E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782257194; cv=none; b=rMmirtSr6dnwYlFqdOpfTsS9oBmn+47blgSxMUIO1qLj0k+h9+eKTCfw7b8fPAxWNPC480iScnVSsfwR9OyNNnJgYhl7tnlRQur2zzLXJIZ7jt/guUqJ1qU/6zjSXaXWkZnHpctDg1jWA51WyBghs+nC5DpAm8wO0VSdqnAbBt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782257194; c=relaxed/simple;
	bh=nuAx5gosw3aY4R3raKIoCd+OLH+LWV1xG5dQ6FrVXbI=;
	h=To:Subject:From:Message-Id:Date; b=DL2bNB0JNq8bzfAGtoYR3lufmk9IJnQKS0U+3IvPYZvgWBfUfezh4KP7hD02mVZB2I/YI1F1PbRFWiD164ODSoPcxMRWYuf9iuBiBkn50vbSGzLdkcAivDmcwhZ5DSMgiZkNcXBd34Myg4w7bFJ6ShEvwkIighzZYHS8ZJjMtf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX7hyGt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX7hyGt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3A1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782257193;
	bh=nuAx5gosw3aY4R3raKIoCd+OLH+LWV1xG5dQ6FrVXbI=;
	h=To:Subject:From:Date:From;
	b=cX7hyGt/+tD4+g0o/CXhLDSh4nr2kuYir/9h0I+NfUAM7hsM6hkux1/htpFHFFaAH
	 FEX5Mha5vFo/8dZGGECSiBbeTEyH9CAa2Su86HcZrV5FXT/TQ2g1GlG8QEdRZgyYgq
	 yXHE4Sk/28io1NLK4+rpRw1TGK1txxyHhf3nnZc1jU5dT5GT1H5owa9aFD4bLY1WrC
	 mWjVbuBzRd0Bh9VRrqiLz4qBVhKc2/WtJEiTu2DMDQebRMF3V7qXL+pUy6eo5ND/Ml
	 hI6FEV12x/QdOxaJQVhRJeZcxvDtzb0VZBsqv1kt2RGT0qbMPUXnPcUobyoX4WBoFf
	 Tyajw0byYlXjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF84CCDB479
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225719371.18212.5763446722127436012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a732d1133f71d327319838b9ee7a1e894a4ec5acb1c962a3c69509cb9f5a8a4
Date: Tue, 23 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782257193
