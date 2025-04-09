Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498D9224FD
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744203594; cv=none; b=aminKv9RSjRhmHOo53e3k8kItpbwBptYYqnnLV4hspoJDvfZlFMq4M6ptDDST20qZ6nP2IpRpnfuigKTIF3niAm86TYEnAO5N3DnNCU6qnkB9J9H9xW88pDgWOdQdBXAUgwEMGt0/Lq73qt1AQwNzpRPfPEx9/TgGOKmt1AMnzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744203594; c=relaxed/simple;
	bh=C90TEjSUB/Ke2ZJhdm/G6gBCpg8fS3VF+3D4WKdc7TE=;
	h=To:Subject:From:Message-Id:Date; b=ZfwrZqaT5pqwD9kgQTuNBtLDAw+slXenyCE/Vi01DRaxmudnsqOqjR1ZhverQl9FQKqUzJhEXjbSl1Y8iMTRWOdW7XbepbjmubJQCgSM/CHXIgAvZ8UHQaYap7wriOBrWysN1QiHjWJBX+mt4ShufTCs/iLl5ncRNb5JrgmOLdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktTEq+zL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktTEq+zL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E8CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744203593;
	bh=C90TEjSUB/Ke2ZJhdm/G6gBCpg8fS3VF+3D4WKdc7TE=;
	h=To:Subject:From:Date:From;
	b=ktTEq+zLf+MXMTIGFQ6cN07/1bGoZNAyIjTjkkZCd61IYfsr0wuTzzrCZR1samgxm
	 JS9raOQGUNVJ6mXd9Doj2G6IwuhLqqGFECB1NMGVzzrHD48A8WzEedTdSmoatqL7Rz
	 ZeF1yD6iyIcOEu5SBo4lybN/u0vgTDI6Ag1GRq5y/yjMxWgRYwITM17RCterpze/3u
	 qCc9GwzsO6ZZ/qC6FpaYJ2N3aQjxaLjCNNAcyK4VVzFGsNyNb9/LYFGTKAKAiB4wgF
	 bPGXkVlleCTAagqetDkt8L3fj3DPUiUokVAktrDBG1nIUnLEIzoNEBL+FYPkXjjVfj
	 tMQxjinRUoC3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBCBC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420359369.17549.3753261083314241114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6150001f794c854de5dc15304a86f4457cad62cd33d1b226fad87f4070fd59a9
Date: Wed, 09 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744203593
