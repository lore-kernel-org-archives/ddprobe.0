Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29972C3276
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765856573; cv=none; b=tnr9KhQVRp0+SE8/Gd5H741xXxWxuoPUrPRhh2qpl1P16gNL1BaF7+Zqxod1gGmxP3hLm1/upMONmj2Ui1EAnzznjmOwhiqJiBEZLpmzRYvlkAHOWZAMiFSjH8y4RXSbAXH6t5HgX+UQGdQ/D3qSRwk28FMLTUuM72399djesI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765856573; c=relaxed/simple;
	bh=LroXGXAi0d72HG9GMXyuBwhlfZ4LidEiFRU9sPALVhM=;
	h=To:Subject:From:Message-Id:Date; b=botTibphyRaBkXhs+Nihyi8n73VSpDzE/JNEL8VdovezxigbFsbX75K/Ix/J0vUTxIWOTm66rMedzAvxCrrMJPnPS2GgNCixFPyT7iemjB5aiazl1JK7lJt7x2ZBroneHsc7n/OO6ND84AgTd9wjZQs0MNHYdxmi1MdUUu2Ek2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skD0eHVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skD0eHVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A727BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765856573;
	bh=LroXGXAi0d72HG9GMXyuBwhlfZ4LidEiFRU9sPALVhM=;
	h=To:Subject:From:Date:From;
	b=skD0eHVbuHkSFn2DIErCLwsBXnsW7pqujHZ6qVGZ2MMWkEWILsVJK5Yf5/vzmutgq
	 wcLfAS7DY3AXdlAAkERZqTTkYIsBtcUvF6Kqjo+VSonno2TFnXC/h/IFqs25fdGWrc
	 z6dUX4aWCw/l2lPAGfvmQYt9ZZfaQZ9dS5xLgR6o7d329dK7mlpnYbmTjZgWeiYwC7
	 Zy83SLgYigWU/g/zbhVKew8CpG7xbqCAeDpUsXYmpo5Jj8DcLPjOgWJw11ms3Ijy3b
	 KazrJ0n4xRv7MgtL0q4slQaprDmjM59KAGT95DtVeztcsJ6e84atbTvNjsy8w5vfb9
	 4AoZKuOX72QDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949FBD5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585657358.28209.13429886678114689679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b01ca464bfc6612bcc70fa1bb5a7aed5ecf868740506822432326ca09a97bc
Date: Tue, 16 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765856573
