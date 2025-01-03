Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E24A1BD9E9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735946154; cv=none; b=p+Uu3v3ru2hV8+Z0jHpDAkYu3xeQBCQyOQdZKVWJzGaIAhGuKtySljZr3ptNQpeOtX2nQLt5WD2PHAlEKr4MiwKkdCIGD0cUQXONPqd8jFeRv4n3Lgrrmoby+JbBQlAAdV2j7NXxJmUAq8LjMM8JnXWkk00NuFMb2TABmjbX53k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735946154; c=relaxed/simple;
	bh=JC/97wOtiJ5BEHRO6xb8wFF7fX6dIEhoLQIxP5qIopQ=;
	h=To:Subject:From:Message-Id:Date; b=Yr/ygPIp/HfEwg0pbCc3Rui8t0pPHZWE8VO0qtCJXhbjS1kHSPy08k3heQ6IRhSBPMT3yjnjf1kPSonoM6RWxEh1+MQj8ehKgjsNfeDcrMTUNAGxgfnogYA6Bid1pHxL+tXvvBrkPS/v6C0siPMDyVWO7HmosSbVO+SdKOHFUOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ambYGLX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ambYGLX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36A1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735946153;
	bh=JC/97wOtiJ5BEHRO6xb8wFF7fX6dIEhoLQIxP5qIopQ=;
	h=To:Subject:From:Date:From;
	b=ambYGLX7OrJt/febsXW8iM+alPyQlAKqgvoElX3KR5h0aAQIyLJ4aMLbC8r56AG8O
	 cBeN2erYs9IR2Bnv3AUV57QnQnlvwBqGjicQFeYOdil6smjg6Z4nQ22YnuLRI/wfnb
	 aJuCR3THejyjnFVPKoNs0tD5g1WHBzKQowVxf7JRAY+TpqGKEdhkUYV+UMRL7c6Rck
	 vgZweYKrSXlqjzPoh41Ku1XEGjwtqzJqUiLtO/mQb6lh2Gx0VwOZYSUBTMQ13AX+8C
	 PGzFnEGMYqNUTK5HVPa/6MxlIIX3OhAM2M7UOHEIhNmi9EnY/ksEgZ5HQhJuyB+YyA
	 uTX2zKNTqUiUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF34E7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594615358.14801.11694741269802527332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b223fad5702a47ba945c6cf240c89376c4a0ceb65a4aa0348b22b4f64341caf
Date: Fri, 03 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735946153
