Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B35814D2B9
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728192354; cv=none; b=FOBt0kRvx4f2A8Df0ZDL8G3WJ4nizR3r9peFMAefKQlQOhuPjrqW2J92YrDya5I/nsHyqDH4c/Afc+te0jIkKiWKioKsE1Dav0husU5T76/G7Mzi0zwqjcXU7RlGuJalq/QAk5s2UDBKoFdQ4NfpKpjokZHBpDYrBIRG+erCKyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728192354; c=relaxed/simple;
	bh=cZWgK3hbKTVXWp47ODPCRahzh75zbqOjHmOPCzjcewE=;
	h=To:Subject:From:Message-Id:Date; b=GaiVWg14YOcc4QGFcNruIpNaPJzzxBOiVuzVCATxLvS/2NRoSfJfQMgEoAPxJ6nY1P1jzeJQ8iwQmdZcZbr7zjorPpGhNDrZtp5gZZVZgyjwQO5ZXwzqsLn/RmoPxA99an0M7luBPkNGvt/nytHjP6IykEpyWAmTxA5rff+4lNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehmVEBY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehmVEBY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA17FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728192353;
	bh=cZWgK3hbKTVXWp47ODPCRahzh75zbqOjHmOPCzjcewE=;
	h=To:Subject:From:Date:From;
	b=ehmVEBY7YV3kUqBXXTkwojdpJA0xpIUOC47qFQDIY48hyQOOCxjQy3btrRXWDTUXP
	 6JIsSqZ3uaHUxuH72ln995kyyt56RCIWIlNi7stxfBBWKGx7AvjComFZBq+e50qdGl
	 zCod4j0hcEnnpGnqWsjDHdGz7c2MOUwHdhfBgQgWcTJ8sd3APRMVYDsIicXaNtXHwW
	 AcymcB7CIyEDKAGT4An0F5+/mTpagPEjIC9xVdqerFhmpJEOwS8pc83pMZNhCXMu5c
	 rWhtW5ldzlSIumtbV39GDbnkZXRzpKaNP8aYn+7fhWk3cXuRiM93ciVqiopfigL3fH
	 pksegxkhjAxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95016CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819235358.6636.3719306136414370862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5448a433bc710c89fd14a686458442aa1c4d428c41b0cadd8368ab77f9759e
Date: Sun, 06 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728192353
