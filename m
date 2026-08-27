Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4FD259C9C
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787790034; cv=none; b=J98x6aS3b9TqgKD/SXiMgG00QwCy2SJaa6PBE9ZtE7mYQpI7weU7aCBHwcEZNwL5xdYx98PlVQkw+x0aABghcYO+o/1/aV8SF6CYXbVIffNmK/u8u2Iz3rFqyTS+N2x6zb1+UxYy9gsSCdK9CtH+Wqv6fRNL/EuhdRAYVBub8UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787790034; c=relaxed/simple;
	bh=l+Vj9mMj5SWoWWbzwfDcebqDlax4qwO+1eWZtS+cRRk=;
	h=To:Subject:From:Message-Id:Date; b=qEHHxKahmSYbLamB15yFrIEar48xf0fxKW51KgJ/Nfrlx/XD/JPa+ozXfL9wZZvMmcSHU+/tj1rhwgTAwD3skpkD412aWXqQQCJoKS1q0XjIbaMdk2megslX+r8VK2C4q0stBaxdrEN2h+Hb9loas10sm7cp0d6p76glH7rZFT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwzJShQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwzJShQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D276AC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787790033;
	bh=l+Vj9mMj5SWoWWbzwfDcebqDlax4qwO+1eWZtS+cRRk=;
	h=To:Subject:From:Date:From;
	b=FwzJShQZc4h8GI5b8Ex7RHfAT0DucXjki6GAMRika/AYFMX1rLhvj61NQ3Hhk5U4S
	 LHLTu9Onxiu7Ipy1Mqs8VcIk74IkyrZd3lNwg6FOaORAJXn0ekNDvGVyQpIonDdKG7
	 IqqEqfNfGV+fKCEOHlJyBaHdU3Kg146h4x4GXepuCGmoBGsTFxOLnxQISL6mVRFhlX
	 jrddnqPCPX9HY9ocIuD4cDxBjA7GRMmjm4oJOmpLwrkVYJozuflCL/1842Zan5XuNA
	 LNNFMpOU4fturpkxT1Txxy4wN27Sg4Oh+LnWL4A1ky2hZ1+Id0MgrodL3RxL97vGp3
	 z2sYgkQwED0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B036DC61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779003368.9047.3851340045772377900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814c29304f7ef0f87331718adeca0b3bb182a9b2a042fdbea75850c7aa996a1d
Date: Thu, 27 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787790033
