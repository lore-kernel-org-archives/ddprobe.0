Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F34C1F37A1
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760993394; cv=none; b=s2L94fkfWGdLdvFEATThMNOoY/Y1gnEtPZo7mCiMG1Eysl96XNYP1vnV5P4c8DBGbxwU67zySU65AI+j8V5rtMIrlDJIr6XD4ymRgRcML8rwoW7OiAEIxwhPaQwCnEMgQOJkbNVwi9NaqPfLqgntnfi0NgeTJidq2PsNO2NIyyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760993394; c=relaxed/simple;
	bh=GVgdykCR9gsOjMGtEL0rSB6jx7FVAxuzAaEjkKUQBIw=;
	h=To:Subject:From:Message-Id:Date; b=M15IXAp+1NqmGT+901qgvdmSZzJcTdyyvQgjzgMS0Bz9Ow1Efpc03PtURpc5QYMkBRDksFtVHswDMuq4aLIDdwQIHARXJt5x4qj5zs484asXl5qpuuWuhtWsKVAe6+P+zpPn+sDZpFHotvVJKzl4v7w1TBJ6HGGotFRPP13fB6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNo/13T6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNo/13T6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A79C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760993393;
	bh=GVgdykCR9gsOjMGtEL0rSB6jx7FVAxuzAaEjkKUQBIw=;
	h=To:Subject:From:Date:From;
	b=cNo/13T6OvPQuvSepb62GM8I1Qx+/WJJ7tIKnmiqYictoO8TJ5VwqGm8IomT/egYa
	 CesPt78virqgQG1IIOkNP2liQP20BoHkZO4un97WBpmY4OoEqzv7JZaSYdnz+grX+A
	 NK3t+3plRuQG1De+9jVFVzYFAbMZrNs/p5kVUZ/ibWdPWEN2X4nUlrkDJx0LpZjcpT
	 D6qNkpdlzSdKTViOwBxCSiE8Y/3KcLgsY8CNbC6TuySwFCaEMrlskUBcJNydd6aLNj
	 FNZ3YvJzTCOaP1w1ZsMpHHxugfonrqQkrAAS4N10txGqKCNapjjm3YPLqjjZFOrYVB
	 uilUPSK0wX3Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C9CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099339358.9552.12450637940590221656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ddc05d8e57192eac2c0392a308b95c63f76d0f0470352739532bcc8089d6d70
Date: Mon, 20 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760993393
