Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA9D3F7A88
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783589315; cv=none; b=QURoB+1++9g6uOamzFWUspywn4uybbP+AQR/2WXyeNcO6dSVtPOBinagcxfDinps+zYkFhHnWpF7jfG97boFB5chw6YMPxXmIXl5czUrSuwNOvwCAubn3+2JjzkwuaM+zxu2o0Fy2XkK/U/MYniQ6bDhwQEp3bMpPYfOtsXD2h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783589315; c=relaxed/simple;
	bh=4nxklWwi+S9TJRuyRQWJN3ejFvsehPexcEOznEMMs/0=;
	h=To:Subject:From:Message-Id:Date; b=XqSRDt1Q87RRJxjD0GJXo8L1Hr6x9Hiz1ZjzrI9oepNdwcBIkkK9dhsggeJlYKDfqeoNYlLfKVMTCueOkiwlcS4KH5CwxMsUOPBHMh6TYI83X+RJKGuzogrd8VqskDaKRE+6MONQjqa1Qw8DhfDZgmOWSawcmgsYgWi409kcPXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyET8cGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyET8cGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5A9C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783589313;
	bh=4nxklWwi+S9TJRuyRQWJN3ejFvsehPexcEOznEMMs/0=;
	h=To:Subject:From:Date:From;
	b=NyET8cGhTsLLZ8cqo6aSIhNKVR4Rx3vdBr45TBns5gTki2WWbtk86SEM5NLEv3Yw6
	 SKfC5tCi9zcPfQbBOyBuNDsHGqRExJ7qv8osds0dM5DHGzV4YnohoNf9XWfzU4Xqef
	 koPaZDlUUvdDyspMbEj+Hs8JV5xdya824SRYxKuRdnRjQzQSKhy0yHbiSHp5De3fDS
	 R7Gb82vvz56gigfI5pds1n394Dkp1YCHKpMO3Evj10c+frrbMAxOdYyrLehYKpkgNH
	 7ROzsaljYriRV7UkKxoacys9YxkBzD2iNmeDZeCdtD5EEEbV868H2pjE7PF65/3uqL
	 XE3v3c6ervTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8128C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358931368.4071.5722816278448366031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924d944597a60071246bd60d2b9e23979d77b54bfe548eed90facec1f787604d
Date: Thu, 09 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783589313
