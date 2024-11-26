Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8DF191F84
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732604754; cv=none; b=Ue1NLZo3Um107Hul/ENRjV5PybhImjoOQam3Ui2FxFgjqz/AJzrRuSoneV6a+9qTRoQ0bk5Wpsh+T0n1/HuiDCbYNA9kRf62UQxbQwo2/xLxOoRoNTC2U2Zbwcu2NOEdFiUipKx6oFTcX2EcxsYncqfVC/uQHKRx+dmW8MOM2Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732604754; c=relaxed/simple;
	bh=VsSxdpt6ro9NBrkcUvdmDrCCo/k3UQnWYRBocxbYAhQ=;
	h=To:Subject:From:Message-Id:Date; b=T8ywdTKMjaSBFwVe0h9e47RT3fh4b5LNLo6dEqb5xffFg1v7sN/eiVPQBF6U5rNhDCVy9J1mRPBM4EUUkws1mBKu7rTKfViQaPBBFuyYfTt5n0H/8VibkPQovJW6S3OPPln/+B0hwjUmwRoQmrxkKVi5c4h3HIk3K6m5BI0wdSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYhOadXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYhOadXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF46C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732604753;
	bh=VsSxdpt6ro9NBrkcUvdmDrCCo/k3UQnWYRBocxbYAhQ=;
	h=To:Subject:From:Date:From;
	b=pYhOadXKObxFLaEweHZ12eWe29DQQO1POA9p5nhLQ8cxjA478fuR18gUYGsGiVV1o
	 Bpg60yEs2JP14f+ae+2tuTGVGGUaw1bqVVgjOeEr7P/TCSO0tqXvZBq1RwlsN1JGCz
	 8xRD26TSKbFTqIYOKzHrFbvO9+znf6KzUzQ96gWX7G/NhuGRhuAIPrHnE284iTXmSo
	 ExlmVGoc6h8Doc0VwdQQSHdfMOaZQeitgWwyIAotTcXUbXRhJpE83oyGfR3mlKMqBi
	 mPNeO8s7TZF8nqGFbb8l9riAgFHZsX+UEW0cz0HGm8VEXinnyI4MtwNVCrIUmUNidP
	 kLRAsuI2NbPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCC7D5A6E7
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260475362.29944.11607362894981630097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021274291283a54696455dcc6331e66d481ab07e0947b5439fa1aa67d89e1b6b
Date: Tue, 26 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732604753
