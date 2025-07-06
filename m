Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2DF1A314D
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751789394; cv=none; b=lp/L+Wn5wi9RcwX1QPdsY4Gr1mcsNTepo9ngOhXCc5upN8X2aGyp7pNTXSsF/+XWlBa0g1puR7llDSi7k/aythBFipk4shjfrPXmPKJLZJrUWmoOWVqQSwJNJnrZHPwwPWlQlT4QOZ/ce2KlhVjdYEXji32PVMnOye2Tl8yqF9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751789394; c=relaxed/simple;
	bh=nus3TGVdhIOah6jy7BNolhTtkfHXIlyOFF94HzXfjfM=;
	h=To:Subject:From:Message-Id:Date; b=CkMqb2W8cJiAAB+eDWPRa4u7GvZi7jC4i1N6bOPmtUIV7ZxzP4EXswsFMjE9fS0r6C73UMCun1AbGPFWt4z7l7s+YAH2As0C/nYLPjqhDB+scKWPztn3iqXjnqwVF0UBYPV3h1XqZE40RFYegcjUFkMCWncJRBfeBAddI8gfr58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMmLJcuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMmLJcuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A52C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751789393;
	bh=nus3TGVdhIOah6jy7BNolhTtkfHXIlyOFF94HzXfjfM=;
	h=To:Subject:From:Date:From;
	b=VMmLJcuTVz7078Z8sUD+GhFz+EQfa8NmFEv7ExqDiM8hD38j09VRruMmTrBaEYn77
	 QeA+E6HBzM66+PipHFhl+0fxNOGN0al9VEZuUqw2tm85OEbuk0ra5nfLj99VEXRMeg
	 nE6JRnZfYA7yhdy/uAHrZLzgJBpV5juFIwnVTPsRhkIeO4Pr3v5RRoBVuHRYrsEPkK
	 pgLcm05GehYCqPH5H5hdUoKigAdLBFtUhyfulygDfaTJR5nAqFZtgB0+2TNWFXkdAa
	 ivAFRSosssbU3+/+GB1tyOYSrtLb8aaXnsrTjaYISKCjiLVxvZ4gus7CbAoc1O2w/J
	 zDwtCRUlrJDFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4CC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178939357.5961.16581019594362114782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2a11f7be2613eceabd571c7de20f9fc11d4d7eb325f8858fd07665967a276a
Date: Sun, 06 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751789393
