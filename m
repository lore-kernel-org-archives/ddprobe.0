Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50261233955
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789864234; cv=none; b=js3+B69VRzY+O6l5nGOrX3uEExRT4OAACFBfR0JxqN/AwIxOT97YWLfwMsU7mPbNGHxDzDmDK0LZvv3ICBJ5sJ5BoOoQYP96y3xWRucOPopZwl66Cj1u4Vm7bSefHhNdWIaI0+KclOR/0nWlSST/2Rsb069ydo3gYeEHRMeKQU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789864234; c=relaxed/simple;
	bh=je3QGch1IVK4sL6Vcw9glXmTRdicfW4hA1Ps+whXPKE=;
	h=To:Subject:From:Message-Id:Date; b=eH2SxpjrnnKv78t63+/wiyQ64touULw5LwTSv1LSUrTfqXSMYvQ8QyjcuBUe9FQRBMmmWyJ3dwwZD0lFUvkZFxY94M7o6BmUSMFvN6K/6O0aYKVoKj76HXKlZRHY0M+YNhYzjb90JCuLuRgwyshQZwP2ZMV75QzMLaqFKZ3NR/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ed3zT4rC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ed3zT4rC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC56EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789864233;
	bh=je3QGch1IVK4sL6Vcw9glXmTRdicfW4hA1Ps+whXPKE=;
	h=To:Subject:From:Date:From;
	b=ed3zT4rC85V1oH+/xyBbn6JRGR7nf3BIdsFA1Lxj3yzpzPk8lq0YT2f/HijUraVSt
	 2/VJn+UQmoxldgr1wD9HhRpZ4KZPT/rQ99twfSYy9atRTPkL9polQ4DRbRbqVJhBN7
	 y1Sv8+OsnQJXCfu8U4O0Vww0TOoQDghAHwE1N239lln/oydeoEByrRB2pcQGYOS920
	 0L8Nrd41GH98GwOUdchP/JwRnrEFJWFXqGUtF7uvQUu61nLrLr3SYThlSBiap822kS
	 CHigJqMYHGuwJt1PoEs5Q7O54uJ0dRJmiEE8qrks+VtZAvIjggRcMmQ9etBdgpIHt4
	 XCKYBDYg5LKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ABDC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986423368.23745.3468008473689621559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c712d36504edfd73a2e17597d24177ea9d4b1141fa352807a9c1a3a7bbf282b
Date: Sun, 20 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789864233
