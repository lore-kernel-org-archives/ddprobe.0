Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D801D69E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717936643; cv=none; b=dvj8wzgoMDwCUlASX7JJ1SHg4tUqS3nm3cIXWpHu0FjXqv5WX1t+/HvJvyDIv3uN4QXZE4A+QAcwCq6+N5wTlNhDr0rhVKCa8rv2dcuqaS8XmJwTGAB/5FD/tAci6G7YQhq2skA0FPQgIb26nKKNeykLVtZHJe9HRxCk5kQdXf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717936643; c=relaxed/simple;
	bh=/GJ2cjhd4QKz4rpSlrOakuKqq1LFKbZZ9qjwdDwq+PE=;
	h=To:Subject:From:Message-Id:Date; b=RqeoInRF3inszvTOxM+wQidlr/GR/M8dfjqU/wSmg3DHr3vMqOf0P+q/iMR8FiSEuJpAt4v812sbk74TbuKSgl0yihayARiJ2fhR2nslZ11YwDf7cIRh3wJrd43Df55EbtTzqWHniTnaA3A5y5OuW4jmKE0FDl1l6awvdXNfjOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQ2HP3T1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQ2HP3T1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E77C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717936642;
	bh=/GJ2cjhd4QKz4rpSlrOakuKqq1LFKbZZ9qjwdDwq+PE=;
	h=To:Subject:From:Date:From;
	b=rQ2HP3T1TB4JlJcsXGEZktcPSMssY6SmCibNV+xlaiqw9ix76cUXC3YcoaqVcrY90
	 CIJsdgJ+G6SyAEKGFLPL7iVkR8iQt4czb9uox6UD12JVNc2kqLbTNW6vg0WG+q+nQn
	 DM5mQiRVMeVhKr8dp5/QBNvcwysylcKDXiCEXVNTuDFBstMN5zwektbqP2YdGWc/xN
	 Vh9dPbUmLy0MiYEsOKfb1qTCDb0t+h9C6+T0D60nantGDg7gMetlRb7WzE8KRJyX2K
	 pQxZcZYw0rI8lOJsMLC4A3pZ5s1HVm0P3KhNh4olhCaGQMUeq8MS53YObesQ92luH+
	 K31ag67iYTvug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D42DDC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793664283.629.11903050085490883192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9067e8efff904c099b969f065b6fc1a72f615d2b7479b730f284599e743e0db
Date: Sun, 09 Jun 2024 12:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717936642
