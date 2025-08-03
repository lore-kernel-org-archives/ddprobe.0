Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29672A95E
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754195394; cv=none; b=BZR5jag4hXgIwv8tJK3BN5EMLlxBZcq24d3/7zC5g3uaulVE5kf0wfZ/E+lNlsDmQPtMBqyM2hXPUkhixdMxCubxGIeZ/YV5AToF2uLQkYRrHmprzMA35qhiYLTktbfwbjUxqha60qfuK+axwYYGe+7jMqM82r4PWX8K+OaomBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754195394; c=relaxed/simple;
	bh=7T23OAmiw10K27BhrIwbpikh4SBqzXrXwPMmILF9dks=;
	h=To:Subject:From:Message-Id:Date; b=DTOJJ4s/MWSoMlAr46R2S9uk51Yqn5hwse8A5R08qd6Pknhgn2F7cj3Zu/U7UEApbzw0V3Q/uyIYfEupHlp7PaQVezV+C0VM9GZSnWL2uLFTQHgGiqukG/YQ/fEK6oTOQmj+MbJqzvZ8HP02g5S2HJ5dpsS8yPELwWJERN1lMFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akQId1SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akQId1SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4155C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754195393;
	bh=7T23OAmiw10K27BhrIwbpikh4SBqzXrXwPMmILF9dks=;
	h=To:Subject:From:Date:From;
	b=akQId1SMl/Gstw4l8wMhZEeUc8x5Z0SthDRtIs2H22vG2Nn5mV5MF2C305H/MzO1r
	 9NHg2c2E+/PDCrDOE/N/Hk3U9VVXzsFMBd/krzav5MgAnJoA5qmvUNTqBh9yRsjajG
	 nZdayOgE33qTEEIoS9QpBr+1zoVYTZGp/BdAXvnYXnW9iPSGoG0iFKo32ip6b8AL6i
	 uzTFSQokYK8gFHql9/QcShBeoj1uB5pn/2GJKIZEKp8NjxPadnfXua3czOiK5cPQoK
	 ZMGi96RGADDoQSgJ0lstefvusK/2Ykzh/zsSL4PLBcylitCdKOJMnQAu+raECRwstY
	 UpaoKkau7LVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F89C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419539357.27249.840808867255351489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd6ea81f72f2590da85bd687b00c82cdda4572ae7a9b4ca7561877338d8c4f3
Date: Sun, 03 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754195393
