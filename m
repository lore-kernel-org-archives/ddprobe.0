Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB8E17C9E
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765112574; cv=none; b=BwJarnJS7qbegJ43f/4bASsuVqkvUMLQYHo9TLaWYi8cwKLuHB9et8qDTappFGlpm6Z+9c2U/HMMNiMTYGnsCtNdtT2/rd4h9pPWtPcq3I5RZx0FQk1ChCTq9JjJqYdgfaQLteVtMV/R+o0URhs/Hez/Bw7CWCXHDjcinE3NdEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765112574; c=relaxed/simple;
	bh=6F35Yy8pU0LndBT3Ckf0taOuU3gm43FI3EBCeb3DYt4=;
	h=To:Subject:From:Message-Id:Date; b=jzvftUMhPoEJJ3vr+L5lG5zJ4EObcU/wn8JtQ2egEniD0/Za/QJ7RINmkAH7y96147cedWCa02s2gGcKzUNm8XWNX9EAZhneclcpMkV9fPbqg1NeWDeGHgiFJIakTh1Mwq9aTM6lGyV6IIP+ZeVUuB4vbGj7731NsiXGDZkyCwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORh5KyRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORh5KyRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FB9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765112573;
	bh=6F35Yy8pU0LndBT3Ckf0taOuU3gm43FI3EBCeb3DYt4=;
	h=To:Subject:From:Date:From;
	b=ORh5KyRCwxCAvemYv+kcQ8zIiLA6vsF2EJ/jkw/0lFR2wsL8Rx0cgboJXL+JaSms8
	 ChKfMjo8F4tmjdDDkdUugM991ayPhURkFwICHA/h2cwcX0oNG5HMSwEAtf5wAUG7wS
	 yy8gzToLnCApFgY5rxDeAWdXHTdJsjJP4hLHyYgyYOl6cmB5/1dtH9rxEr6dfOYd0T
	 a08/EVLkF0KAzD5rTPz2qCng21T7dHBtVdzTIUXOj12PtDoyYrRaqafqOSEpU9DbNi
	 GzJM98S67xVK+KZPfWEvUgLJi3RrR6ja/zwb1GFTQJXC+dUu4dP4yL1dUPHkEryaKR
	 7tH2MOb81IjLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2A9D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511257362.12325.6600140869152408162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74315dd891a6f6f4f02f0ad77df709f20d0c7ca176177c77de13fba047763e68
Date: Sun, 07 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765112573
