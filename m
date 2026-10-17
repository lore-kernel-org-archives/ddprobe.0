Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6831A37F318
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792239034; cv=none; b=lvRnU66EjIUy5mM4jKivfSGFk+b6cLL6dvAqRB7UKEYdXs0vNjSjdaB+1650lwJnXb1AYmoPrqq40i4A3oBslRqB2G5381J9dXDJNGqyz1Kh1cNDrLEo+296PuKPMySfm1DDpZUpuoIJuifP1RqlnHlhusu3Xo7WkegKnfOjfdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792239034; c=relaxed/simple;
	bh=c6nUbWXWUzMIKwbNIU7lzKWdC/pSHc2TRAc4ocb4fDg=;
	h=To:Subject:From:Message-Id:Date; b=esWn/lx2WmHO8TJkCzZCT+OwHaFH9Azg6LRYlwyvCIHWLkXIKvKgmNTdErGYH+mqOJ9kjtaRF+xeqFztymb04c+UPoCTVcob8vrd0OWW1NQUDA7egX7wEwTTx0fKulQMRQL70A0Bd9IoRCSDgGYpWM5j/DNUkxRKs/tHGEOsvPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AK5Dp5I7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AK5Dp5I7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15F5C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792239033;
	bh=c6nUbWXWUzMIKwbNIU7lzKWdC/pSHc2TRAc4ocb4fDg=;
	h=To:Subject:From:Date:From;
	b=AK5Dp5I78YFu2FassTXrD00Xj/WQCnSosQC/NUrwpo3Db/mJY90wQuXJUE6i6LzM+
	 ChSTDvtvRLauCqMg8TuPELVzALusdnJnOtWmNqWWZxNKY1g3smjC2KhfQVXAUoXbIW
	 /mKK4MNORXJJ0clrh5OJvvVMw/chFeooYBp6J6exLXFipoNydVH07Y2p1dB56lcEd8
	 YAoXvd/j1X5lagEYsGTzlgbhIqvkHpykCpGR7nSMtVK+yRQeMzuZfpWNdr8CjXLmPP
	 3VzPPYekPrZy2jY4r/fk81Z8qRKh0GG8SLL4ZrAswhStoI8IPul1wA4KlUkDhBM/sa
	 hlnrFqyXULKhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A9DCCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223903372.11452.1480813290802698263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7989b550ebb62f332d6345baf003a1ccfb7a0376be5389095a9a835bd6a15010
Date: Sat, 17 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792239033
