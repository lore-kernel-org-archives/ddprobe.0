Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D5211C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728117954; cv=none; b=jFUsl1a8rIQbVuTC/tNuNQuZf9RSlczdDrpbOePLu10vj3Ty+8GlG5hJcmDImTJKUJt0+VB6BRAvvubtzBb6PdIAtzN6DRLzcZzE0ue2o8KyhO0Lo3xH2/sTwR5mH4ACxZblyE0CjxsKFt/DZb0PqPhPju//gSg2yY2N24LS2vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728117954; c=relaxed/simple;
	bh=BJPekB5QgYnRoKMij5rqMWGdbkaOn9/ttIQwRjxA1+o=;
	h=To:Subject:From:Message-Id:Date; b=jDg7HKBCY4LcAcxbstOnEInJqH0vag9Hg3WBjbwCEsYnI4xrJaFZdFHY/cfCUYuaU2jXGlWUbDwjIBvgAfpRkA2SE/9wqQonGjAefyGsxT8Z8av7Vn7VG7xdwacGA3gyNhXaKWU/YmmBIvcCp4qfrJQYMZIQMqrjSixo4I9rzf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5ZoS7X2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5ZoS7X2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE970C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728117953;
	bh=BJPekB5QgYnRoKMij5rqMWGdbkaOn9/ttIQwRjxA1+o=;
	h=To:Subject:From:Date:From;
	b=S5ZoS7X2weiPSKoxjk+Wd8I+NLd1ftBWromXnw8EaxT/5a7dbK5pI5jQ+ha5O5wRQ
	 +ED00K1+gq0j3SjW8qs4LxzmrUOrmxiHJjVFoeQ5i71aiZ0gdGgnvuV879pqQdSAae
	 gh4w3Sj0ihimXzKE/MU6GJChl2Cmjc8DqRniBBUG7++pe0n+/4xuLLmRAc0yOWFvsl
	 UaODmPyC6NIxCLKf/NJ3nXkDyFLF5NAoDD0uwoTPACVy/620/WD+QBg2caSvOE5w8B
	 /YvUJdt+WhNHYLHtgZmsvCK5K7ZojGm/IvSF045UemwjdYG7wlnyWx+FxoJdeztVQg
	 /yayxahZqMliw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A097CF8877
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811795362.22222.14708000140369563251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6a4c08fc169ed8dd5874be28099b08d47e4985d048702753b1c1ad9ca2a484
Date: Sat, 05 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728117953
