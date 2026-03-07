Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8D5332634
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772903094; cv=none; b=qMzgUHV/XeoSNfX2x+Ww0Xc4ga3Pia6N0VTMV95Zh7uveEnYf7f5oF3hQkZhc5AkyzPneQXrMuXX1lTlRRTXRJU2mCpnUYViWceUnx5RxOII4QNEzaVzGu5g0BrIwweckS1GCrR3KLX6WzEJiECmcq39yC7L8D2PMBaeHlQvdIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772903094; c=relaxed/simple;
	bh=tD20wSC5+/r5Wwh8QR//n/RwcZAm9IwH6lWUPMMO2+E=;
	h=To:Subject:From:Message-Id:Date; b=pJJeVzMyUqxCJ/cxnhdJaW5CX8KuKDchZDgTXA2nSUyM7rLSplwmScvK3C7f1Gbh1HWuh+sTsfyvzRaY0Jh8BFdlvGddA/b8HMExEulWRQCUgukBAwHmUAjACCB+2Ptn2bpG5rY1gKfFmxeVvYnhUHDAaEIZ6Qg4WYtCf/F/jRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oC+9ulFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oC+9ulFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED5C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772903093;
	bh=tD20wSC5+/r5Wwh8QR//n/RwcZAm9IwH6lWUPMMO2+E=;
	h=To:Subject:From:Date:From;
	b=oC+9ulFs8ifE3n75CH1VvR2rLfvo44ARpZBXnr6uR8OJVM3sAXPW6GCeE/fyOQzC0
	 YNrWIe7WxnSAVifIPdSYC4kEK6YV0y5edUS8oS3QUJENqCKBjOPK/jKvkX3qqBEQs0
	 T2LslaW9JG+qM9axA7GHfynEtuCkBrh5drx5PKV6fNuHXUbpuRQVFgn/tsmq42X5N5
	 AImSAOWgk1rHg/Vk5SgrBnkE8iuFa0CsxLIzUYg3y8Wdz786IRvSbtncGz4/K8hiti
	 4R8NWEwU8RINc9e/B3lduvJxpRhefP2W7qfQSwh6thehy+RMM93geP7IGWExg5OidA
	 2UgF6A451CzWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6AF55103
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290309358.20079.8904528009969485142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b6dc361ecb8bafeb5609720ff6fa75463f8fb444e77f25f57a96fed429b48f
Date: Sat, 07 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772903093
