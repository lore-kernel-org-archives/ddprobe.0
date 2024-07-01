Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82302537E7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719831863; cv=none; b=aWYMXZf92uXrOB1Z6kXNp6EJ8KuaV63kRoy6zDbnsy4+7xeqgGmxqfpMKh7tN33C3XPhr/g5k8SMZGxw0huVK53GQRq6LNe9WoMCQQ40PsW2DbjNluCTz4NMk8XGIVK0KorxGBWtu8WE56WN7c3m9xWYDSEeTzhki6eD7TdKHok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719831863; c=relaxed/simple;
	bh=QelB15LtU0zZE+dvGzMKSRRb+pAfxrjEPlahQByj/c4=;
	h=To:Subject:From:Message-Id:Date; b=KsJJC/P2rlNP9jWciySXKPPKG6x0VTUQWYFSiaBZiF2I2PEqY+FcMV0YeIcssT9p3bOZwoW720RiSjWAGDkbzJOw2saFtfPyzsfEcL7kHenAPs5l6L6B1g55NGPpVJdfBf34Tje7ydkaBFTWSQrzBhw4Eqg5cQHLhgzjZrfaiBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnTgi/Z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnTgi/Z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC565C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719831863;
	bh=QelB15LtU0zZE+dvGzMKSRRb+pAfxrjEPlahQByj/c4=;
	h=To:Subject:From:Date:From;
	b=FnTgi/Z4TDjNxzrT/MAs80MvB6LBjjj5wjqnS7FBmA6zd9krdw0s/zi4BhORVJ42i
	 I5/7Ke5bugXAp6w3+aQeK+9NHg1t7nP0vVVmH3zpOF94ZW0hka26le8NrQbAGx2GQE
	 TN2eJa30CxGRsVUtF9RqVLK8O021mDRJPBMwCdYmcYHM44RSNsGU4gdcdu55WeWqk6
	 q6NynazU0WTnBwWsEnZvdVfRjIai+L9s0BUsyjXHJ5tmIqOKjjzPQKPGEQC1m38Ef2
	 5NknmO3K+4tJu1HCVctqfIXtBk3X9FRxqVBUOb40m6NHJnhIsdd9PGKU4PrNT42Xff
	 XCH6iYyvo6bdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A30C30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983186286.1098.14996445956413730760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6954866f685d93ba7f6ad2192698590628fb281cd2d742142ed9a3e10b99bbd0
Date: Mon, 01 Jul 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719831862
