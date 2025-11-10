Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4E78485
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762751393; cv=none; b=b+FD7IHxMJ+BVaKv7Sh6AuR60Hc8g7x+b/EZhfsjRiiFEBp3yR8otYgIR5/QYadpG0le5s6VSPn2rkEgrSCwgceWfW3GV/hb6V7CNPVLwv0JLuFs9T8xZFX6aoz+dDepT9iZYM1HFg4PGGMfetAD/TUAW24+bjYNPsEURKOgAdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762751393; c=relaxed/simple;
	bh=Zv5ZZJQAGPt/A0oBFq7s7I7tMjtc/1HanrKWNezBMIE=;
	h=To:Subject:From:Message-Id:Date; b=H7Np5MJ7nKNHFzmvK7yA4ahABDl4CYNys9dtPVjBHk5Kjgpj2GPwBSjIYKU7+DEP5wIku2PNgUQPn+RNuPz4U4XyWGQPIk5UBuZX0iLvdJuNMfmjRzkmvs1LbmZZB/QjpnQ/kT9u0bK7vJlXSmlxduFSpJtcrePLhSjoqSAHmmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv+dMiLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv+dMiLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7023C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762751393;
	bh=Zv5ZZJQAGPt/A0oBFq7s7I7tMjtc/1HanrKWNezBMIE=;
	h=To:Subject:From:Date:From;
	b=qv+dMiLPEyYr7+/8pfzyrRk5x1kZYpYZOJSUIFZ9RWRnKY08eKq4WsWB+TxhX2p3y
	 yefAKGnCOdVAwglpZmRpf6YJqngHp6/UlV/8BeR96tT/4NSIExKF00tNc3DhECWnnc
	 H/U5809v6u14ZwHkqZK8B/zSXEmvLU6YPjj30m2x/9mFzAaQirgGzFd5j9NezqttJp
	 jsjdw7TSq4T/Pux2+S02LEmk1taer5CVjjvLdTEkPmp46/PSdDyLLrBkos7fZwjgME
	 LYi6gG7UI/lz5PIhfQ1AMKKTrdC4BPGmlrD1aF3+1PvmhhMdiLPLee5B05mW95GyjI
	 Cij4bU+N3BtVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB63CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275139362.28531.13584041701000291897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec2d240c0c5e5b08fa7b4378e83eba1176e2f9c11e8d11595cf0186f09af38c
Date: Mon, 10 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762751393
