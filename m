Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E89A237A4F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759952394; cv=none; b=hCJm0/SReLrIBX3PIQecX55hRm6E7E6zW2kJf0nD/3OpPK12QtHCjVI72fp3bOrX3Q318BGeO6MAmAI5UzjZPGOMbnGk7fZLmy8TMGKjqhvyZH+dZO5ib6S48h1vNevmSOrpm691RJ9GzlXXEPtVFVVwjqMUZfSyf8hIKQHITuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759952394; c=relaxed/simple;
	bh=ziK27mhnm7yaIkGV7sztriVjBK1FAL6PLMvQwBsFgcM=;
	h=To:Subject:From:Message-Id:Date; b=uOkgRXx0b5HxK6RrmCkW9+gGjbg+fE6cJU61ckn8uhI4pLzu4wfKLB0BUwn2FdUvKIg/ZM7Lkiuu+IW8UMbC4jWOsLdFow4JySdPDIGsaToSbAo8haULTqfkyapkFxb3yICWd7V25yK5TFyhwl12SqQXfuJa6pDiXZswv2lZBh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLvnQj95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLvnQj95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2E1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759952393;
	bh=ziK27mhnm7yaIkGV7sztriVjBK1FAL6PLMvQwBsFgcM=;
	h=To:Subject:From:Date:From;
	b=NLvnQj954u2Dg9jgqEUNLHmbLSpiFKsLGEcwjzqb4mjJWZfIqPoLC69PVMSrsHg9n
	 3IkBQi12reSrZYmXWZJMnaf2alDuSjhU9vfJmVnAYkbUWvL7d8KBcSBEWr0eihk2xn
	 8K3iXCWYAG26LzSlDTu0eCspbxHGu4gt/BaCG3CoIb5KuPZVLterD74r50yXO21idv
	 q/ghR3jjgQgph9qVQoHSjk+tYChcYe9OUzoPUvo1nYRm8hWUzmS9pBKQAX28T2S4vb
	 fcetcE45//yvfsqyLcpErtThDjHxSYTqF78XFZ2yQpnrSgajZpLu6evR+bF7hX1hdi
	 g/0crzLeJJ3ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1FCCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995239360.8755.11323219287057445840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1bec6f2a00b9fb400ef129b90e17206870b2cb113e1aa26073a7dd183fcca0
Date: Wed, 08 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759952393
