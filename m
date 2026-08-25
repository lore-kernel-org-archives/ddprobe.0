Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACE338F630
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787676634; cv=none; b=nRYaCAy9mw+/UDx3o0Do3SYn9JzQAGWc0OSnttLvfSdWBzT3jUVOtHvmTDGNLGVa/ILyea3UH9IHmuGvJ2S1d9rjfrAhAZwwjifT1+Zn5oVEUKjipffXW3sCuDtSkoXpSpF8HixSws9PmkMxKSykI76r+50gA+XqkyJF1q+7gCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787676634; c=relaxed/simple;
	bh=ZBBX8OPNyNpKU6q6ZMGGj9iHvD6B0uiB1mHEprvCv3s=;
	h=To:Subject:From:Message-Id:Date; b=O1ZMmBJ+YZw/arhs5khh9XnRnSojOhigKuCJ+MFphRNS6RAbey0ZprL9n3RiDm3oJ4KCPrItfU8NXRy19fmA49G8e3cXX8GTNpE3bXLUGfj7mMGiRzcMX6oSyi0iJCpZlStOPOS2TQgXKrk8LFkNgno/kpzo28Kj1eYrR9ANn/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLLLoHjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLLLoHjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22A6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787676633;
	bh=ZBBX8OPNyNpKU6q6ZMGGj9iHvD6B0uiB1mHEprvCv3s=;
	h=To:Subject:From:Date:From;
	b=TLLLoHjz6Mz1BZ1cRgy3SYsL2/yWreZxNQPctawa9zQFjUoq05uVm26J6gs0C4teM
	 eOogW8hLK5Cgy7jSvfi67Ctty+O7lUY0Ii4zNpN5Yf6msEm8drauhpkDF9wj8B9soy
	 rd5tssS1TqUTDXyN2FtHa4GAlAFNQxytQK7z5AzTsBLfRVIEs1eXK/igueMnbTzWBx
	 24RYit8oVwQBeCMBI9Y4viIiBbHfPfTZcU/w4hAgSyWjyy/2pDrZU9f9RJ1Tc+yQTq
	 Pg1CCZIGfP9MGfRKJZz/bcMRoKXRnorJM2yaMrZL7gsHHWK0ekWoLM6R48Ykz9OFgn
	 iX+0p7pXeNZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE13AC61DBC
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767663370.26533.16421998696547782502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9c48952495bc7bff6112f7a0e115fa307063ccfe4a7200954ffa3d0b71b437
Date: Tue, 25 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787676633
