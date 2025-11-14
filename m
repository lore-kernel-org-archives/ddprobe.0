Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5D124A069
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763125194; cv=none; b=N2EoyTtOWjrWRmYrSplbgzRdcjMubvARngXQ7evPOawy2zq/ba13zC6DSBKTUG0872Wwcyg73i6QT/g4OOk+2CUl4sQEgfDUPR8GXC0OB2V5fslkt7H21mjylFHl4bS1tNdYtluNbNVM7wIGsZiJmRtmkg3MRFCT6S8mVy0rDT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763125194; c=relaxed/simple;
	bh=wP6hjcsTjfxUIdXc3f57WEfUKH192M20Kqq1ktf+JaE=;
	h=To:Subject:From:Message-Id:Date; b=aWCHSBtrNt3NXKw0RJK5DpZ/qaWDD8+v71ejtLGs1mSwAIrg8s6Sh4h/7ul6wVU2VBclCdJKmbdT/VsXr9vLz8d3/OSjvtkYgdS6lE1U/iPmXOqi19acs4XTRj6wh9zRYpT0UCRJRm58om4K7qnaRHl4dmrVWy65gKk4gN+WL5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLCqaTyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLCqaTyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AEBAC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763125193;
	bh=wP6hjcsTjfxUIdXc3f57WEfUKH192M20Kqq1ktf+JaE=;
	h=To:Subject:From:Date:From;
	b=JLCqaTyqMb/ssL+S3mhkxIXBJDhnzjBAksLBVyz7CYaMRAK+VuV/csgVrS+eRQDMU
	 yqAZovDUw7d5aS0bB7zPMpGklPk43NDR2oDRFZukhQZojOSuM8oG0vZuCrAjUPyedJ
	 C46Qpac7wq3cG4ANppsb1SmiEt36UVNELHIZSwR8qFxHELWnBRrb2SQBnBJGVUWcTl
	 OhvPfwK7Avblrxmi107r8CDk7CBVKdhZe4ypXhfCjF6zU66H6fJ7/s3fl7nR/0yICh
	 dZCcWy/niQQV56VCm5RjptfgWXF+q0VeQrFzfICN9mPLyVW+vqGLy8DsYfckbGKWS8
	 Z6Ncccw8IE+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B3CE7B09
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312519358.20875.7836300052857596152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44289ce2183b32af9eda2b0d3dd60a66e3e16211dd372dc052eef11d72e42867
Date: Fri, 14 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763125193
