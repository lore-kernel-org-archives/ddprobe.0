Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE9412B71
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736729754; cv=none; b=clqFfNE101rTi0v7hICE0A9xyJrYyMB9/FIjfnf1O3KO0iniRJQDrStFa3D4bEyXkls5Ecfb+rAfJxbEF5D0kW16qxPPX9i7ZD37N41a+l8Dkcma/2Q/metrEq31WBMw5h+XvvXO7uY9yA9gkd1XwPOTUAg662oQdrqmhegMTmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736729754; c=relaxed/simple;
	bh=rOynGQIRu97z6r3SeXa70CtLxrtM8XMaJQwg0v6GHQw=;
	h=To:Subject:From:Message-Id:Date; b=ehTes6Cz1xhhpjVUUqPyzgZ1s5vIRKO8aJrEG5B7FoPLlWYjXL5pg/FduLssrKC8ZZTiFVUvpNhD3Jcw6yuUcVmwNeyUU2Zsx8YhOxXszQwnP6I0xKHWD8ai8HBEZgtZlerrXk9Xu669GFz6aWRslf4pU18KtIMQxjjovt6G4P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pazclN2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pazclN2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653EC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736729753;
	bh=rOynGQIRu97z6r3SeXa70CtLxrtM8XMaJQwg0v6GHQw=;
	h=To:Subject:From:Date:From;
	b=pazclN2A85qGuZ+9zbjMOszqiNP9iLRC0Aql7CJoevaWqavU7HFCrXGWTW0aAqzaP
	 q7dfyH2s2axWF7zUDZ+SPOhECYm1NIXtgV2nhf09IpD2VRMsPd5oudgQLRhoRo+DAi
	 3uXrUJC9KDnjsA2ffacD35csI8NZGBtSVeyUgmWoXuZU3hzvBjJh5VwQk9v6RRNPfV
	 3wuKjXyNsSu3jw8fJcNSk0tSMaM0nV/a2t9bOr1Qmh2Wm9B7sBqd1is17IRE3hcI+n
	 X2SIHY8fLcxtip4sFlZ94lTUNZWcXEXJFRrCjwUvFhEi3YBL9ZJDkGX/Gi9aIvP7IL
	 GA+X8FRpUu9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB2E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672975358.24124.15786283088348436438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc47971c96006b7f1eebb17254dcfeff106b7210c21d5a857a60521b60d3cedb
Date: Mon, 13 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736729753
