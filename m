Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F398A934
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722783954; cv=none; b=T7tC5nzV2u9G9Ky6DiW/grExEk3rHgDxpjUEJBJAmydYvMd5PRPNOoezRVfaKSptLFpubCjAT9J4abgUczpwapOzhEuN5N5yxcHULKn5PZ97BI+qYb39ai8IDI0GmSbsdtzdNmGYJagDEqDU+DayctXzwLPI2cF9aEcx3IJwu40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722783954; c=relaxed/simple;
	bh=2Meru8PsxYUCHswZVxkTbzlXuifDlPvUK/p5DFKpUSk=;
	h=To:Subject:From:Message-Id:Date; b=NFONWmnou1Q03jn2RChxVxw/QKXhtcNMnaG/TJqPAZE/OQRRhYfOH+AaKYGqLBNcwpXEPlo7KQB2rbOEQBa8ksSkwj9kdaxSJomDWrlKTmhOKtW2GwsbxrEoTHkyEKLjfQOLSYNBThxbDkQqZ2f48ZEGQzwLpfyje4Anbke5JuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFmC3Op1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFmC3Op1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6910C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722783953;
	bh=2Meru8PsxYUCHswZVxkTbzlXuifDlPvUK/p5DFKpUSk=;
	h=To:Subject:From:Date:From;
	b=WFmC3Op11r/I+yCA8i5TC2Y2PoAjgNNDaq5+36z6qPKMYf0wCoGYOnIc2bZlavQF+
	 lAqJIcYP6GC+FQjPjLt9bJ01dR1PcgTWJPyEEs+vBi+4bhXXrNI2aJZalql8m2EuCg
	 ZN5njvf/ky6n6C1Za84FrSRoCM3tIzolt4tmrFHrQ3G6q0sVRnNv8VUrZ6TWk8OJZl
	 RSn1vohOZErOABnNJhRP4HlJhW0CECViAmK1zfllHo3hHZRDJn6Yc4QWFK8j+7pCbl
	 kiZCcyilQNw28ssXwwqlWfuhx0KvvdiqdUabSpIpirJv8MEecn/MY36+vsg/H2UtwC
	 UG3V2QYlnGYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94226C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278395359.14782.815619420415242086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd89846a6db71a40511c18d5b01bb44750f35397da2e3ac81473eb98c1033d64
Date: Sun, 04 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722783953
