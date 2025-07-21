Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332387DA95
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753073394; cv=none; b=UVR2XD5Q7X1wR0lnm+QJLgiGiDgk4okePRadh9K2BsXGJRo09dkR9ACIxJxj266JrhikcOcfpqxCqfvONEbUk7BBsVHfS/PZX5oJ3DFEoc5/1ubq4j4w5H/aZqe79Gkt+0KvYz7o+sJPt5alqRLcZ3ckXQcYgo3JN6nVwRUD+wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753073394; c=relaxed/simple;
	bh=3yrRa/BU7WfjUZ6xhWCjYVqgIzUjADqo8TNoe2XjoTQ=;
	h=To:Subject:From:Message-Id:Date; b=YEyIuzzS7GQaRWPQ/Aa4egDHorDo91v/Pz2NvvsFgSOrfb1gZBn8i1yvbrfvjW4753Q0nhQgM8ypD034YsdVMNO0p5gvLhF1UgGZOBB2+zDsMnIERAYjPLO2ut3v7kFSqnBS7ELJ4mWlgHsea9KwAM1SaMALtivWo9Pv05U0XOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niX60SUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niX60SUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753073393;
	bh=3yrRa/BU7WfjUZ6xhWCjYVqgIzUjADqo8TNoe2XjoTQ=;
	h=To:Subject:From:Date:From;
	b=niX60SUXFQviV3btkzwwHJjl2tDSLXFWJHd9Qe5mZIKsG4lSjKqAGO2j9TY6ulBtN
	 fn2FKnOO/FKS842PTFkWH2Q8l1g4jvhkunQn7tnSgsB1qAj7bmj/MiZ8otbWoU37tz
	 64JkYGNY0KdQueLkul4OUZCrSn0dW8d6jTiVhjlB62Qwdoj+CbxfmlWckQ8Em8DwGN
	 MRwzkavYw8oQI8FuFEWNoOqgIpXbEsX87r/OKyS7rvJPnvuZIeHr9zD/KbGB5kbl6l
	 SreVbohJo6xASlb4XrPbuwiKcucGnouaLvF78X0PkWiPlPvYaHbdrtY3XAnCTBsBiO
	 HFycsVDeqb0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C1C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307339357.23342.12463830072975927471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1160d4c8ef21632b7accb524cf812ad055dfa831c9710b0587de15f1fed3bf7a
Date: Mon, 21 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753073393
