Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A530A945
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752279595; cv=none; b=j3htLwPC9xLp6x0gZmetbKt5AkFBlQLiCNooAGhrq3yO0NkH/iIkant6QHHeGIzuYjVZGAxeVQ7Kb4A9zP9cdRqMUnkLjvWMV0SmVm+XQB2x2PGtER2YPUhPZmKe8/W56Ea7JQz1xzrtQDgKOA9Hmn6jhIXrB1KlYe0Dj9OzcIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752279595; c=relaxed/simple;
	bh=923komHmOhG2Lau2/BdelXlH2e52Bbbzl95j2KEdi7U=;
	h=To:Subject:From:Message-Id:Date; b=sNpNfFwA0YRrFP+Y8WyI7zM6fazsfazAQiRVIPwZIReaXsnAMkzdPPHQeGiKxKUKQgwcUN5p4M6as0RLdICtoi5f4e6UZobhLtcIHUn1cSxLHPtbxE8Ry7x6w/JyCagn9l0JvjcMktj9UNcLgXDhjkX/31OM7OJ0hZh00oyXNrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCW3SGMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCW3SGMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6A7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752279593;
	bh=923komHmOhG2Lau2/BdelXlH2e52Bbbzl95j2KEdi7U=;
	h=To:Subject:From:Date:From;
	b=hCW3SGMRcvSkf3e7GN0/nkOjS4st09GL9W/iRV4Fsx38h1/bzxYVmLj6WdjO4eF3k
	 jR9N1JvsV8LnSL600YOxyaVG6/AiPngR7DzeHqUe2DuIqLYoaAUkmFTOry+ZGOJf/K
	 Hmn3xOYOLTpu1NauffWKonJYJvyMbJDZj26B3fFvazYYTeIyxoqoNNJFUXd36YnBvJ
	 2RzzvdPDn/ORAs7pM7ULr5KrQWXCxA3sw1xfawSyH/tlbv+paxFUNysUfF3Ekk+qcv
	 8kjPuDTlPicadPE5VfpxbRPvc0lqtUa6ErHAFVgiN7RROWWjrpBPb6P4eHcN8HDVN2
	 Teb+OUW11kzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089FC83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227959358.10421.2511758584793038924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ade08b6ee99f07d30b1be5a7c520711ea273cb7139490021b5c021a3b826653
Date: Sat, 12 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752279593
