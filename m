Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126A318DB1E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767493434; cv=none; b=eZ2W/EY9oC6RcQF7KgY8f64cIfaFpxDLys2agRLXOr+rjmWXMWdUm2NdRpfL3zK1P4N2ARuZd4HPihpbAPm3/xZfoT1NgJF7MUZRtWuafZgRZizYbiBj4WrS/38la0Vq9UpkCVk2JYwnP0Pz1Nm6ODrkU4z5aoC79hczhxX2o8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767493434; c=relaxed/simple;
	bh=+5GhNidgTmw5DzFeFTB6eyKQ7A4eRs7hcLT0CmIsNBg=;
	h=To:Subject:From:Message-Id:Date; b=uBZFIDz2s29X+VVWLoFkrC0NzJ9gVlkLo7LhlggAD/rLvh/1bg5r4BS+ETNoWiwVaknJYlx2A5NoISux8Zaqwi7HfheW/r07IZjdnHVyNnKs98Fcawug108PByBa1/PICIfj6lKMWma16MlDQABJF6LS5IP+pyyu2cGxWgL4BkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6+sTvfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6+sTvfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8627C113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767493433;
	bh=+5GhNidgTmw5DzFeFTB6eyKQ7A4eRs7hcLT0CmIsNBg=;
	h=To:Subject:From:Date:From;
	b=a6+sTvfiCRH9LXrflm+F2hiMi+GLV3lhG8CBrNNwwpfSaTTOPBc3catvT8IT7Jnhh
	 iDH9fUmKsPWxT9wPHJn4OFzkS6Stz1VMDhhQGFohW6UyvOuE3WvAeWQBAFoWRAa8M8
	 vKkcJzIRtDz4TUSnCC7NT3F57FaazsVRd+ceXUCLOyDkWutdx/PQqaFRO2QyCf0jN/
	 e/Nr/WBx5b6hBRaMg49AIhLJKzTR+rQbhV2lHjKQC6joSvtahOuJFPmg7GPptdLaTu
	 79oHuhADfJIZ4q4RAKQ+NgN8idB+ND0pQ/qSKlSL6TsO0snVzl7TH1s33NWs4AHeCj
	 rACR7/0mMsnzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D8C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749343357.9417.13481860608497274741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aceb5fe1213bec933a8f4cacafd9ec3ec69dff8151f6351a3dfd808364cc7d71
Date: Sun, 04 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767493433
