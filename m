Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AC035F184
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789336234; cv=none; b=K3oPewoONX1awMr4+37BmBD4p3PWoAolFl97fxxUjsh3qWvTHVbYjYoA6rYpebvRCpw208trjH84oMOHa5agdJd43IBoGnjX9Y6LkSvUXBcWyfHQoXHtZeLEk4jeNGxrtjJyI5rOEmvSNWxwlKL1l3mHlYovnED73O4l59ooCaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789336234; c=relaxed/simple;
	bh=+p2LgfaC4Njde+SblfFsty2AWbSHfCrE0g0w7dC5Dps=;
	h=To:Subject:From:Message-Id:Date; b=Jy46gI+CUHMsRFXVfgy01AfaaLTJx2mzcMxkNh7r7YMYZidCGcsjQ7X33CdNIreNmzKD0hssRn7MVUvM9bRpCrq4t66KuEQZlj3dx1HZEihqnrbBH2NMh9qn4D5ImSonUSx76OG66fWYqSbfPbFXp+TyopAUlFQbo6Cc+VyKjTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkFEBhmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkFEBhmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF17CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789336233;
	bh=+p2LgfaC4Njde+SblfFsty2AWbSHfCrE0g0w7dC5Dps=;
	h=To:Subject:From:Date:From;
	b=NkFEBhmfGiIl4paQiGFJEDzrFWrWP1ykXgg9ZYHBvyDbmi1UQd0ZrBDmFlsIs9Lo9
	 qYlyfA9JHKH7WWpOBcAUxo7XISvBxNB4MQuSixwF0VjiHsM/Cy/FdYtkYlXQ7c7jPY
	 6XiavA0qpUs6WLks7wMoLb0GRISYRJUn3srvdjrBbrFzDQEtu4VunryCNWTcBKBw3n
	 xTtHgJKsTtsIXsAOLqUumVI9bPw6W0Y9uXHpn6CHaMTS3dk47Ebjj0Tum+ExVv1hR7
	 MEB56beTiTkIPLbrrwQ0gH6qy2lQiC/D8R5XVuhT1eU4lSSscj/g013uAEE/w6It5U
	 7B8XYteoHL4iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E8C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933623368.14862.17846007407115107776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26680f2dfa871e410d4cdb7132eda21a28e72f5db64214038831d4ba09148ac
Date: Sun, 13 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789336233
