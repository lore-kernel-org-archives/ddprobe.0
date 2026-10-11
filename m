Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3B517BB21
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791682834; cv=none; b=EwX0Ahcl5Odu3ev1KWZRhSprH5Pz0nkO53JvDOCVJj2gVJdP6thIuWd51xBeVkpKCowH1VJgCrZ6o7/FAx9eRnai6N3I9ZCu5XR4Cj6WbXjFSACn5lk3E2n7wzntcWn7jBooh6tIIFtsW+3RhQ6uEpM76nLz08NPduYUv/6ZPD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791682834; c=relaxed/simple;
	bh=vCAhypVr3f2yBUGLd2wEQsTcU+fFRLsOHAZntf5X9BI=;
	h=To:Subject:From:Message-Id:Date; b=fPjdk2xUKWlAwsroKma1lujCmggYM5H+6cBNZ15x2SHYZ42+WojiuSwUBQZncouPZMKJmvsrYBj79RUTA+fTvo+eFENG7hW1UH0t8C6VqgkLpKvNnffCX3jTtpHCW/Bbc33nA6uvF9o91OTk/6LamNyHXp+OmIL/oyNRkoj5cqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4yJ+vHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4yJ+vHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8BEC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791682833;
	bh=vCAhypVr3f2yBUGLd2wEQsTcU+fFRLsOHAZntf5X9BI=;
	h=To:Subject:From:Date:From;
	b=u4yJ+vHmQ/Fe9/+X72VZBFwp3pBJQLSaE/39SSgqfISXbb5AiRGoB8H9jv4BbG9Pw
	 tigiS1khlG9ucxUsO5+TmXlsaEtuwFszvygi1gcpOClq6qf+4tv19ay7BtPYQ4erXN
	 HGg5fG+xNKnt1c8gnUaWqEjwiEEjdrgsRBSZb4AvoCVodISfPPYeh9yp+3Ma/8tb8D
	 TcegngJEnIVBUAQh43uQvnhRXM55l53fE5a9emz1k5qquUsU8sz7oFY5SuNbMvcY0T
	 XfbsRSjhBs97YhbaSEqYIesN6OcQCSfPkCNSlg3VmuB23ZH3ozm+mbNpm945EL6PSV
	 nDgQEP3xt/Zpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9000CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168283368.7314.6778820877332947186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a019fef48c860d6f727c27cf47583c059f903e1fdef478079cb12168fb519401
Date: Sun, 11 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791682833
