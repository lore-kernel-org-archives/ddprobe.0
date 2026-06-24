Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7BC221DB3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782308854; cv=none; b=nIw/Ihx7qaApb0YBfH9JGBCuDoR1E9Hem4XHh6PE9DDWERWATex0ZqyufYvuSTn+4HCCQv72kPBWijq8rfHdriW1UlhPNQ55c0VlCkaYFUDI1GV+kx8a46FM2i2OMcGolQcg9+MjbdJaXd2C2HIkdNI3c72hFWwY6wWal3PgsD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782308854; c=relaxed/simple;
	bh=cBFemTUo0YuxW3yIAEX92MbLRVTuRdm/iTwNK4n/HIk=;
	h=To:Subject:From:Message-Id:Date; b=ML2N4slpij+TPWvHe+F+5Qlt4XaZy1/GGLzuXn/9AA5P7CptP5ZdPFmDb5wVrM0vPkNxixQniRruvlPYmdlwsPfuLImJtzmFvo8iO7H+h4JgArGtBZPKRYsv0m2ZsECtdWQNPYAYfeHmBZO4/bzrZQz4V6umgswAVKZBy/u2xs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6Xyx9th; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6Xyx9th"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0CAC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782308853;
	bh=cBFemTUo0YuxW3yIAEX92MbLRVTuRdm/iTwNK4n/HIk=;
	h=To:Subject:From:Date:From;
	b=d6Xyx9th4oRQDVcVMduyMQDh0ryrWWFPztMsuXgiORHrXQsoxQMOoIBLG59zkoNDT
	 ExZ9dqzKUpaIjOPLgNf6lXe3kDZvk3M8LRL0gN8xMbwt5uugjXkjwCVYvqnTS3xByd
	 hUM6KJC8/oo04hY4Vqvp08M+MkK3rF2ap7QSWPgBAHUYJ/xmS7xQFEHB6pnvJyQw+X
	 J03Ve9cP+g7uWkkWGl3prw+BmZ0g5ROIEJTl4VZH4FjM8IiX3TrzODgB9qWSoSxfTL
	 kXyYm4tUBnQ3+LtPNdHYQYkP/Yl9cgsWu7nphyzzpe99lCBeF1Aqfy7FvuP+r7LbpM
	 +EsU63JjTHyXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41DCCDB481
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230885371.15361.9378561269707997682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8b07909d0b397c79ab519565a0b76c0b53511b65626d1c9a267e1222f79524
Date: Wed, 24 Jun 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782308853
