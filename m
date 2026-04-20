Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583BA33F59E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776648454; cv=none; b=HW72yOTPBQN3PulfIaBb9I+6BtV+A3UZto+eMm4XztGkV6W05xiGpSSYQDrdu/LydEzRd4m8wfZhwFFcSS/fIGn8/jW6/TVO8r/VWr9CKKWgL4xQVcj7ZY6UpCmV57rE4vXM06XeEdVy8xvvUgUrf4V/MaKn5tAg8MgZtpCpHPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776648454; c=relaxed/simple;
	bh=Irqgp+DYcrNZd4ncahPgnOj470fNRWNEDuJAriALLEg=;
	h=To:Subject:From:Message-Id:Date; b=UghwQaHLg8kXIwRsFk4MQVgr/gtQFO79KQR5i7Ja6WKDQZghcXL1xujNt1ArNgrqqG/2MPceyvfuJIg+AeSaCmK6+6ZHu9TBYFRHjDWt7JYdW84gAAtWN5cWnlYgBBHns4JkKSv7TkxnaeGf+oBBUucTnYrZwG22tjXH+Pu6dA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOr4jt82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOr4jt82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4904C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776648453;
	bh=Irqgp+DYcrNZd4ncahPgnOj470fNRWNEDuJAriALLEg=;
	h=To:Subject:From:Date:From;
	b=bOr4jt8244BsPt0QqHGxPgq3qaneBW8JVTqBr1ZSr0q2lZ81cU02f1A5m0mHs90H6
	 Pvu1Q6+WVurpfrmxhSGRvpDDwHJkaUfzBRGyxzWUnH4KyMW63Em+swMCnp5D9ko5cL
	 BOQGDGRBkW+rzZSEopgTLCuj82uHoBr+12bUBpJJho9OKCLtrQ6TTFf9SjujHqur7G
	 2m+B5kMnbWEAOaX+kfxNPrYP1pMJOW0uzsFvh2ddoArTlgZro8ms9F9FgisvP4O2/N
	 qz3Cjtfj5OWa7aCtwaa0yfOWjig4qtETClFgtanQdq0J2pU9HlJwEJxCmWtJ6oEH7D
	 xD0ULDQU/Ju6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B010CEA71B5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664845369.12352.12687311760155014120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023ac56d3f766b447f8f7610d9174c08fa9753f5747ab76b9311ad7a626a1fec
Date: Mon, 20 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776648453
