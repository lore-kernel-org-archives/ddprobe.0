Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0836A2DAFD5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761859194; cv=none; b=JOc/jTxYdd9xLJloEHe9sxZGznqvMq6HDfRV7SklfYn6e3IEmlXz4+OeCTxd8YN+gbul217M2uaGUACwkh5awynBQ1mPRbZPsBWYwJJvqMi+sZ5gWwRNyzmPUNp+fXK6sBGmj3AeB5A150weg9gybm4Um2WyV7wy/5ZE7EPwz9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761859194; c=relaxed/simple;
	bh=gsSnsgRZ/tfo4hfEht4LaF/NNihOG3WR5lNwrCYfsKo=;
	h=To:Subject:From:Message-Id:Date; b=HjCF9DEpLJzR2iLJlz1nNKgrrN6tduAsuBnUNPXEM+jsLhcG/X9CT/6W68972QnmuE6vAYD+ZQsit9YaVgnJfNS/K/JlS+ZZfS/yHw/SjVYhhgPSgjYUp5ytyTX3MVYnBAN7sKG1nywVdYyf8cmYbMnIerSfO5CcyuUJXuYssAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ve5uwwhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ve5uwwhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A305EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761859193;
	bh=gsSnsgRZ/tfo4hfEht4LaF/NNihOG3WR5lNwrCYfsKo=;
	h=To:Subject:From:Date:From;
	b=Ve5uwwhCtKV+X7pifeD1oHd4ptQ6bDhQOuevVxiFWAMlEd10Tf6XPtuANNWxsUZ/P
	 JW7Gt+2i9j4eW9dpmgGZck7q3MzzFnt+PsbvwcGL19oro607FRvckBoJKSs/tj/UQt
	 Se7DcNV5Fz/CVUBkhny6K/YnrLXJvE7N2HU11HNnMh8OszTzSxIga0uGeMlaxB+32K
	 wrPq/lhiglGFiITtp5fayuTRZphsKatUv5iMLOPcdO5Y4BRipzrQ4SEqG8MbzKx0s0
	 QqmEMi7/cdnLHxFkd5soZ/nLOWBboO/tK1TTQ179Rt4O8hW6bk8dcV73pPoZTFGyPW
	 tK4DVB4T4U3bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F5BCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185919360.7393.5327001917100330709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda585f6bfaab233bf5181d0306454355eba82841e922b1bc6af553ad2050457
Date: Thu, 30 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761859193
