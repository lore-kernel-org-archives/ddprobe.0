Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D0323B614
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753189193; cv=none; b=IVc1fEVU9NiMzPONjDlFpodMsSjif6f3E1BNJM6T3R8bEi/iEzA3Bntyn8zr8966oYr+MASGKXPLOgrLjHykIrSg6qh2aVyGUgR5NixQ7iI/bsKWJdWGM2t+0eNcezRSkoyzGFNDpCIxAtfZHv3wOmYa5xNwtKouHDe4EyUTaQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753189193; c=relaxed/simple;
	bh=Gp52SWGMw47ID+BIHCoaMGQUpyJ9L6dll5MRMTGzui4=;
	h=To:Subject:From:Message-Id:Date; b=cjZdUE13KMGM8L9l/NhRF+7rMkKKMXREVLFKyQmthq3qwl1W20/79r8sLPkd52xYP6g8BpNeLAk/geUvcqz8tba559IBoJlQ/vlEmjvHNbVxoSPKULlB2CrZxjQK+advB8gMUEeWScScy3K8Rm7a0UB+q5sy0a+xDB/n7mSAy88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqSE+6C8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqSE+6C8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C7DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753189193;
	bh=Gp52SWGMw47ID+BIHCoaMGQUpyJ9L6dll5MRMTGzui4=;
	h=To:Subject:From:Date:From;
	b=TqSE+6C8e0vXQTt2Y79SPwUkGH7NlkHID4bmrNBRHa5v6YsWPVQBwhdfnWq3+erqv
	 xwQt75BJ1o4bClL7AIlQdcXODZ+b9ur0RrBrjIc05PrR4rMg0YYJ7Cszzt9Sy0MUYL
	 9HhWXFo4w7+fPzVWfI3/XdQbDy+3dWyEvxRoM5BySbOpWUiPkS4D16kNDKvgjk1i7W
	 /kY+pmMaBnPAWNxk6nPb2R32KZcygSfsAVG6QLBoJ8HwRghsAAFfprdt86qAPPIM7s
	 dZ9VuphIVE+1JBoQG/awZBGU7gnVgJ5N52pwjh6ajlLP16ofoaZL9MhUfXDYHdRe9O
	 VLyX1M2+MBA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95521C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318919360.19832.13966296488008830354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627bf2dcc6c183e2e26dbf61fa35f27683ebe9f9c97074e5093b5726445da21f
Date: Tue, 22 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753189193
