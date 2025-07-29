Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15032286D79
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753831194; cv=none; b=MOQhKMZJc2qAAQSFse1ZOyn36BTp6PGmtsZt+WJ5naC9vxF1zR/1EGFPG0/+CHEtJqqzOVFEVzxVvA+t9+fx52L66ju641kcZ70BfOrbughsYePOU3Rwi2PyNmHyD0uGQTKhBztmfgSKQPhioUV6z4YKmf/WJ14rF3onBdQ3+p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753831194; c=relaxed/simple;
	bh=gh98Zr2NoxSqT9ps3bmSjpdFf0mKPmI8twDYacR5tX4=;
	h=To:Subject:From:Message-Id:Date; b=Xz+RGwwRj2rWS/8KewXrYG4wBnWoTu6Hf3Lewr9mJSxw37/EWQXwiiYG0aGRg0PXX3QzqsOnr7vgqCLKb5hbdlJEf2dLWBp6cpj5V1R08zQvV47acUVodYJGGDWzm6Ywgkc5pF6qM9GhFOArlcsMcqTBUlYdbikJ8SMNdXqglQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gp5ucKoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gp5ucKoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB6AC4CEF8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753831193;
	bh=gh98Zr2NoxSqT9ps3bmSjpdFf0mKPmI8twDYacR5tX4=;
	h=To:Subject:From:Date:From;
	b=gp5ucKojpBG5q0dWKnkea2phjyIOkayiGVxDpiafLo1fvNEtUg+a6KQn1EQc8vJ0n
	 DFAU/qZ0k3hx1RC1q6e38T+eKUiL1zhC/eRDXyIvGDL6qbLYTeMvRywVOwZadsJivr
	 1Wvgqx1vHF14gVxH3yJPejCpIMw8V4HrAZObXxMwA1fUA5IS8HKkZxXsmMKoTH+I+A
	 /VgcwHR4HLpAQVR8I1KywC+toyNjciaveEikleO8rApYsUmHJyF6E2VlXOfZ7VYt79
	 V7GdAZz+QqrzO0nKzjv1FDlUbSX8W3MbVYhNhmT90eQzhrUKEUHiyFKJ66wF1jBqp8
	 ShhltCtCFbd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96CC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383119357.27001.2548820832871495459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d6291132ffbe5a7483930ed11a7cd3a9d5599702ddc8728cc327831db60e6c
Date: Tue, 29 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753831193
