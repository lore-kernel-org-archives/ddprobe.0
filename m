Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F75C509F0D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790864434; cv=none; b=goHTjfzk4cTcgsuW8z5Lajn+L2eNrDh8j+TrnQhg9Qwd9tBNtXu474PXnzamzKoBLBK6KQT4fj25NkzI18JG1qbLe0vdw0r0Zp8GfIu1MQwPh50cZ50rpwdMLz0SVZom+hSjS6aMAWRjzDA+NqXUQ8jF6tDHtbL/KAuZd0FIpiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790864434; c=relaxed/simple;
	bh=/CUKbaPc9NGPbKEq17aoXbCXZwsgmiZJNKIs4rEt9PY=;
	h=To:Subject:From:Message-Id:Date; b=UoOTAlWPFHzI4a4moBsWu44iRqVpI8BnSg2WGiNn5JkB80S4hxDuIND3wyXiR7sUmB+hnzWf1FNqz7SnEMQDpXcmf7EhSKWpOZUDRj+VK5FLHPSx+R77Is3iDA9wn7CBTFjHOu1GdvAcG11+vMre6QurnjtMPjMr2Qim3H04LaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgUx7ZTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgUx7ZTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2334C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790864433;
	bh=/CUKbaPc9NGPbKEq17aoXbCXZwsgmiZJNKIs4rEt9PY=;
	h=To:Subject:From:Date:From;
	b=IgUx7ZTTp0Kj7TsEsKlGFPbGhKlEDkQykjRR6MxvKi3LiikFAlD4xEL5aY34P72PH
	 oZdHmDyR29ISvf5pPkZyljHP6sp00AT1eejeFvn8xKtHsblE1xQwGDGzEaMaji9jXV
	 jTsWLHidBlJfXx3Gc62iZt/S+Mivve8ARQVwRJ4Z8o1A6DScYCV8fpoiWQGeIM/c+e
	 z61R/QxGZmgadBLANhBtIAwO7aMG/Vm+aC7GQXTF2vjCmm4aAMxqWQ4F33Moc3HTen
	 b+zFmYjQqcopB4unC2F8VUPiM4Be2nJNGsLZbtxCwjJd+bhs8QmKqnV/m/7kbqvOA1
	 U381/NTg1SurQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAA2CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086443369.16396.13344422397969466303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9280b2fe68dce8ccc2f1c408ea08f0905982ddc05d6f89349c2e5712aa9c49e
Date: Thu, 01 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790864433
