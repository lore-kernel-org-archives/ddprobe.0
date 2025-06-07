Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AE4221F00
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749299394; cv=none; b=lRkh/d0ApphI8BbV9FVFAXp+aSiS3zAEYZ0cPnAuyflsO8HrNV+ng2fUmySqvktD8pyT5tHCfDyHD62SvVe98y6uEKt2Duc8dsHFT+yY4yjbuy+G/66nBdLCMbc3bdc+3i2wev9OqdBYXdYVMhQ01umeFjpS3VRC+X8+wERZo90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749299394; c=relaxed/simple;
	bh=PO3PSGVst/6ywp0tycnwjt1P3eWYfxgfzlv+ViJmjbE=;
	h=To:Subject:From:Message-Id:Date; b=p6C8lqnwEgBpMIMBQGoPYCG6EEiigO8L1K/xuHWyvRbduSAuYzGFDza4vfdWOouN0zKtP+EDH0qfTQjd8E/SLJuFI0Che0VXfq3oJl+JV9glspcl54RYkbTGlCIV15EKmVQoodSsOukxnoJd1A5YUjP0WU0FX939HzrmgIt/RXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLx2fk2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLx2fk2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0153C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749299393;
	bh=PO3PSGVst/6ywp0tycnwjt1P3eWYfxgfzlv+ViJmjbE=;
	h=To:Subject:From:Date:From;
	b=lLx2fk2ptraU/HSFppDLGl3XNBbAMePnvz7vZ9eu83s1gX3RselUHd4TEToo5UDAs
	 H1oDjLCDqop86zKk0de4laWdpjqyhf5Abh0SGJL8pHI8vgX/CpTcLCHNYIHm29Wv8o
	 I2tr30KUTUDdocUmVDBAxQNTzVfJgb1muMUQXqwNbB5MnDSgRGZFDPOJPjx7ILoSZQ
	 xgjFCzNaaUEzfnMnOFjYf38ddzAUo0NfE5DE8PNqoHiyRAKJoQBNi8CiNy/gaZWQiH
	 jSsG1QKNJbeVB9TqZSPqg+TBvPl47L8CW+mPsnFHoGtBeBTVZ5m/e6jhleGLEedd/d
	 iuUUKAiD/sK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E88C61DB8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929939357.20563.14841777809156236782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab84612aa1a7636650385f121b5bff1c78ae9b8dcbd56360f466f74e1353ea6d
Date: Sat, 07 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749299393
