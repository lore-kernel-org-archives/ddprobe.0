Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BC4390204
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781954194; cv=none; b=BrDy9csXBWI2jK8+6QAoDCJ3kVO+Y1H+sT/c+tO6aynVImA3gic3GjIydWWJGDgvH0pjGldyTeinl9j1/oo/tQWEldPSatkyDiHXaMF4l1+Q8fZOy6z/2TBboBPScsfybhxVxRnGtx1FbhMIhTFCVHFIt6xXhiz4PuIW8X7L36s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781954194; c=relaxed/simple;
	bh=3iADKDslB0T/lgi10eaYWuNnVHYxD2JNw2TOyRzDN9k=;
	h=To:Subject:From:Message-Id:Date; b=LXDGfgdG9wmr+RHq1IXcubTduMjZIWV99D+YLjfVz1BEYax8gQqB7Eo+r4qQIIpj9HSGyq1YOHiY8AnHJ0V8WM34ZHbFotpF63RA8k+EVD/xaCO3vAWFmGXLlvVW1VUNGOV+v77DDcDR0KiJPi2dtDsEsIvhQ13JLZPfnfSJN+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpmLn7Iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpmLn7Iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1F7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781954193;
	bh=3iADKDslB0T/lgi10eaYWuNnVHYxD2JNw2TOyRzDN9k=;
	h=To:Subject:From:Date:From;
	b=EpmLn7IuougFV36CT0vAGQSNMpWkmZZKET0bzGZuDGGZHtIRyrKbrxCWpPJxLu1wT
	 MAodAg++sLW0rUaBWIfI3SkHRnNx84z/M66MiTWL6bu9pswFppa6JoKnnNJTnHpsbf
	 j9xurq2QYYFEyygNg8hS6WFNvnnnf1+PPh1GfG7lNR4QBKzQnvn3zcZngxdQLyRnFl
	 JW131u9MvYV5MtvSm9cFDT6R1r0oRcqLxcDe5Mp5nJurJK2Bcd5UTgcvKOQaTcr22d
	 Vq9ZM+LRJIYmEwJ7HYdYOYyJ/iHXya476LqlSlITjrQot/o5XpXtmuvxVinbSO8Hre
	 TCItyoaah+1aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD426CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195419370.4860.16026403795444128650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea106b9de3b68625a01b51300ac0d4f58a7086ac50583724d1079d7a8557d1d1
Date: Sat, 20 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781954193
