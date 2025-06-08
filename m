Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D37D18CBE1
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749410394; cv=none; b=Mlyc0H6FUpBU05vo6n0QC55xehT7d8/QGsEYFqJbcQDMytVd+tPZwE3qur6CKIZEnjCjBVF/MCup2yj0nJBs2bcqqm6TfveLFZEelAg4xyN2KD8hyjDm5RySVlviULNV064wxk43bXNuBRtcGy7K70mm4WauOGzA8WsaBEwWytA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749410394; c=relaxed/simple;
	bh=iS3FeasMHTiTimEMdH7FJQw+UIt65+6RnEhzJLudErQ=;
	h=To:Subject:From:Message-Id:Date; b=aBDEwhpLh0y0sXl5Mr0z7ynluFwIcuoQQx0r5KFG0qONFGIMnm+pBNQVKw4HQiAvWyb/SARpw8yz8v9L80FzBPzvv59iBnke2sBAFNw81q/1YQXiwFhGo1WeQqLroxqUL/In/SOIqgRDl8Aea4lkeqn6ZtSZ0PvQI5dO6AUPahI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhMRU0xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhMRU0xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BD2C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749410393;
	bh=iS3FeasMHTiTimEMdH7FJQw+UIt65+6RnEhzJLudErQ=;
	h=To:Subject:From:Date:From;
	b=VhMRU0xySe1GFhr8iXJwk4bpu6Q6Oa1FOfs4nZD8bTaIsFKlgUIh62YoBH0oIT2Ki
	 towH1aScq0nV86lG5ANLyeqx2JC2B9pRjsJfPdqJoWjct4V0NTmSIZoaRfpzqwJYpr
	 B87QwdT+6c5nNkwdpWPl29+YgTMkmhbN8bCFWy9baRdyNniYDy43RAfAabpWtXYrzo
	 +b+ZD2fxfbwFFC5PjIF3nOmPoebrOazUxo09LaK67iHq/YSNKt8lR7lLC4Fb+u30Vw
	 c0y3Y8QueAIJhp3VajOizigwvEGHNdWcmmuwFkLnTEl1dURJ3AxeFB1h65VDqI98dn
	 XWBCNwYMnJILg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B25C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941039357.7315.5833020839417882253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1e0ccd8d8d0afeb7881453b727569094da118dd8487feb7b5fb7e3997daedc
Date: Sun, 08 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749410393
