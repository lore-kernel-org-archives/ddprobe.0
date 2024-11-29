Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1755933C5
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732881354; cv=none; b=QSrmmuoNdJFIDWX9RFCqqcnJAkSa4KcV9tdOx5UfxLY0A5MbJKbuF9pFXucbNW/cphNPtA2tJJMwGC0vrCNyPMnqwxVCMLAD9DdUWPe5RsyRJvDwaL2VjfnSLDFFrutYkQ0enX9c99nFitW4VEw0nT1Q/7pUvgSrtMK9Z/a6YiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732881354; c=relaxed/simple;
	bh=EAQeD8774rNTGbR75V2d1KSPhKitrcM8fgmBUi5ZXFQ=;
	h=To:Subject:From:Message-Id:Date; b=OXTgverjAssRuvwC6BDfCKgwzVXNLRp1aC9n9rRgqJLpGKLvwtKu29f7Kn04CRogKdgt3wnEnjx0tlLBtIOkQPvfCmxcn1YyzqdCW9wEWe8sA+FeKateXZsjbRNvwpHw8kqT1fYNyeqNiCVGKHCkFYkTe7rmdWD/7WFop9DRRXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgTq6WEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgTq6WEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC338C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732881353;
	bh=EAQeD8774rNTGbR75V2d1KSPhKitrcM8fgmBUi5ZXFQ=;
	h=To:Subject:From:Date:From;
	b=cgTq6WEpIT9ljVSfcdzPF+j4rpFIEjsoQtIXZzLijn5etPF6vevHIFy6EH1FQEa5O
	 c/jGKAY1mdosOERk7vXPVMx9Lk9xGnL60qnIlGMq2tjXFjJpc1pTHhWFaM/YsV0Xrm
	 EVE0PhanS9Wx5BmrNQJESdxiQ+Rr4Ovf/duuBUKYg4t8lr8EGgdeZ/F618YyZcnO3q
	 G6uZx0tU/XnvOiMA4DUGG18xaU0CO+CkTlSSXh9fJXzaMQJgfjvzRUFTmxP8B1C31C
	 y0NUxE6uCJTywsY9quFjyMZfqQzhpEFGJIUqz7lTOkNdYmXuCa1s/Cubx/y60uaMQ3
	 EJMr25dKgf65w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C48BD6EC00
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288135363.30918.13814779127490831123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40427d4be257bf83196f283a176d9528e1d6894f519d3753c0431850e6015594
Date: Fri, 29 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732881353
