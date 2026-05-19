Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33BB30FC2E
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779156634; cv=none; b=Jz8Fl5AXIMHYQZsaCP4yTkHyEBJi6gnlOo8l2cK+ja7MUtVrNJySmfaTTvAAdm8vPYoNa54Tvt/t5Yoz/aNbA0Qg/KKLbo50KbkW33THU6kJPUrbrKaZ6XI72ouSTaV82p2Km65HpGnQXWaDgzZXNhDNZFkZUtLj3ugcSjtTKOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779156634; c=relaxed/simple;
	bh=kJerRNuQ+PAd8Cgw7VFR2biUqJg3Xa6oiw24Y8AvDAU=;
	h=To:Subject:From:Message-Id:Date; b=duElNxmMPE39Zz2pKcgvmsVdzcGPd0FySGylz7HFSHnAcGffOglzgv7KCgQeLf8znAf+5QHlgHcbEN/p7R0q9c5sH/iwHNgNPXXqKRS1dbGLoD5VNdw1MwlEb1+EC6NKTJA9Jo42a2uewsYj7CBFeqPn7f6Nmoa0pJJrlWvYfhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ihk9YI9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ihk9YI9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1A2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779156633;
	bh=kJerRNuQ+PAd8Cgw7VFR2biUqJg3Xa6oiw24Y8AvDAU=;
	h=To:Subject:From:Date:From;
	b=Ihk9YI9+xzbIRBY5+OVHzG8KIpZ4j1m88IaqVFCl4n8hB7zW1TCwtgsM/AlWiM7g+
	 Mp157I+NHfOlA3mQtOrBR9EDpi61EKgBuhrcCmBL/ji71GcBiKHEMxBQ4DOTPQx1K5
	 by4MTxbjsIEjp6Zwd6SFu5x9CVK+Mf66MtI4SRGiPKqhyUzjcM4XNOyCggl0/MT5A8
	 GO68f6fbRlLbZrqQpMJU/3hCu494k709EB6enzzspLQrhSjRGchnMZmgsZc2pG4cne
	 BuWdliSjH3KUvRQzGCQJr1OXkV/6yIci4dR8kCe9FDSY99mt+gAXkPdZz7e2cLJaOb
	 9tSyF1A7ZVaPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04A2CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915663368.31828.10042075002477200353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700e09becbd61fb28d3d2eed9c6598550e0a13c574ff227bdc079531ab000ae5
Date: Tue, 19 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779156633
