Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BDC2264CF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761500994; cv=none; b=kYr+LBIqGyYsWOg+S1UHqJDoP2an3QIgsO7z/zYKCmKq2DzZznJvewZ9u4cAcysd08cNJ1fRNYfPBQGJzkMUe1sqtenjHNEas7UvybcvtOYUBVGZ4FI6s/T8z3D5oafVnk0e0mxaxidtjoTM89QKyUReGWXJl2+2Lzpu4EwyRbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761500994; c=relaxed/simple;
	bh=aOO1G+Q2BkZi1qS77oGGOR5g6F06JKdy6r35lADSUOQ=;
	h=To:Subject:From:Message-Id:Date; b=uOzrtKIscPThi3xrswD0HGoTTW1OHeicsrkOaoXXJKY87lW01C4iKHSY8ud5HlM1b8KBv7A7bkFD4LYq8DCvwOQbi2Zlg/xU07oGui1nzW/ca3ZA6zBiDfo1UWqI5SdzJ7L8gR/jPTe2N+ShQFBc3pYGzTcMcGyjqb8SsmkVFxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7GYPph3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7GYPph3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC895C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761500993;
	bh=aOO1G+Q2BkZi1qS77oGGOR5g6F06JKdy6r35lADSUOQ=;
	h=To:Subject:From:Date:From;
	b=X7GYPph3gZCMMNEA+r8N+YLXaKtIut1xNrYA8eZ7Udaoh28yJX2fhpipYLvFJh2zs
	 w6ywAoUXk2aLrow5UmLiiX8UqyTjpIv7eqRwWSepNWtHKhviimzEUrKIUAA3tyrqHM
	 gscvLuszIeOkWIbcDMWdwkkfUp/Rtcp94pxYjKnyRsjN2q+ClMpbjRt9AcVup2NnVG
	 dMFhHPbBuC2AsMcmkYa77nU6JPolaw0+hkXSvpsoLntSXLAKscZ+661qmXJDf2Jkwm
	 xPJF749pL6j7rQbCVFjNZ/wmAGYz7/wsw+xmH0yxyvJE23KPBGv8gEc4D9exW0xe2J
	 O1H5nI7A81POg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD2CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150099358.7015.10194784704682294599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1a50b0a13495bcdaf6c01be8f19cb8c1f680061512d1131d34445ab17b9ed7
Date: Sun, 26 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761500993
