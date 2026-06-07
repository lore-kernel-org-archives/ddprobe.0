Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2854071E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780847674; cv=none; b=TtJ1nU420YK1rAVhZ7o6dz2L7tgYGsJh66pbvKrTDMgoRo+/yDts7smfvdjkCGqpowkStSTdcNSgsTwaGSxCyzI7hMAV2l1+LAIIN3hpXTMEUTNmkhGSjy6NXUyEiyUotUK/NjJAo7Z6fZAGrg6+qYicOG3nFBEw6zOdE2NZ39k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780847674; c=relaxed/simple;
	bh=/8BRo6EygvGhtHqhaA0G5zckjcW9GWVFMXuY7THwT6s=;
	h=To:Subject:From:Message-Id:Date; b=j16y9WKYISJx96EiiXbFLeQ+VGJZ9UOuO08kiHQU8aRz2f+B43Au2naQDO7txgmf+31qbYMH/bKuW4PxpgiiCHonQ06pgac1X76wwKTnKJWzVWDYBYOJ74vZQw7LT/uLGIcrEJJmlAhkfu5ClY0aV/78Q9NZp7hr99Q7L1WfoME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSzBSaRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSzBSaRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE87CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780847673;
	bh=/8BRo6EygvGhtHqhaA0G5zckjcW9GWVFMXuY7THwT6s=;
	h=To:Subject:From:Date:From;
	b=oSzBSaRekD1EH2VdnjHjFotMUmM30LYkoqRfc+wk9NcnDDb38QBo5jSsijowhzRJD
	 uf/E5NONcEGGLYA88M+MOzi3jyLAhvlWX/CupfVjuXyY++bsuxipMoLqSeN10t05qF
	 7CoaHle9OO+PJEVg7p986WalgxliUQjgZrth+vVJsO6EI6Wqn5jI44Mjz23i7lVZVu
	 Z6+j3DmMeMQurnwpkPzXLgoEVFWntJPqCw328W8cqYKN8mBxo/AmnABg9yYlexoeke
	 JoO0zGU/VWtHgJDru/eHAT2i/EfgVYZXc0acVhXDV6Tvbd7XAUnNK4GScmG1QuUulR
	 zYc/AHcObRrbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6E6CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084767370.19145.11672265595797412094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310c91c3b47fe57c667214e74a28455972d2f7bbfc7a88451ba2594f95bfa2c4
Date: Sun, 07 Jun 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780847673
