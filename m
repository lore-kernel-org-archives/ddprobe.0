Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6F041363E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780656874; cv=none; b=AdxPZ/hYTqL1DFhY30RklYtjBeHqvWOnfE8frjzGzOdX4xnLUQVV16hriCmCV7rfSlitWOiDjBlxyZdTTDgzD2w8MWiIPebx8V+ZanWQDlaLMx8NFEf/oWoe5u6S/P23gr5K43CN4wl+hvNMdMMdhKSL/NGh8/S1sgM2S97QJ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780656874; c=relaxed/simple;
	bh=9y9CXza+SfG29Os0vGQMrcXGXJOLv9jRI/LMIDhMjRw=;
	h=To:Subject:From:Message-Id:Date; b=HOSfRBN6kqTzDC7qkXwsUst2TCqwXZNPPuc4DAQQ5DZMzkUYNtPojvu4u9fJZhuGyJg7qAQqzdSvW1IWABsOBUIrT9xC6vYxpKPlnAsLVBSg7+vA9HVvFEnofHuie35BXSkkCpICMK8pzw0Bg1b+EJljJ9KYqKbIzNUHeeULyo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpkrHwSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpkrHwSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC51C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780656873;
	bh=9y9CXza+SfG29Os0vGQMrcXGXJOLv9jRI/LMIDhMjRw=;
	h=To:Subject:From:Date:From;
	b=BpkrHwSSqnX5eA588KE4dSgiDhyRSi9KlrbrKcOB5myb39iA3dkvfSiNl2O46Nu5b
	 bsX2B2no5j7KLexmTPNmDVt3FYS4AvMCBKGn7HqB8enzKJmRDJECEmq9MZtCzFp8kM
	 3znUXRjlfTM+G53vhvrk8rObRMpHse/zuEmMxhPPD2yTiWi+RRyOp28gJXrHrUhmcT
	 2yzSVAk3VrAAFOrpUBdKt3IC9eNUHGVRBaM3Q/XFN+UYrY2XEjEwTtfrqkkGr05hfD
	 NSHeiBs1gBD6SGjb7tpW0pw1cmoI9KN4UKkamEnJX4wZPusy5fvrKJe/2atCuhnYsX
	 5+5wq/LWHwNHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1532CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065687371.28581.4418780447696130307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79092fa7b8459c6d759800e2df8313b367d2c5d60f99f119695beba031d2c7e
Date: Fri, 05 Jun 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780656873
