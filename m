Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA22A8663F
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706791697; cv=none; b=A0gqx0ktqbQ9u0MerCpyJpYfHxeeF9u9Qu0Ky5Ldrm4dgKiR3LdxLsbAYTt+IUbjzEpEJ/ecyWhok1LAMio+lu8Vx2dcQid4yBvhHPFQpt4V+6dNoHfQhreTUFVPtQ86VsEOqZVv1n+0tYbGthKvuRW8Wp/yhLgl5fL6mMvFVjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706791697; c=relaxed/simple;
	bh=48VgmMCm85ER6M00ZpQIjvS25E+BtQXB13F8XdeLyx4=;
	h=To:Subject:From:Message-Id:Date; b=bu/W6bkmSpx3NGp/B28w64IgG0PCIcBQ5i7+JJB2ges1cB5gqa5u+feR8HUNbDJb7NPlE9k3OkbFpmL0PspgwhSICSJiG98yFjYU1PXZmgkQY12DpfwYOFRmqnlfWIZ1+PjGusnqFPQ4JuVk7Nh2dW3UftHFav5Gf9F9Ltdw+YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtFVMkRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtFVMkRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72530C433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706791696;
	bh=48VgmMCm85ER6M00ZpQIjvS25E+BtQXB13F8XdeLyx4=;
	h=To:Subject:From:Date:From;
	b=HtFVMkRn80vwQOPHhbM7Dh73V0jeu0hQIhm0zDPzwWIj5bbhcpsRjcom9RjpYVnQv
	 SIsqCNMvcohVpuD6OvVRe5bti1t3nAH0n5O2BEnDkOD/PtN2WnFUZ0IOtHyf04ozIK
	 oVO+jpRJMs2YOklm5ZkM/cpO0PdbN9uejWApYsIeI7WAwd8yRhbDXCgdXKvfKVzZEi
	 mWGKZYaa9efzUtBrWeG3f2dORW9AfhhmBS1pINeNdBj0/T9x3UZeuPuXXwreR6v3iJ
	 9Szrfnho7awDQPnn+kgPUKTYEBMtz9X9F3UL/iajQ5mwvHmV8pPBwZIOPz30ZwogGp
	 +zMtbBFiqNm8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB6BC47DDF
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170679169636.12925.726348927175240223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66623e1e8220c30f39e058aa72116b6438fc656848bd88aa4b3a17b7f1513c3d
Date: Thu, 01 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706791696
