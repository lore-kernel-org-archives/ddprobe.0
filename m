Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB0621B199
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743454795; cv=none; b=IKtk7z9sNeZ1+o1pWxRI0axUoRhrNgZEvjhNJ+n+ty8v+8tmd4BZrPE48KUFQI52UDH0g0qYf4Fu2JpeEiYwp6D6i5bCu2WZRsrtQaZ9sAaUBpts4z8cou/STtMHeQnFJOH0pDgS3isNhA02hfRaqBY6UtcN6ZrdLyja9i5ikCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743454795; c=relaxed/simple;
	bh=mvNhABxZfuiv2Ux1NIW2qeOKDHlH68k/clIMeRcCHh0=;
	h=To:Subject:From:Message-Id:Date; b=hI5mOc1ZfK7MYqDEOuXuFo9xlUOyZCgIayhIkY5PCLJ20DZ6GBa7+O3KW7hi4OwRbaxD+PC7H5C/IpdUypAAiyNRuyhXsGAI9NwQwwZYfJSIpv5TilQ8wyKwh633S7BxPGdsZjgr3cj19r24E5lkYjvL78JS7RbRJAvOQUzyHuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbsRO7rL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbsRO7rL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3AEC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743454793;
	bh=mvNhABxZfuiv2Ux1NIW2qeOKDHlH68k/clIMeRcCHh0=;
	h=To:Subject:From:Date:From;
	b=RbsRO7rLU43Udtb4A8ttnScJFJElUTefFgH3omLlX1cfE9TS9H4gp+NeNvR/ZoPhK
	 8lrJBX76K1D8kbmN3QX8291Q4TdnBs/muZLPGN8eHMdiH781YAIrzVLpecFRXu7B3h
	 05WZMOx7tA8RYJM/x3dbtC/UNM0vyKiCz3djGn6sTPCGBLsFGtGljQI0wPtQ1e9f6b
	 ciNc9i8tkATMKh0ejqvuXYcdvUhfs9+K7g9r49mdOqyjW7jFZJRihJ5ZkbAtLfw9WG
	 D7rhkgz8c2A1jozNlr6YKAFjc28dOqJHYgnj4FdOykMUeTHuRmii8qmImMNAm3bLbe
	 vFj0Jf7eV8CFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3ECC36014
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345479362.25739.6808515676964721346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49260d1fdf2005033a3bad871f07467e991776b5046c274ad053836753561b0b
Date: Mon, 31 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743454793
