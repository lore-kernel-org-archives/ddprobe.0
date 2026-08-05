Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562FF41A93C
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785925834; cv=none; b=DV8zXNoaODsZ51YqlM+mi/fXzNK0Wuf5L7wySJP37L5jV9SI1snZgXBOjZOoSLUx8Bae7VjoMJf+Bl0h1zcwx8UmLitPJzre4dxP4sZ2CVMBRMZvk+mTTa9qkgkQk0rzIfqt4WDGkbWmaF3KsC8Crccu1yCaIgTUFK5vcEYkEfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785925834; c=relaxed/simple;
	bh=hap52DOAB663jQdRRv8yt8BoB0MY5a3Qbs6NCd5JpRw=;
	h=To:Subject:From:Message-Id:Date; b=uxEU/C+cyoa10EDggyzGoMqPPZ2/kbKX51yHdIjrlTlOnaAfodIb1DKQ2254kLI6AeZ7i7sA88v9LMYcrGNRdKaPld2wzU3LYOHz+MVYFqPZm6q8lUCBk9rEbCLvpWRsKw3P7ReIj+aVqzKsnKIB3Du5UcQQwaGgNMYwu7NM830=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKtcMdQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKtcMdQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE1C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785925833;
	bh=hap52DOAB663jQdRRv8yt8BoB0MY5a3Qbs6NCd5JpRw=;
	h=To:Subject:From:Date:From;
	b=GKtcMdQ70FFB1MQMQD9LxcWsd0thBkShYcOHE2wbCYvGsTiQiM71qYkc3etZ5oIns
	 7fOgYhMeKoCXZJZ2W8MeLEqt0FDW5CYNe8wDCmr8OZQDAeUH3a9yzJA9E0UrEnMdGH
	 Jx9hFOs1lqMgmA01YVmTzhlwgwDuGYlSfME6MA/o+CRHiEFfxgeNKZAuDAso3M9qDB
	 ugf3VhxlCZ5RBf6gitZugSu2khh/OchyKPlXE/VlEMPmOjP4V4roWXr5lbfLGcB+4T
	 WlRgarX4ioEWSjAXZj2Ic3QN/YkAqzeNpbrxhbEgdsD3hKGgmZS8Q2l38LlQNqCZZe
	 3CqH92oTaqM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC052C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592583369.31177.15082446292346614001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294304a109d6a56181e3023dd8e965241957a8d7af44b848da9443d8bb86a7d5
Date: Wed, 05 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785925833
