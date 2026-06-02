Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDC038A72F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780410874; cv=none; b=sLYx+56xDM/+p6U7TZMlzN2hoitHtqv3azgG6yHOkUU1PYpVZHKjnFFdyGULgqo1JoTgHQwc5bv0+uyHILw4/UBPd/qrunwiIUTXQWwdhV+a0z9/8on8sfaQCvCGhNLhmnNXjvCObLLZibkeTpVv9Mnyf+Bnd6uRtrYgOYse+TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780410874; c=relaxed/simple;
	bh=WSOQauxEQOCjerlYm+ylFtKbZFnyrv9jIlDSAlaFg18=;
	h=To:Subject:From:Message-Id:Date; b=Fo78w5Hz333A1+UJt7xj6w2MgSyh7c1NUFvY9QCD/ApCfB21wnaowm6SamvaWdZfOLWKCjbZhlerRLfexLHWkolJ31hgiwdi0dwf2/pquidKEGZd9zpUMlkOyZBgnc9i6C8To+kgeREiqbZJqkZhtTIRM15UyAZn4CvGqbphddY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtBSzyff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtBSzyff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C334BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780410873;
	bh=WSOQauxEQOCjerlYm+ylFtKbZFnyrv9jIlDSAlaFg18=;
	h=To:Subject:From:Date:From;
	b=FtBSzyffmwizpo1GfcNlzOYEiOIpvOQvy7REdO/aIYlbbyfp39dWrgj+9wOwZn60l
	 8reXu6PyQjtUqxRSZ2cXrJYPk9TBSAIY6RrjXXo+vkAyHXGWjEERUIpR0Tg6DMKLrT
	 QM+m8yXDtJ408JhxGuYJuezz0nYp6HsTSM5e62JHX8F27gzfdszOW+am7xp04ZZqUO
	 ga41Iqtq4vuvJLR2OOigGusg5OuOSKcYhJfz57mZY82hTpk0N8hXgknvOcOwcMIW+i
	 l/8rAF0RyIQ0rPL4AqRsmHr74PZnYaGZs8GysF5KoGMfabtn8ambdvlK9knJg3b0oj
	 Rev/98Mad6W5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D79CD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041087368.12664.15594113040342307832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6deaaff7b95899541ab91e2f12b2fbe73dee0dfa6bc6c19f3993dfa394733160
Date: Tue, 02 Jun 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780410873
