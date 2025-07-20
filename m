Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326611AF0A7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753037394; cv=none; b=mJZBQyp0OU/YyyPyYGVLzWilIp9nHelai13o+6+RS7DZfzK2HXuhs1R5mzA/Ny/q84hwUOD/znnWg3SyslhJ6BwYcduzYgB6sPz5knmGr/x9E2DvEznuQtvqBsPckukxrM4mLdVh6j6zZ6Tz2H3C1nNGxr7YbCM22erKpP7IG3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753037394; c=relaxed/simple;
	bh=4l4Ys7ucSFMaQvhUggHmnXPUr4UL7bnh/zhEw/YnMbE=;
	h=To:Subject:From:Message-Id:Date; b=byf1olsuk+oBoB4qAvlBBV4s8VCMhb9oYkA8AvVYL+2rsu5Y1HZ6hFUTFG/C03YreCI2AXn+fOPx9zSm6scQRINou1NGlXBDVXH+c2D/edTGB5hGmDS1+i60zD7hOwjf64m9eRvPl0zETb/jc7VLxSW0IqXpQZTjVlsDoD56Ut8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0SekVnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0SekVnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B017AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753037393;
	bh=4l4Ys7ucSFMaQvhUggHmnXPUr4UL7bnh/zhEw/YnMbE=;
	h=To:Subject:From:Date:From;
	b=f0SekVnB4mTiR/JPhpugc6EgHRo6VEHO/iB+tmwp5FS+H+ZaP5JctxH7sb7UeQXA1
	 pW13FAUIfr11FrPw5eZvIR3H8KQQDSNPZANAfQelbuLcOjMxVJYhBxd0ChwetSFSCC
	 B8UQ5PBMnE/+KbvqLN8hzXK2Cysnhs6oSzor7v+tW9KzBkDkaI38sC7LigF3dyy/tr
	 QRwmn46K4AVFFlQXCaDwHBSG0Qi/LFoe71x0oApp9MlBvD3fYDE76SNMHo74JrmbJL
	 FtDVI4yx/60R8fgpIFQQe6p4j2KxKS2OrrdTyeacmMrsmlRSr1dD1hHx2aAgchVY/O
	 5VMuD4jBl7DYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEFAC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303739360.24455.16914347468408761039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6c828639c3a26eb825b1cc9467ee92033df59c196a3bba13f972ac9d1673de
Date: Sun, 20 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753037393
