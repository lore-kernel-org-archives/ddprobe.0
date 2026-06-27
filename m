Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4780E3B5841
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782572314; cv=none; b=rG3sTVjWZpuQ0dZrQNh1Q/Sv2Xhd54nYZcVTf39pP83bjLT2xcVVwNatBTnY3kCDnbxuBRcc4xKMZCBCB1Bg74BXm9D0b8DL9onOC1yXJRdBudkdXkBAiTg0GvURpnc9RiqmGXcAKId2Bwp03Qr7SoXaafjHnj0cpkfoaI6JkvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782572314; c=relaxed/simple;
	bh=gfffavL+7DQQ5OPKidsN3KNsLDYLvZcXRFA4vBjKemM=;
	h=To:Subject:From:Message-Id:Date; b=TWt5H+SsJ+hAXYJQ+V3CsKZa5vcmvPwavLgN0wD+jnLbw3W2FbEAuNY7vDcrAoRQetQ8XlxZ/WjGJanCnbx5wg4hQzwrgS9gGGKij6Hn0kYmxEzimQxBIrd4PzHP/Ee/xBpfX9XFH3ivWNHFFeC2KE2aJ1Hwx1Wzxnj/tf73uHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuDT1s4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuDT1s4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B9CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782572313;
	bh=gfffavL+7DQQ5OPKidsN3KNsLDYLvZcXRFA4vBjKemM=;
	h=To:Subject:From:Date:From;
	b=UuDT1s4E8LgwSRfMIA7Mej/tGXoek1Ul5LDmcBCCfV1f0ZgT85LRhIBMgWMKRNpoD
	 MUjpsZJOYRXCQgzkr18hZAAeHN7WAP205/PyeJ5cNq5D0p4mBO1He2C1BRylaSi1Lq
	 pC7UjeYS1CjYFQ32hcpxs5UqaRsjb8gyHmgqUo/NoRt6OKNmY8TIGKrl+3lbzrr8zC
	 dM9dtSVh1Sn/pnixRZgGWYy+HBkiFf6ag2Osjx3I22+F3E7osZhtY4+o30U6o+gxfs
	 5d+Kcxu5nWvp9UDsqBl2RTGJnmwnAyWbqgaj83ogeBWbAC6VyuyIahrp9IHnRaVt5h
	 Dbj/D28bMoKNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDB6C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257231373.15140.1839802027541078009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb701fe25e1a5744582180dff375d7bf61b2a790340b3d180437caf24840e383
Date: Sat, 27 Jun 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782572313
