Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A697338F62A
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788218434; cv=none; b=C9jtNl2aDaQuPPf7Ip9/EXlHgXBJJhOw84b9uEdhyM4+w3BNezjbSrFQMEY3TA/ZqdhAm/lUPdIAx0bI7lEERtyy4qBXNc6ag6lR2c7fzKykw/v7qeofbQDvi7dOgXti5kHfCc4u0UJcW0y2+QytgXDvXqp24tzqZfTYDVIUrvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788218434; c=relaxed/simple;
	bh=bkmu7VzhyB+0y19b6a72Gh5gG8s2Qt7AuVWwOL6pSQk=;
	h=To:Subject:From:Message-Id:Date; b=tVNlBBykOvmY9oDJLxDpwhXUYfrBoeSWkvyXDq/2rAApomEPQgcj2GEBnjQ2zjy1q50zbzdBQtqtWCuP8DByjbzH2aWj3tQh1Cb+iV6Jb8hV3Jap1Qn+WZUdZVJ9FYkMNrkOT9hhhwACl6IDZhYxqSnm9Gi8Z0fCRRJFQSV1iQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVUbxXxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVUbxXxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788218433;
	bh=bkmu7VzhyB+0y19b6a72Gh5gG8s2Qt7AuVWwOL6pSQk=;
	h=To:Subject:From:Date:From;
	b=qVUbxXxFS8hRX3ZC+XsCBHsIV8/hNpl0mbdfypbFDHzJ4P4BG/1YRX1xQ98NK/1Y/
	 gpJhuzqMIyPA+YcwxNNzgOA2DLRJr0f6IdVOnWagy3r6K3UEW3mL/FuKkJLp6RSvb1
	 WTadhBAQbRT1RUzrf6XOoiaEaYsehxSWSiDZEM8MAtTbr9hs9+8myDujhNv/ZpiULg
	 U0KqWWdQvEkkTMNKgrRlXmeAVEVBiYiNT4E+T6YO0Jui76PsvNvrj18uP2ABlkyccW
	 PKNIfwh9LlP9YKVEImoa7RTcdZtv1ZVY1vOV4b+cgbsw+MPVxf9acPgl2xPAz787XV
	 B6/xfmKM6E83g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC79CC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821843369.14841.14100621182574511629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0100316cb07d2cf0ec3c8cae9bd36d3fb9062ad9e11a1b78d7e9cc346117561
Date: Mon, 31 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788218433
