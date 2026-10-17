Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35469367F26
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792266034; cv=none; b=kvZDdQ0dbqqunAayw+o4hjCYMDDQrRa4VxQ/ZRsu6tNRBB0qm8h3KC0pi5gUCjVX3YBwj3WHWYTegQoJq+mBKlwNknpFkhNaR57w0O37SF6Vm/49cTT3vWu1i3HvG7JQuhNy+SmRBa1cW4gl0Pcgz7zEwr5umuGKEUNibcXtDfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792266034; c=relaxed/simple;
	bh=RDJYYvLeRl81HquxTw/Uu9b967Os6swNVu6w9rUnRC0=;
	h=To:Subject:From:Message-Id:Date; b=F2DR9VOnPNyI/ZfBs4lF3rCFP980XzZtTSXp6e0LlxlKiAk4MMPXjHJBlgn7GuO2lIEvig8c73c1oxuJ4YJ/P5o4UT8VNkd2AySQhyigrJWuiARbu6lvIx2p9tdQqP352b6pWwMBhX+bk8CBS2dytPpfDuxe9SETGeBf1IB/+3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjXZrb+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjXZrb+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAFFC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792266033;
	bh=RDJYYvLeRl81HquxTw/Uu9b967Os6swNVu6w9rUnRC0=;
	h=To:Subject:From:Date:From;
	b=KjXZrb+DNzxolROhKm6iX3F4kFJfrOgc0fi/2RFg77flkcveR7G672OBHxEMcpDlr
	 yhG0LxxoJ51n+WqbvKIc1hY5zhOra72gfHX8Vu4etPF9aRHaTXZHJd+dUgnAD3rd1i
	 tk5DZz84vX9aUjXqWpX1kvQTBIIhsgdAAtYYqipwFnI604e21sLmPQMRArRX60dm6b
	 MMx8N01rny1SGtlQpb+4zmBljebV+grfPH6JJU8yHsCjEDzekvEynjcBw/yPNbhWn4
	 ROBrwGDso9XbFrr6cueiYJQzvnWGmR9JOED525Nur7vfxDO5ItLIeKnIL7/0wKgcbw
	 zf4hyNbc2MrsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B599ACCF2CF
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226603373.6736.1182329641874814996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1fd417c21fee5b65980c318a87642a03b1aa0e1139f32dd890bba9f188e312c
Date: Sat, 17 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792266033
