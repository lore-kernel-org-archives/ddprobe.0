Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282E31E487
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763232054; cv=none; b=tZh7vTlXCVavJM3QrG+BK9qP/IM/k2vcqIl2pGmViQuV6V/2aqwAB0FLQTHHs5Yb8pvvpozt719OsX/JVQnqrVhdYzlnWQj7Hj2nLn/5AXONSh+QXR++NhkxyTctqX9jl4cwcwuLCZHI6FtDUO0bxevUB6Q47DprJP5BfFUFge4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763232054; c=relaxed/simple;
	bh=hJot64WnlGwpW+gBYUCvbVDy5PJX6vp32r7nC6hdxpI=;
	h=To:Subject:From:Message-Id:Date; b=lDn2OX6JZvWa+eQIdkSdWJNKNV1qrQWqlxKEc3saH+5JQ2hNBW7pIL0/wwzchW+A5uJY6GKXgJ7SzPnfwbyJvlJkh/MwuMQ8UXpsxJMHMEiCCeYKdvmIITOrSQmKx+SV+6Qk0sOU4mEfyBo4k4eJj5aMlqrC5outCX40jUGVhFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaMyMyHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaMyMyHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B96C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763232053;
	bh=hJot64WnlGwpW+gBYUCvbVDy5PJX6vp32r7nC6hdxpI=;
	h=To:Subject:From:Date:From;
	b=VaMyMyHAvoRDVY7wRVi7Gx5LKKs7PL6LvjV7rMZXmk/ENR+W10nOMU50xNHNTaypO
	 jLtT7Jvc3eSJ5UfTkRCKPaJL11EhWRy8xPDZ2TmKMO5zNKKENJxZM//0G5C8td0DQZ
	 9u6bzuezlfoEawQ1iBfWzyEt9R0ovIGCQBGiMsQGG5dFaKAc/uVg/I7aMOHspmBxhh
	 WfNzWc84v3lrtmW2pCVXoiOhhwI0ANIhQfo2dvoF7xfxN3ygCEeeMycC2Gn3aSacGp
	 9rqrC10DChRJ3Pk6cpVKY0XnHQYi8N+nv1meOasRC3nplF25jYhmIkOzffbs+/Su1O
	 WzECn1FpIikIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9698ACEB2F7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323205359.20948.12884499138867722096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f66b4fcd4a936f941ec11df40a89e9afe100374c90c0f17fa9de18b919fb98
Date: Sat, 15 Nov 2025 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763232053
