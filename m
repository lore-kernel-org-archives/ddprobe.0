Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5791FE455
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745839794; cv=none; b=jqUAUuNMo+kta+mqUYruoQl4vsKzpcL+T8+BrII/E53kVbxWpdwjUIWADpvCcWk1MR3kpLMXFvVbaQxF9kgabMCallAcj67/uMiAkXfB5g2H6xu2SrB7DsQ2oHsj18dLqfljW63QGVXXYX8QCblv8GPOJkWQ02VQruKoGetd56g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745839794; c=relaxed/simple;
	bh=HOp9m2X0nW3QeVvZ6xU15F4RRvTUTCpGm/Vl7fktqGU=;
	h=To:Subject:From:Message-Id:Date; b=g8Qxj2DBfrnrJVA2nKH4hCN8/61fzhLYY5FfqbiyCzrLA6+MzXTqlYtJVxxcWeKrw60GwvbvgwkMK9n6r4Yz2dF2p1ZfDbvuV4s7DIKS1hkt0CmSdmlnWqAxWIBTH5mJKahv7aWzyE68kfwr+CDQS3XSBAtqn8ENagnRnyzlh6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NC2HTKND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NC2HTKND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A96C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745839793;
	bh=HOp9m2X0nW3QeVvZ6xU15F4RRvTUTCpGm/Vl7fktqGU=;
	h=To:Subject:From:Date:From;
	b=NC2HTKND9ksGuIaNuwsY7L7qQ+UygTjme8BdWYThpV3IO/QwOR98jzZCSouGWZrAN
	 DiSZbx6mul0biTX+m7KcqGkWQSiw6J09VQcjPi45/r3LiVZ46gixtU1iULtqPaQ54M
	 QHmpTrRX5I6tQrgAHQg3cFZQeeEJrZ02vmH0CvinqF5iZ3b06UGLSp+6cpZrpb6n1s
	 T/aXc/S0Mq5/t4bzqS5SqEa7BsZ+DzFDwXPfjgyL1OxxpAKmhbrQSgHd38DzNOJCHI
	 iNilYsz1T5dCc6Sw/ySDo5h+FV9FJNO5S3mOvFCWgmn3d7y41HW7/khqeGA3YT/aZt
	 ON5NCufF3h3kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC6C369D3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583979358.3527.17808217978511074850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5bcdb95e7b9ddd79469ef4a20d6798286c61d923408d67fbb252a864a4c5b1
Date: Mon, 28 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745839793
