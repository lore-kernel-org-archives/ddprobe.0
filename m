Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D405243376
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759916994; cv=none; b=WaDmzYBvyjdJlbd4t/F8f8ghHFIxwvnamezF8dvM64YFfD4vbh4OLP1lNqT9SSnf6/lvasB1zTOhALFH+Igu97tWwFd4LBqY7w+xmRqT08sRSsU1dzEOUZBsOK6bqucI3Mrw0gxlLFFgXJbnq9sorCX2rYMmy1AC2lbQL3C+fis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759916994; c=relaxed/simple;
	bh=KF6+x8a/w96aQQRg3DDOqHID9xzD/dtr9AgwvrZc6CA=;
	h=To:Subject:From:Message-Id:Date; b=Hr2qEABoU2P2YJlZLlAJEgIUjbyCGwk+jYbO5kA6r1oduWLrKDQHEFJyXxCwAYNJ9jX7VuaXd88zEUG0BJ3iPNzz6VxWlB9Pj0s86U8Lye1ghqxsUDbeDHIl/8NHnJjDJK4EHqEb3K/MKsI0DaPxotYOHJmHNFl08VFEpAZrku8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0BFXCcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0BFXCcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A5AC4CEFE
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759916993;
	bh=KF6+x8a/w96aQQRg3DDOqHID9xzD/dtr9AgwvrZc6CA=;
	h=To:Subject:From:Date:From;
	b=n0BFXCcQIwnoDxBYEPNBUP9xWgYYt2aUQwRPprMm8nijf0QM6o27w//ayO+iaSNiI
	 2l7DT/KZfcDpWQhoZjwYjPcXp/350FalqNA+w6uO9JzndMtuYowDR1GD8dOjsNxrCC
	 LfenuwyBSNBJ+lHqzJfj4LtRmsO/TxS8EiDcZ6HIKGTsjSRXsMUuwSVsuBqzHj5agi
	 YQ3SfK2mZiIwGs3TgC0DojNTX47Of7nzveDR+mwxKcNVghri7D4UOJnfaccp3vdV8A
	 zByOVNwXnCmQ7EyWXhZQD+MNWgrJlF3djXBOMmC3/Bd947h32Rwg3gljRt94yMw14u
	 B+1vbSF/SJPjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA99CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991699357.20622.11381161240581438783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7131b6928f103b280ab481d500b22a6777fd14e48c6887831a613f28d4e6049
Date: Wed, 08 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759916993
