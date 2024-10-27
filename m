Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1011E535
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730070954; cv=none; b=WWfEnPJ9erVvlyc9mflm+yxQEJbfyb8678KSHA9JXj6UpyaITHkWzGwn1Q1FemrhCNq7DZFmHus1YYC9Cnpn/lU9npyLkWFRkuDMrUB1hq2Fdi4vgQn0w6LJvVGpFTbmNTgIlC/sCF2TVVexrSWK15n2ymUyUZFjMo2fZ6r++uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730070954; c=relaxed/simple;
	bh=I506C7qJyTYm7FQWnWfl0FWjuwUfh5SBYnQ2R67EaAw=;
	h=To:Subject:From:Message-Id:Date; b=TW2AEfzAIREWZgFT7r9DNCWLXnjpkC9ULd5bAblKNBmVEPiHskeiaxKRVOBbxroBLPUoZNU8CHUbAzlugkFHVSRQgKZ+gOMxWvOrqffAcuTmA3kOv3EKDboHSS83/V63liSZM6voRt1siaJ8Pf4V6+BiWss7iImNmdCFjlbuljs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3s0BjqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3s0BjqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEFEC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730070953;
	bh=I506C7qJyTYm7FQWnWfl0FWjuwUfh5SBYnQ2R67EaAw=;
	h=To:Subject:From:Date:From;
	b=n3s0BjqX5mFwqsgLGt3tmVwGpPNskifE4RFOleHF6QzKto9HP4jWmNI2+dKUnMuDa
	 OFMXfNo1mx1kuxqxeX5zpPrHkfkFIkngvCvxYZyGI1BTKeOnZKLDJhFQ8w77dGzdXG
	 Az8NGgsXIt3xtaNR8Gv2RrnRG5nydpiF0T2Chrdt2NkWXTWV3mO4EajL6pNEnPih3h
	 6NHlRI/YEhIc/a+wnFI5A8Myig/IMfb0BjMGR1iSmX4gCtv14Isj1JT3b9R3g7Q/iN
	 /0I3dNeQ8eAAS0pK9PPLRseHhVE0ZkL3JKA5F3zcXXM15l9O8/FgqUZKjK4uqCKTqS
	 WeZn5No8S3OOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2CBD1358A
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173007095363.32028.8038829569738526032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c01f4872263280e57684fa58d2756265b8b88936691e4723a8ab80a83591e5
Date: Sun, 27 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730070953
