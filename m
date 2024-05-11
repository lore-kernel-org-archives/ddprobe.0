Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CF71C6A0
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715448743; cv=none; b=W5BWHwG4KGDPkbZqcPZtXxWolwdhnFuk8+4bfwOw57YSPQke7OxEtQ8YGvmZseFQdxc0yauKTkBy1rBoEAahi3gHK+4vyxbk/8gx3XXVRLbZqkFAgms5jkYvGbvi/v2ZKtr2iK1QbwkgCMWssAexFY31Pis/J4qz6bi1cvWGnPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715448743; c=relaxed/simple;
	bh=LgaZgAKCJ49VkInr44QXEuFXsQFG2agI23sXX6DEBkQ=;
	h=To:Subject:From:Message-Id:Date; b=BGjk+2j0Ygb2V62JjM2zMQvPh4DdMHjBr12TKTsATpMV0FZlrSnSOUWbxmKc8r+lTTwFTOGIn1ndtrDn24Yroho08xP9gRSJG/OvcaY0LCX+hyv9yl46dUtix2yTe67jzW7LJMjRV0fmq3gy3ibY3y7oBnvVTc1OBvxteylBphk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8tVLhds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8tVLhds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06D21C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715448743;
	bh=LgaZgAKCJ49VkInr44QXEuFXsQFG2agI23sXX6DEBkQ=;
	h=To:Subject:From:Date:From;
	b=Y8tVLhdsLor3n9H00XF9MCaiKZQDp2FrxhGhFUAWqWMG69yhocFDwLOOb0wgEiJOm
	 0hGNZut5MafS59FQRdAsxnsfeFNPGOJyQGm4HKDmYWINYVScCAB/geJfZPdiCPEvO0
	 1G7T3SJP6v6HbhWa3I0L8oi/ojkJyKGsg8oxgeMB/W29SU3+Fl0q2JgMLqZXUFK2J5
	 2vr5L0ouei0GO4G2nwuWgR8KusY/I2rvsueGyeCMxPtS0olBfSLOBJwbFu9s6q9dWU
	 dOVbhCN2UWzdTsm7l0UZfNcJKv0KGYjgtN3ujfB51DPsYl1tXlSci+PKc5yIZ4e2AL
	 +95oWaHBXXvrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC835C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544874279.19731.10496283610231482738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5933e96201be672a70ce79749b083fd9636c5f420af7f53f5cdba9533fbafe7a
Date: Sat, 11 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715448742
