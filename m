Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8621BC3C
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735796754; cv=none; b=AaOmeGRNcHuiqxQUp28OAAZf1hyiNO4FVteOTF5r7EYwA2VIOJ5Zhv6dKZhuNtzOLiy5hza+6fqmXfSvhf/yqQFo7bVd2meu4t4dvSKhabKFxsfIOdJg4DY3yHi+7ZKsRt7upyKcJDTWjs+7p+TA3ughGP2nk72e8l718kIllv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735796754; c=relaxed/simple;
	bh=m4SWL4ypnG+H7FHkL/HeYIp7XqPNhaEsdtUskNoiV3g=;
	h=To:Subject:From:Message-Id:Date; b=EfTyQl1HyCcLzH/T2RXWPzm7EXQyfqreKNxvq9GuIDKpz5nCd3CuN1q2A/Rs600gTF0loamDoIK5cyJlIEGY3ZL0hoYv7bKt0yFoprM2b44b5NO50eOAcGkhTrvNxtUjA0V+qd48McSrwpKX8xk5FyCaPedNbWX31dORbnH++0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/k6GnBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/k6GnBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84F0C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735796753;
	bh=m4SWL4ypnG+H7FHkL/HeYIp7XqPNhaEsdtUskNoiV3g=;
	h=To:Subject:From:Date:From;
	b=I/k6GnBaxAewRvronz6gAJhgHVWzMkYQqVpl9EUIeWqGFQIQZj4V+9GWjU8H5gMB+
	 FKUHd3MNvqPhmgv3xNWAZ8qwqzIL93XFWxYxUsTqdfbjp8Oh0BDw50QaSnE9pEr50C
	 ohPcOl1Qo6o+4L38DRI1QFs1laZsWblj/y3b6teRlHBYspEoxcMIyOFImfBMMIm4sR
	 O1s1EkV9V6CtDGnKi8WIThQuPmMxZNtgTxT0DM9tzJNYZT9XBQCYt9fgJkFsINUdPQ
	 6H6jy8llsIdaDBi7DyzlD6Eo9Vg/yknu6x3/HPsspu62hR2IvjGNjbQ66duECyxYXi
	 nAiMqbowVcIKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E899E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579675357.26021.6977551185029039633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1bc85d72dd51f76d303148d2e8ee01747c6073a15c00a557e428726591cc9a9
Date: Thu, 02 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735796753
