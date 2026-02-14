Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F4D1E51E0
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771084494; cv=none; b=dMdYFib4lNbVzEDEYuBUgur6BwPtLIbD8fIPIwsDdWLitbz0/A43HpOh5eYYE0dY71FFosz1T1hpKzhhTjsHAEOguF1q5zrghYe/XIeFyPZ3xolYn7jESkMk9Boq3tLZMBrn2rto2/VY8SJMEdVRNbiV02PfS3fnJe5UZA3cLvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771084494; c=relaxed/simple;
	bh=8C0j9AvrFIWoAf9cBaOr9iVJTmgXT3FZPZnij9UEcdE=;
	h=To:Subject:From:Message-Id:Date; b=X1U0tQakstBW4f1Azwjx5S8kP8yyBjYmjlqgNU7aEJABNIxOoZQ2c4rdfrsyYXyPc1ytSHDG/0L5McS6B4Hhku200aBVDuoyqGP6TmGDSNaLkXO8WN4WPZN9gOKILm0QLS+RckzXArq+1y6bSHInCxftSMtZmCBP+nP2BKRGKVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smlJS5/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smlJS5/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38FAC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771084493;
	bh=8C0j9AvrFIWoAf9cBaOr9iVJTmgXT3FZPZnij9UEcdE=;
	h=To:Subject:From:Date:From;
	b=smlJS5/39VUFFJM3LQKG78qQbj6BeQgd4bLrZ/tb0WnKl22ycVMQgZSzazY2hzDc/
	 8ZCmVlKmyohBkcDjB3ohi6QXPehqkzK8ussRu8lyniGWLGqQ1o+/o7AlI8vsx6TaMj
	 pEMMgL3tDpLlgdQShBwTc+VnFj7zLVp6OeCgTr7FqkVaueIPq9tnPMkxRN6Vvz+vws
	 FUIXIoq3m9MKALgFH90atu+Vse8QNrFh2P4Yh7Hu6zfSkDcY4rzn0SyRQwPMmLskmZ
	 t1U3v1pU64xnz/fAvHC47MSrylrxtbFqrTyVNACCzf/aKJhjXhV88oUdtvgKB1z6Vx
	 BGVu1kVaqpbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA36CEF5848
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108449359.19931.7072208264414322269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7dd7083ecd8fb481f26a56dd105e8a10ba8ffc9b38dbfcd9971967733c87a10
Date: Sat, 14 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771084493
