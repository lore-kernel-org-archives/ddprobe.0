Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103FC1B0439
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268994; cv=none; b=hvAdtbPkZv1z3aHoZsXGQ3CjTwoyxq/slmjddzAREWLOagcDCDIHbbZtTSoa0UH7qZX6LbsmYudGYgHlWkYbxIQ1rwNVChzVdG9PDiy0v/yBxuDbe3i40GSVgBs8NedD7NMrWgr9SXZ0fOUwzKo4F4OZNwVJDS22zJw3HvNRQtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268994; c=relaxed/simple;
	bh=F1c50Ey6upeQGnIas5eqMLgl3LWu2ysLP3TZKrtc/uo=;
	h=To:Subject:From:Message-Id:Date; b=PAF8au5Kjep2MU8oSqf445DvmZC0sb6R1exzqxXDsiNDKBDz0rL1IaGtIAmEogfyTHBSt4/T+qdSnrinK66/MIhIvay/OpAlgFWv0lpV4RX0ytOtX64h++QXAETqBQUlNSraQ5pJTx8pYshAdukT4uUsI/uAF2Lt1QuZ4B6v02k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtNob8NX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtNob8NX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E85AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762268993;
	bh=F1c50Ey6upeQGnIas5eqMLgl3LWu2ysLP3TZKrtc/uo=;
	h=To:Subject:From:Date:From;
	b=DtNob8NXc14NcZd2OrYkhPX2Ys30osrghj7XVpLaqxElQwZJa3uFlpnR3PicG++St
	 Rqby1PSf1xqsxbWopi/MYOJfibGNpsZB4KAwxAel+8nOujr527d2raHi1X0SF7up8M
	 cDLwrsmkuQQ0Uoo+43jh7Eh6ZhqENWmlgb4uZ8ytclLNI2YyV8+G6MUv7G2b7xRkpw
	 ihCcW7qTkWCQSD0ZZ6q7HMJuXMYhSzUZUomJj6h1zx8xiDhsYv2BOz6BvCSKq3GIAa
	 +PXfiwMWCLmFPlM9LTftZqYTK7EKL+1Zk+Y5BqGIAIqFV7+3N6xfzipTd/41jnykNr
	 4x6HxE2I6oYQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9068ECCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226899358.25379.10003901086215129186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf5d15496846a32516dc797f5c02c551058659037882b0d88880946eb1b328c
Date: Tue, 04 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762268993
