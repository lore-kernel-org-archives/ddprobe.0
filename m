Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADFA15442F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717145063; cv=none; b=Si/qWIyur+DuL/CO/LapEbP+3yAjmrLIsfIquUaJMutqrT9zUFfGWzAyOYQI61lu80JAtglle5DsToxEjexhHzboK/q7UHhwv5Ifb7CePwnAVZfAhJkeTLZWCBqifnIiSxOL0NWIzyTE5D0T2LkzpbnibxOH+9ZnsHzAIFER27A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717145063; c=relaxed/simple;
	bh=AekwFEzg7+zawL6/m26DJuBudybYixlhIxnsehWOmX0=;
	h=To:Subject:From:Message-Id:Date; b=JIbK0FbAIfPjsytm5tj0P8iNo/LSZ60L0Ix5X3PT5DvF0nBSEzBNIt9yQM1C4+hq6P6sxKUOgAlc0xzLJvMycL+/NOS0Xxm4qGIlLs4wrOd2HPNcNAy8vq6ujUJ7WHt7ID45wGzahCJbdD5SPCWfc9pDKL/IoAUxQxhkoIO7MtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dP2xlqq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dP2xlqq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5084C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717145062;
	bh=AekwFEzg7+zawL6/m26DJuBudybYixlhIxnsehWOmX0=;
	h=To:Subject:From:Date:From;
	b=dP2xlqq4DtjdGnpJ51ldveWNy42vhofXASb2z1qk7mtubfW8Rv1JVtnn0g7o6rZKd
	 ioXQUz92k67m3e+XejKoC7e32ppST0+sbdx2ZqjtruaLex2HUr4QBc7ThZuL0xhchO
	 XL492saVTZKOi9k9jitKSoIOPSzoKODAXh7j3EZIgAsEiQHM7h57Lk3o5qiv1v2gn/
	 WCRu63zbBlAQcbaMQf396zzxC4Dp0u4N5WZrp/dSb2xLx5iSO+QkFmz/FLa2Jq6PW0
	 6Sc5QLXXsEBSwqrbE+ZeiCJcnCzd0vWluuu8Gvn8l0cRm/XdKWdHV6ltotsJCGRexD
	 sBYmt657baJiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1B3C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714506283.3227.6762769613815946194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0997596e4075662351016f51bf930d5c3416ca92c17d79a291298451ee15ce15
Date: Fri, 31 May 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717145062
