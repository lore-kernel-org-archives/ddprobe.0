Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFB836B939
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789323634; cv=none; b=j3B1BOjioIuyekCeaPQiXcRVSXbY8vHUax6yk28+1eYFxOF8N+h6dJX+roxMzkgfeniCgec2Sl3V0RzQww0orqvsOyl9FwgNmzO3BoDSJcEf/h7ZHUSivMwBIV/cd7/96HiHa0bnTnut5UGpc6XgoXTpplfhU/aCdXPJjOQLFgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789323634; c=relaxed/simple;
	bh=IAY4dfB+rYwLTupDNrFr3ygDauyftfo/UykmFjIFXtM=;
	h=To:Subject:From:Message-Id:Date; b=OxQ0ulCJjoyPiVpO9S5V7LEstcRQGgJbJp+Be35yE4Ai8oAelcmyAtrsN7txeJsQpFwGeZI4QnkFxC+3BrEnnd5BRBBQ03WHPcZjrBvHuwc6N0ozCl96i0tfREJCIuno53bVIkc6NqrKitI7aVJOLg4zHRpA8pfeUdnwtRYGLkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QREQGeIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QREQGeIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3F9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789323633;
	bh=IAY4dfB+rYwLTupDNrFr3ygDauyftfo/UykmFjIFXtM=;
	h=To:Subject:From:Date:From;
	b=QREQGeIW+hYKF/lvhosje0TN5MxHkIobU4qEvHMFF+cEDSXZ1NimVxZ8k/6dFMG4H
	 XqWve56/uS4bMzzlTN6fgxn1K/zbQgzvyGOwddwBLpgcW4yVZpGndstQt4G+Y3gi9G
	 OoQHh9FlOC0TSmEBb9lDW12bgf1+g1v7BF/IAwWkc602Di8Dn4QoNmyQ0P2bDOlIh5
	 388qpod+LBf8brrydW29OKe8FMJpJZdgZPahbPlckXgXR2Oh+Rg+9v7Dk3NBqFtoO1
	 x/3kGNmPXZZPda4EHjQQSVS4ErJ83m6Icz5QMSws3HA4Z/A7dQN3zDUaFxPW5YtkUT
	 wUfx7gl0BBkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA06DC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932363368.32705.2385150442603922835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e734142d45c9a43f7be46ffc89f1f104237a37b32986155839cdc35df402917
Date: Sun, 13 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789323633
