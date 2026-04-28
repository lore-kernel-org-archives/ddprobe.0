Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A6E7478
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777352254; cv=none; b=CSjtnDuGorATjEYt02/qULPMNGX7ccLkBs1PwDuyHkEZXgVy4cAa5/AXA6QA1klikaWWvMIjXU1zUX4vn+7ooJoMx3X7HJttOS6f+6eULf9Y12YNBA43CCj3aWAcKu+biuuaoOXYeWHECpUv4yU0blZF6gSMfIQ/h1D507l5UTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777352254; c=relaxed/simple;
	bh=1iHlu6OqauoxBOwc4N0BsVBexaa2dEk/00rjwDUZ2QE=;
	h=To:Subject:From:Message-Id:Date; b=CEI6FcPd5RQPEhFkI43mLxHmJwYkwDjrwSlx7aax51mFy0yq/L8qOGkoZ1RTFLcQW9TDXP+V+opjqn32LEJOM5JnQ2Uq43GIhGunH3NjGJtA/h73hqGXLsgN4RqwEVse/swVzRxeT1GB5OD8x1ttvXAl0w/jBKO5o8KNXFSRtQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edqyN+Ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edqyN+Ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84F8C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777352253;
	bh=1iHlu6OqauoxBOwc4N0BsVBexaa2dEk/00rjwDUZ2QE=;
	h=To:Subject:From:Date:From;
	b=edqyN+IeCOt6NBkmVfg9keO0rGvGUpv/rkM9DNhu7jGdle1Xb3gUGoL09g1tzuaR3
	 SKcC5VQm+vo+6ehinSvn+5/ImBz8pvAQefLKdyDG7Dvwfv8oA76nVKpQ5pgEy8JscO
	 eQPaPcMopXyZFcs+Y+ZGh6w2pTXj1Ub7Gpru14Weu6c17yJAm6zFUGHFCQ+6IarEaA
	 xwIPubn4AELInMf3PqC5Qt+kiBXgqFZmqfPw9qeUIjl8lpkDbsNfwnXXgO2aNEysch
	 cbDoaMTnlzRJgxzICYw5YGrCZ+BvlWziqKX2irmhMW5xnh204vy6NYsa6RLAwitUHG
	 RBOujYmzwvzew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E5FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735225368.21455.5158061387496257925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6297af1b763ca9f4cc7a57a2eb22647446a2334f410aa9903972a4faaea58a5a
Date: Tue, 28 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777352253
