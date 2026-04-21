Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADC03446C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776803854; cv=none; b=k2/jaFTFHyasU/h6X7umOILKDQa1G5WZOpsZO3ILeg/42T17PW5KBknsW+lhEsHeLxK1/Oyf3OvhB/nuiwERDcDnik3JYbhYpvEgkYcVyrxjCLEUTcspUDUIswWopklyH7db7HuvlmX21bwBIV147/EWYdHsLmnjSLVfdA9KwrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776803854; c=relaxed/simple;
	bh=Bl8uV5JxCLKR7KoLB7b3Uc4NmHbv9wC/dOGiNnkY2AM=;
	h=To:Subject:From:Message-Id:Date; b=Hnak9Bh7zsClWvlqI5tOC1SQLnhE6yGJhRsH/FailhTh7uxIeImK/wEyPzx1Z1hQmws8JDkO5u16Nxf0emRBGPdawA0KW6MxIosdN/5qP4cp9BastilmS1nPQSz+cf56jNcftpOpDGq7JCF5u6wzt5rMS0dMcsrT1HQyA0o0m5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihuar9e0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihuar9e0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFD1C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776803853;
	bh=Bl8uV5JxCLKR7KoLB7b3Uc4NmHbv9wC/dOGiNnkY2AM=;
	h=To:Subject:From:Date:From;
	b=ihuar9e0B4Va7BLinLtf2ducINYsO0EUo20wQ0t4F9tQhnlDvTbEemugIfeJaDIBq
	 z+uDWdfNNkv9FiswetKpb1NABjMwCYSs5GwqySVs/V+y8OUq0hvydTDDzwmJ9Rniok
	 A9m+pJelXclZQWExYh4tx9312GadbFq9WuE6yIO6iOxYbxRC35XOUKXLN9G7XagYWm
	 uJL+FbztMqwc48wF5ZSDXpYpAIHrUH8s9/NThbuBOJscQefpJVAWQTeFlJSYRAPDrQ
	 J49uscYxuiaA+MXy0tTdQxWRQh2i637asccBrf8ASclwbaZid95W9Y4/XOkwNyyDGU
	 C8AKzEAsXKYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA855F94CA7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680385368.21299.11483881163658903540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14b4b85733c802869fa76a95ff3722662648ac09d3ea377a5737ba12d8f0951
Date: Tue, 21 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776803853
