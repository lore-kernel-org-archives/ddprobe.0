Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386A4126BF9
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735384554; cv=none; b=S9NCIo+mjrXkLbO1HzCp4KUEpRjdUXnyXHPS+dyTduD8xOO80M0TIiVGacxQ7h0wGaBbp3TqWitrDrjMNaET+tYxGn78kE2DDZ5phCRfGUu11GDqwLXHFXMCSA8EnS14D8MdcdjAwwRqT932WwkH43MtYN/ieDV8GaX+GfKg2d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735384554; c=relaxed/simple;
	bh=nVPzOKWIePPtwg6a2h8ju7bSSwjNv6kquG9VUK9t5Dk=;
	h=To:Subject:From:Message-Id:Date; b=btvfQf991o0A8cZ87sR+4TRfvRy5Yb/iAQxhmJbTqswlDZtpRaJF/0KkBZ3o2O2ou4s+P0UiNNpNQgsxvAIT26OywF8IAXDJqyj+TR/eEHAWU52Kw7qm2mUUHZzxJcaNTatNGWHH6r7atJrij1DDmzq0JDnEeUJLiENwwSjvqSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXZva6+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXZva6+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A01C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735384553;
	bh=nVPzOKWIePPtwg6a2h8ju7bSSwjNv6kquG9VUK9t5Dk=;
	h=To:Subject:From:Date:From;
	b=qXZva6+4KxkAE7ORncPbRApAwgUoBx63ackS9PaMquy10FZwUvXPmMHBKeOIF4Hg5
	 s05r5czmMqJRX2BZ7Me6qzr1elnjDOsc8U3Hm9opkYoQ9hdH2h0MFazb/+CKcyPHJ2
	 w7FSn0vzEngoyjpG3HxL/pUpGP+iTnVD1MF0Uxg0NF8dwzhYNueZRq9xvAGtf2lsgy
	 Ud9MXqoQdv5WdlG1PC4n5xLExJ/RlfA9sF4X9keCneGV9orKHalJmh9P5qHhpGJ13Q
	 tMhK+0POVs2s/ZIdo1dehgTJ9og49DrCUHZX5YqQtjx+Xg/DosPAZLJbpkY9waCcy8
	 vJbreVxGoq5YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B5AE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538455362.14940.11771673253849415312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eeb8da726b5f66867a6a8254e615b429ca0455268410a1b7dfa817d72d41f08
Date: Sat, 28 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735384553
