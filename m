Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4244C7E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728090354; cv=none; b=kotiNjA2nTmijhSsEQxwTGxQVY14aOgNYgVQfQFRu3FUn33CdnyJyd7W9o6eWg7EoRtaHyFvANcjbxBBANiVaKjNAFoAEClwRcUJAcixrZNBGrFljrNh/A314vgqYtQV5xEiY1UlLjGn93xBmk2KbukhLB+zEQ7RsoEyld8Ky4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728090354; c=relaxed/simple;
	bh=nTybgM5yusQy9JFL3a03alAdv32TJs++QX1Dc1nWyLs=;
	h=To:Subject:From:Message-Id:Date; b=R5JYWdXi4p6FKXZ1s++zDjannJFg01cUqJ+oUL/d9FeNqBLowugJ3i5YMdtVh5O9P4Hz8ev8KemFihE4CGhOMk0z09Y8I8a6vN41zu/K/1SstLwzdK0zUK7UJrg36sTjgj7vmlTLOjQyw0rhXh8obi4GUwh2M7AyfYveeKlBSLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjyjsrdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjyjsrdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A897CC4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728090353;
	bh=nTybgM5yusQy9JFL3a03alAdv32TJs++QX1Dc1nWyLs=;
	h=To:Subject:From:Date:From;
	b=mjyjsrdjRviP6lq1/6S338/fMGLqOTL6UJucsSM3bREDWRuDa6R+kR98IhdPUIkjm
	 ZU60Kb0p23v8Vpuz5Usae6Qjbqt5t0+j/3WxtepXnOqxsU8C7F0bSeQutJ8JZMVfNU
	 8+anaewAbQPLRx7kHOavBEuZ0WskcHv82wXbrs71/K04SYu0UK8YpPa+qJjSE3vvaV
	 TAqQbRIXnUXol6z1yPlfvuM0MNA5/V4FIi/XrLxB2pMsSsRChh5PqZCh8Xb3cZrJpE
	 MSP24jBp1YHrbpAcpM41wZDmepKUxaWq+zycuzmRNkNVz5zISIL6aU+9mybfhwFYgX
	 0gM8UVr4a1nfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F6CF8868
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809035359.31053.16886047702832644177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8fbb1139b58baccb4845cc578719def3761bb30744e251bee6a8a0879609f6
Date: Sat, 05 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728090353
