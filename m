Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B59963B9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745111394; cv=none; b=GE5/uMIR6/9y9s3lfnf6jnhe9GCSAjcMT2ti0eM1zL0aBBvk76p6nOLRGHNnlrsmRFdqjO7DZ3SLrx1RBTqPe5hle0FHatlbqni6REiVB4YpxHsm8DGGdcuthlfkNrXR6eYdAThf4Jfta4QLGKmTu9iykCaf6nvXsd0duWJNf08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745111394; c=relaxed/simple;
	bh=ZOlVbE32NpsUXTpQ2ero5vQO3gco16p0DMUD7w8B7F8=;
	h=To:Subject:From:Message-Id:Date; b=qDj4nhPdZAzNXJ9jVjhKihUXrElcWpkz2z58sq855uykUpbr6zfqphYYaB/Hx9+Anza9SCe6hdWzkafJxWwvTaJ7NzgiP4G/q1drobl1XzO3nVEDHtTIvCpvgEDUd2dFukjAWCSPZJ1U2qdzEfkQ7FGc6g3IdqX2Gov2yHHbjeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6qxYU7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6qxYU7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43FFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745111393;
	bh=ZOlVbE32NpsUXTpQ2ero5vQO3gco16p0DMUD7w8B7F8=;
	h=To:Subject:From:Date:From;
	b=Z6qxYU7UwizDqV+BuEaVcSGCwbc8BfAzM85oK/qmpMGi2J2nVZW/eFohKg6W3FqG1
	 Wel00dlKn2haMziEeH8axf3gPkwYIbPoE62TTlyZ8dMcWiyODNCXlrFch0TYAiVvdD
	 3jAwMCuxGqlE8HU2/aLlvTUVEXevJnYpFW8niMPxYAf84pnAlx0pwx9AsK0D2LNhuE
	 OghqcD6JRIX1XMMbTrj0RMmQGIU+4DOZ29cVq/NLWFTjHGOOaSqeN+8owZzcSCS1F6
	 +LkJ2mvQCEd0RbnhusDe5swlAcyYwNB38vmJv36mec2p2DBiAf0MN53drLMcuDx47C
	 abup1eH7XN55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCB5C369CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511139360.8268.10675965174367253498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca551ddb6bc3e61e18cab1ea5146953434cc54d2305cb510bda9802fa9fc241
Date: Sun, 20 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745111393
