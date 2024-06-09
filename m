Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C7017C6D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717964243; cv=none; b=oBndtva3VJop5sXd2ioRFOws/J5xdl0034kBpRM6uo/py1cG2s/gqDxPZH8DjV7XE/AY4rCmE9r2NQfpZMPEW8yGFE8KqoJ1gKmRPelFk9Y3WtrNRtGWhZRoK29+CuT3imdQSrAcWKaJbuHAr+33EFds9/x/q9x32kAepH8jsBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717964243; c=relaxed/simple;
	bh=XJc9MiFd3O3b6cqRf7x9s+Rw8evZS5rUjyO+qO0TzDM=;
	h=To:Subject:From:Message-Id:Date; b=emTKtAzUrvRzK1jC/a5nIE8tWmsOsFzvnrX4B+s0+MUZJ9qrckuSFAP56plqSHYd+okiiCrA9BbTKtB9rZHHLvI/85xHCGtsgXyFTljPGdzwP2qAVNre4EpdgoHXy/hFMUMFySTiDoLiylI/V2N9Wv9XP/iG6Xv9qbPCwdqF1Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDpuPRx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDpuPRx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3954C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717964242;
	bh=XJc9MiFd3O3b6cqRf7x9s+Rw8evZS5rUjyO+qO0TzDM=;
	h=To:Subject:From:Date:From;
	b=hDpuPRx0a5uYHd4BKu+Bir7gvNLO1Hi2QP6PPo9ZpTvayfIbudX6EftsHOlLBCw35
	 rk0So1GAs2RW9KNxW1HJv/qddm15I4I6VhLzjaQBQSTlLJrfARDb0yyC658zZ/ihWS
	 PxvgMySfi6jgxE3ixIqy0LHrJZureKc79Fx5CKi1FfrZnq6rU8fdKFoMT/6iOTxuP2
	 /vm0eZu7GM0qonjICotDo8+n/l4cMNXLqjMtnI679bQeas0TBGU/AQCsj548DLgtlG
	 OtGnPvyPo+C8iHdlhJPJcpDhQw+SpwbcRyfftgsZWcVQz8V7gxtGH3ERuDXTe3f7xY
	 mjZ2FCDUGme8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB8DC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796424277.19811.185295223411056961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7391ce209aae563cf01daf0c86b049c16127eb9f79eecd3f6deac329c68f0a63
Date: Sun, 09 Jun 2024 20:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717964242
