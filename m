Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593CD3D6498
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789293634; cv=none; b=kPNqo/HTT0i6J28N9TZezZtHchixX35l1HU0FOLiQN1plvaDo1e98BP4uBn4U6LT2DVL1zE48z16MzD38RYrT2zyy7F/i3zllI6EekXS6nWk8tlpuratfRT3p21b+KZVNAik2LcAeY+VksS6x1r1X4UKmgdNCWTthfCji37iaQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789293634; c=relaxed/simple;
	bh=8qzXDw56yJ4qJC93ZnZqZlAoOw4iqYVIRpuoGbWZT5I=;
	h=To:Subject:From:Message-Id:Date; b=qXtlTar8LPyUiL8KuSzLL2rv41xpmpaxD13JfpfBoBQu+HCNAn0fUN/7p/1pVKNX5/u3mz/td7h+1VG7MousziJS0hnygpAnfHjzajAAA/K4wWw2m7KE+32+VZ9Y1u8umNoZfG+8zGDOOrRScRMoG6LLhcE2U6Gyniv5iQ3TGng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AolRigYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AolRigYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2979C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789293633;
	bh=8qzXDw56yJ4qJC93ZnZqZlAoOw4iqYVIRpuoGbWZT5I=;
	h=To:Subject:From:Date:From;
	b=AolRigYczB7ecBR/4yx4Zsf6dPbYYqi014xppuTT8Z88GbwLuwTAMghWfPxu4z8sx
	 jiveRgYHUbwwg2kueIENzUiDeKkpLOLtO/DlMAEgbfMLlYIc02klwn55P1BqRmaR5k
	 jommyt6NzZPU2iInSFF2R/N96zsZkRwEBj9lDFTqsPf5rd29w92bSeiq3W73YGu92V
	 dvMKxWV8xGG8Y0hxaB/y0mwx8utKIngwg1l9V/z6pUtFK8qURfk2h9pjVJmyLQOcn+
	 tHZC3voP+bkRa12QwnaNwujGnb0G1D1FM6AuFFWJnqoxGKBq3It0lary9AShlTXWKA
	 Jtg4mbuDYVqAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE7CC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929363368.19960.15833954763574420456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b100d395f818541879a97be27bc6c7623380b8d94250fa6477abc93d0d68b2a
Date: Sun, 13 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789293633
