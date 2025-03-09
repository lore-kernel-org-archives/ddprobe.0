Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4709F1D6DB5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741530534; cv=none; b=tZW9s8Mwn2e5QWb0PIP+KrGhhU/JtJ5UKQ9+6dDucgTP2aQPa7VP7lWte8RuETs2XtCZCG1kECzY+UuRMSFm9hBwkxRc68ixNjvG1PQREq8H5fD6Q1Z9MsHnD0Fvobqm7O4uSpfKFIVwjUX3quPnsmosgoOnEVmm2kqgPN5Thy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741530534; c=relaxed/simple;
	bh=qTm14DajRRqncFfLMroDfPhMo0S2AC55f3Dc65LI5Qg=;
	h=To:Subject:From:Message-Id:Date; b=a58M4kBO02Hdc4nPv+GvQjO2iHp3BgHRe+4xeAZgMqgxifl7iwrlf34fjcOSArUwqJ9Dm+SDTUCzSqHWCz1pzpmA5SO9uJWRRnMPmmsxMKi8CPUwgtPqvHHmpKtLkgo2HzlOYdJq3W4RkJQ9sAmpFMMc8pM5zGmRZji3c6MIqdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuBuZrD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuBuZrD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA69BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741530533;
	bh=qTm14DajRRqncFfLMroDfPhMo0S2AC55f3Dc65LI5Qg=;
	h=To:Subject:From:Date:From;
	b=TuBuZrD4/6RFA8veHJfqfj7rB/bFVvn7qRmYvMHej95nrWKRaNppTYO/26aRDXg1m
	 fOLOLKpjXk3JT3XZI0bqFj3MdqNuStIqBVRgyATs+waFHvjxC21jwxCU2kgrGnew/D
	 +Y36rQK0I8lK15tsCVZPByO8UpNSRZ1uZ0LBVZJI8eesFyeEusFyUdUkwSRDgVZuu9
	 dckPTZSO2k8zn2yUBgWFC0EQr54uF2/BW7bSnEq7GYrAzSRVXrEETvd15b1lzaREs1
	 rikMsZp1aG1LJtffdiH09pbQVTQezxgswk3/8o5+hfHWtA04bNrqIo5kHTYf9auq1A
	 P7Dab8tGFi99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94571C28B30
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153053359.12111.16643598064608898414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb1fe81c872056f761eddf826ef803cac65bc14d4a8fc34b33b3f7f16d9ea45
Date: Sun, 09 Mar 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741530533
