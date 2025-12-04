Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250901C5F13
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764808974; cv=none; b=t/SUvR0bkoLGX47WGskNsOJuqXZhLlmEr0x4P4L4dEB0n8eLJ+9kjJ8wogAfjUz6jw5ekLk9JJk96YHxWVFLBznTXMqEKK6zCA1HFWeeztlb+xgJ7vKXxSOUrAKwIbmiyuXCc3eDgV4MeerDZhpFcOe8AMlex6azeRGn14q78W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764808974; c=relaxed/simple;
	bh=ExEjwdS/cMbhutBIF1EmJ3st4vJqSRxpLM0l9s3Kj70=;
	h=To:Subject:From:Message-Id:Date; b=RaREw8EBvoBnlPUwCJAWE4gz9o7m0EN/7KjhuHNeFErS3g5VHLW7g0AzkS87UYYKqfpfRCJLogOqXRi/oZ4JkR6JAhZYDiMZsfbkbRlqdSibOI7e9uHwzQH2f7w+RbqOR3U+jWv1+GVlgHdb+SHemqF3e5OOFrlKTejZYZDdEug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7ceVe6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7ceVe6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD269C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764808973;
	bh=ExEjwdS/cMbhutBIF1EmJ3st4vJqSRxpLM0l9s3Kj70=;
	h=To:Subject:From:Date:From;
	b=F7ceVe6yNngM6PNC7Ey/0bS8FenXBsYWrwas/Lz5k3P4xIRQKo1MEYocCPeoabQxN
	 wlS7VUTGbu2hbJ5V6Hc7G2mkfT1WP0hZxniXNKHvOjQjMZNcVglrjPqgvVZXoCBRKF
	 dTrxOSMey41CK0ZGxjvKMTJDjVfL2JCu4gsW2Yi5l53+NDeDTGz/S4Dg4BH4pcq0ss
	 V38ULRz1CTQvelcoi+iIFf7ud9Xh639MIP7cRWfop5Fpdz+lMh5KMTnL2icfZWb8dQ
	 PydroBhJliM2V14BG9ghngAzzo9SNwjbu13rIEOra7thu+od0OEG/rRcJ6IOIa/7xD
	 /eTWmJcMRMYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9634CD1CDAB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480897359.5034.5431201182129527899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7741147caa7861f8169926cdeb40e492882bc4bb54a5e3b9f4ba52fe6622e9
Date: Thu, 04 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764808973
