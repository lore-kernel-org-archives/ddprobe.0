Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3475328C5A9
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752543594; cv=none; b=gHUHZIWSIQ/z9RVYrwzVHzj9CXsAhsiIDi86/7CnxSFnuKefPr1Oon9vCqCrtHmhl/hwR84dCUvZg0wY65I+UX4R3eiKH4Tqhh8fRRZzBqzWtyl/0ZMU8vbtBlcEvxkODM1W32WoeXcskWdhyxOjJkrELuV1dxEXqrpaUH8CcHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752543594; c=relaxed/simple;
	bh=SnDMnwo1GNoH6+FVCGwzSS6FQ8WQUkr5RBLhZmntYII=;
	h=To:Subject:From:Message-Id:Date; b=g7dcWUsvkdDKVmlk6QTf+zZ5i3CmXbnrZl+oQPiQhSFX3yJM/mznzbpO0Xg3BVEoRpwdw4xIGKu2P+8a+Vn5NmkI712MtnEGlGPr1dpOm4HxFpcaxrUQEvB+Ow/xRaJC2NUkKkk2A2BC3zl1SFxJyR620f0MCa0DCzDim88PO98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSClMWoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSClMWoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F90C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752543593;
	bh=SnDMnwo1GNoH6+FVCGwzSS6FQ8WQUkr5RBLhZmntYII=;
	h=To:Subject:From:Date:From;
	b=eSClMWoGPF5x3JgdGLg1YSN21DwdCupq0rY4g7W5fyesIazI/bga2X1rIIA56zSNg
	 s9TZhSyedEUx67csFEw14ztG1vOp+o6EhF9iqUOzRfkSMdu1llF2eC1twsuI4ULrGy
	 2lwKQBa+rH8aXStFVhZGmyh31V2NkLmuIa5lmwfF9S1B1FtFBNNcQ768ud4/sqQOn7
	 sRrMYw4YdABo+yQrcLFy+lH7t3V17AgV1SQ8kQLbsCsauCDe2zD7L5fsEMKYWlbI1i
	 MYVpQzo1ISWMdz7hjvtJ7YzWU5E/ixXyI0sv3M00fsC9L+8hZ44+ojmCjkNnCHbgqN
	 zPb0xy7NfjPzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA2C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254359357.2054.3093397656955117005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1bab9cc68bc81b3f6aa354b95c33e7bd737d07b7fb9173f06d96908d8c47dc2
Date: Tue, 15 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752543593
