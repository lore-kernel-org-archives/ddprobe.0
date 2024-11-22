Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B98F18A6C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732267554; cv=none; b=PesVAHzGU0WTzC4rdSx71KDK5pQ+KCGD6iVcRaNEByzraWw2vP5VAo73sH+YTwplgYkIRKZtZgHTb8VX0f8M4APa7L29atAGDtMSeAxAS0YahlQ8CELT45Ex/OXqUFJgbG/hCRwh2WoPbU6sGRTbE8Cdrfa1Tui/fBAbF9XVUrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732267554; c=relaxed/simple;
	bh=A8Yg5OwuwV5iAsqiGXFDXgag1S7Mt3Qp91Wh1p7ct2w=;
	h=To:Subject:From:Message-Id:Date; b=Af1TNE8XWY8cDT5/tr1WWPKo7h/rDsde+qyB4DSKDVrvwxZd6EnMWR55FDStmTtsAZChseG1J4KfPNKUmO5pJKG/PE5Cc0Hrmr4brnDFdx8qFwe8sKlVEkzrMXLHjUHOQPIQewEyRfqbFlo/3CDllMDu1Gp3jpTrTS2sZV6IdW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU9ipfYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU9ipfYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4B7C4CED8
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732267553;
	bh=A8Yg5OwuwV5iAsqiGXFDXgag1S7Mt3Qp91Wh1p7ct2w=;
	h=To:Subject:From:Date:From;
	b=nU9ipfYxKTEpNj9rrt4zb8RTKF8ssFZ1Mt3hyoSv7P5ZYqUSzr6+Yb6ckvSyGaa61
	 LMnG6+MdAgdfXdZ59RZ9zLbZ5p7fkJeGJKH/25tKkZoY3GCGGwepunQVG6/py6di3r
	 vhZcx5s8z1j7LoEcaq5oijobZ6wXShhcViANZDBJQevG8Eh4pskgE50CM1SRSwp8Ah
	 ZRMhDuyAuBRVzh0VykZ0SP2rDX734wsN1AhxIEGH4cdKZGeFCu2PWQmwJaeMWSzd8S
	 ODDzNZmI8pHuN6iaslwe1SOyvUijDAH/wiQeRctn+XXymk+4rJvmLn53yQKNzD1jrf
	 lnMBGfFEa1uDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B41AE65D3B
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173226755362.16174.1659535481191810042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ba900e5c02eedd5d8722f74dfd08289d0b57741a7d93158458ff6ff713dee3
Date: Fri, 22 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732267553
