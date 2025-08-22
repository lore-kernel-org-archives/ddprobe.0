Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2924679A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755893394; cv=none; b=TFrywHNGfFyvcm1jjMBLQ4TNfEn2GVoI+Ar8T+CpTXy0DPqpxxNdsdit6F+B8a7x+LQKzAer0ijxxTvk8kidqLFrUF+WcJ3o7aJYMdCUQHjbEGzt87Pju4bAWgQVCv8rsVz1Z9FFRBx9R25s8DDlgJht5U9JqSwhX9JllfvOsUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755893394; c=relaxed/simple;
	bh=3mehRark7adeoCf7BzwUSJ37PFRNfxWmmWHNZgCHsYI=;
	h=To:Subject:From:Message-Id:Date; b=aF8fCfAqj+2r4JYNPAXAClxzYhndKEDvVeBJBF9X/64zYTI/CU++ig9iIJPlSODQGGiROBtqcjGFVNtj3i9wr946J6on4ncOlNBohX6H4ppAPYOJWr6qWd9KYty8hKHKtqknoaTe4uOf3zWfHrk+XzRn7d6bI+224ezaD+RYEns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+xL2KCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+xL2KCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1002C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755893393;
	bh=3mehRark7adeoCf7BzwUSJ37PFRNfxWmmWHNZgCHsYI=;
	h=To:Subject:From:Date:From;
	b=X+xL2KCyUYdRiEoIDsv6Tk1vArXsJ+wdXEo7q/oZIKzRMChVkSwNgKO/JFqoFi1OS
	 qBtmNIpzoKGMzOHJzrC3mxNgjMOd4HjRmQa38lbjd9DdIPBXcwp8rKD2am3MpdiLW3
	 mC03tATku4TMB+z61UMFji9x2jLPIQU5wiC4zfnTolbJ9O0YerrNl21U0izbDRLKxU
	 cMDbT9YSd0ARiwSUijRXlFje561fKAMv/2nU0RihiMowUuRYBA2+UVnBnO+ptVFMOC
	 N9Jzt4i6Mqetv0gMAaoO8mO/qu2xXSpbUfmFTpZZZk+R8YMUX2i3VdKcRWuuhbcGi/
	 ba1dQaN2eGELA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD7CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589339357.2400.1191523266099755685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4de653c969e55c6371d31d8309867340e7813a9411319105102c6c2742ad383
Date: Fri, 22 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755893393
