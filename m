Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E452C08DC
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781558194; cv=none; b=sigt+pX+RlLg3fJkNL3Pe0x0VudeBi7PuvDZQHG5Uh/fOjkSAyVEAz3hqEqMGw47V2j+H5tiRdUPW56j1+bm5zwgzRLz6oJqgsXbOG8sZoA37QO+02EA7236bN0sdiAkxCSG+OyoEcWjyAuf4/0wt8K57IqNNmGk2Te33tkIhjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781558194; c=relaxed/simple;
	bh=OFCr6hTEijljLz43bl3bxxYRoPCJCfSeaylvi8IobeY=;
	h=To:Subject:From:Message-Id:Date; b=msC/ktdOPntWze3e2OIL6ug1V9fXQMFEN0ZrAh9UattNq6E6DjOgHGv7VBY/8Sl+OxkA45eQqqaKZUM/L9ShK1C2Q+KgTkcPGwoZOJQnhL3j0iYFVi7YVWLTgp7no7IR82SO8ZL86dmfNEPleat30iPeviyk/rlzErImLVbzM8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT+ZPb+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT+ZPb+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67CDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781558193;
	bh=OFCr6hTEijljLz43bl3bxxYRoPCJCfSeaylvi8IobeY=;
	h=To:Subject:From:Date:From;
	b=tT+ZPb+vUTiF2CTZu4wWIGSeRh40Dkf9w1IKRFJ6PYu4KzOgXvVyp8V+T6brvnJNk
	 xs2baYDgCSRulG3c93OHo4/vaWjgf5Ob3bxsbNFk8hn8TH7JFGQ4oQVzYp31KYmC0l
	 n+Dp/ypESQed50IsfCHJlkmMlgk4G/IEO3pSgW+1ZPeHGFJQZddPsEbHczAGM3Ss9P
	 WLCYJ6Qt6i39norHTwHWHusnoXXzqCU+ELhl4PqUstCw4kTWxX8LgKYzFPqN4PlmzV
	 1xpWbTcvJKzI3x3MyC4W3YFvfQUjjMoulbUeElRPAbHMiuuJ2wF6ulDeDRvvgclYJA
	 CKe4RpRbfNaRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB292CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155819368.25782.8015337136869021804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df97d4eba1a5b543f3a7157e5a26a914b64120dea6a77e1de6f9241170c0614d
Date: Mon, 15 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781558193
