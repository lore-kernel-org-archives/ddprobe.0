Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4262D199939
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758016194; cv=none; b=Oe1HCXHmJthA3nfyJM1c6KQ7nVZFFBWY0F/SI/QM+Cw7M3OpJtH9XsfKCJxnckdjJt+6k6uMPqCBflvl5qJhjiuQVnqCZKTxRN5PDuSMFPsxWWGjadJXbDl8WU7IdKxSG0OHAPLYX7PQ5Vf2utFQC/VjLGYcKeLBaaqoMl34Qx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758016194; c=relaxed/simple;
	bh=RaEZgmTWjs75iU/pVZGoHPEMwYRTpJTtNRooclLxrR4=;
	h=To:Subject:From:Message-Id:Date; b=W0sNyPAlJ+ZJTQGIexEkw6mzfJxq+CJo8xowNoDOB0EGUf85aEX8b5yyUTZ99Ted41rcZeIf/nrR5RNolGWtuD4qku33svIUZFbOrKGhW8/5qhKtJPPPETHHL5/Mi7Cbxz0cIcFAJQ11tRX66M8vcqgdi5UQfxmaDBZDiYJkzrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUAinKlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUAinKlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BAC4CEFA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758016193;
	bh=RaEZgmTWjs75iU/pVZGoHPEMwYRTpJTtNRooclLxrR4=;
	h=To:Subject:From:Date:From;
	b=CUAinKlzX+Do4KXyucdTK4RCIPAA2WCVFCUNo5v7AR/bVGwq6YS1b9vzyB/cRTF6b
	 gSDkX1xpK7Iscgj0eFYF2WNF5XvovkKV/nnL86XQLYSoT4h6IaEvd/Fom7RGYK/G4i
	 /Uk+9J2IKNzDVd30OZK8OhoNrAw/aht4dCFPlqFN+u7Vv9nb+b6Klrpqm77CbaO+oa
	 NVvQZF17lfkFCeI6OivjkRiBk+6agT8vxKZL7fbL+0DMiQdpa6teHofmvRx7RoORd8
	 qzWt6zwz8jNIIm517jq2N5unV9n1cP8w6pGwpR6pzrAjCaZAIcEaOyZZa7mlr4j2R8
	 00/ev5ekwokYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B3CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801619357.3844.6718931894336104991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73e9a02db1eee2138f270f2cf1d33e9b717b714584c5b8a8684002ce1b98203
Date: Tue, 16 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758016193
