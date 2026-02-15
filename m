Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E81923741
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771130094; cv=none; b=bYlvdJs/welqDhC7wPWET//DSeGtL6YIhkTOfl2LcOl065d5sIvrjS3KizXNspR6j9W71fr/cpp8WhLfZVaWV6/IhFoWpoTg205GgpQBJwA0gVVuQ+3zTNfd6U4SAj4p+qFYJaZkyKhBXe3twItG5TsA5vYwYXKoPFHvPDrIljU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771130094; c=relaxed/simple;
	bh=RJKxHCh2Ino+GzTuZynL5Yr8zakfP1/1QEm6WFM0h+Q=;
	h=To:Subject:From:Message-Id:Date; b=ir+evDo9o8myHeHWQ6jiRFKvo0MZir/t4hS9pFxmon3DU3rSH+Ehk+FKEbeptLodyCYaEcKw7D99rT4xwpxQe2h1nFi6ZzTZiiQb0IAa78Zm84dYJItaQnCEgDL3RdIW5ycnjH9unfcXuimo8d20yJctEqGW4VfC2xwjGMAJyUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePRwdtvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePRwdtvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B840EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771130093;
	bh=RJKxHCh2Ino+GzTuZynL5Yr8zakfP1/1QEm6WFM0h+Q=;
	h=To:Subject:From:Date:From;
	b=ePRwdtvkb4MU4kkFPd20g1lcU9HAcfKmEB4qBRTeVkJQhaSs324Pfxnf+dhf6CD47
	 iPxnb0S7iC6k2rr01gDFIiSWCnLxHB0mNE/4s6RY+XaTIW7FlTrLaKYD8gOsHFsPF0
	 GEkK6I0jBRxPOEzTW3F62Qt4DLDI1nk0t3Pk1VQBc37c2LbG8ELDdJb38gStxMNlR3
	 865x0K9gbO1MDlPvprG5k85IGwFX0XrOB6YVSfi3U3/CYHNVOUN+sBSYaQlH0oq5Ir
	 Mmo2kVG3D1PGNdkgcNGdz2erqDkYFepbsqThYTDqBxb40aqapV4Thw644WiSh6/I07
	 mbxwllSbXdqcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2B7EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113009361.26277.4893938705923367805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5009143ab3204629a876ef5bbb0cbec2831a8823b484467bd248c64b3cf8ee72
Date: Sun, 15 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771130093
