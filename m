Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB62D17334F
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712352496; cv=none; b=CxzXkh8cUKd/BZhtlC1nxRiTza86iBRO2hdwkuBQZ55ftjW8wmlVE4MmrsFZeoUtOPdAatCkpKAxpCXeDSVK5eL10dp4aAksPrj26Bu4TKJKaZ7CmHtQGG5Ze6ziUvdftglUyls2Y9FsU0piA+k+NYXk4HEDMhmC+zwXTfNMxSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712352496; c=relaxed/simple;
	bh=t/YpLEVjW8EbmNCP+UvfVlsxc/QA0LPTM4ElzNhHFmU=;
	h=To:Subject:From:Message-Id:Date; b=hzl1rJK0vpUXwKWjuJItQ7x4v9gTO0EsowQxfeSnIM/s5oyDQJY6LChWC283omRu0jdD3umDcEOvXgCFbQ4MaqR6NRHMxZC3Untp6kK9PMRHCQj33iQ6fI89YuOI1zBLKIDQLDWvI4dMwnbynx32z7fkGp14J0FYqdra0V12pJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8T2PuN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8T2PuN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8003DC433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712352496;
	bh=t/YpLEVjW8EbmNCP+UvfVlsxc/QA0LPTM4ElzNhHFmU=;
	h=To:Subject:From:Date:From;
	b=A8T2PuN1V5hokkvbHghtZ283U4mp2S9dvVXuq6vcT5XnTAIsNwCiUfyijXNoaNxZt
	 3fmfVBuS/comHKmGeIK/coqiTbzOLjjN+ElvviA4OH4opOErTAOpbZYDzw7ukXS/od
	 1Meywt3UO3R+6OhWbpJ8BNWxJ7L4EORKQwLiP73ZJOgPzsCcmwZSW58q2bqGOmJst2
	 IeCIdG2gGIJeKMD8FyEOrbiBYOaeAuts9BDxqHn5cUltOPJ/Byv4Oy3Rsi0lTdo1TQ
	 Qwb81/zRTzBc32l0bFs4mOzbnm9AnXdTT0X5Fl02hHN1JIvDibuYkot7DD9dbFWZjp
	 gyaR2e6m5hlQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68660C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171235249641.20790.17666781338533568786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e988db3e4d51fe65545b234223bba575b1e567d20db13821ea3aeac728c4ab0
Date: Fri, 05 Apr 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712352496
