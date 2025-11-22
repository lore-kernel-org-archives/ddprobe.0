Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4E5217736
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763849514; cv=none; b=hx+EvYCyplTBtQNXBVnQCUCv+uEO3uNnrCmSF7OQOZHJk4GYQb7Gk0fZFE+0MyVPENUSIN2G4Jib9ABAJ3qWjOrTpQpAn4ttZGPfBCyoiMysBlEBnx84MKbmvrJ1UmjDunbTNOQ+sroHaIlMU1fmGoIgstdUUJ2N40mJV6OS39A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763849514; c=relaxed/simple;
	bh=W0q9q7n5uzDaaomQ7qtr22J+Txragk+s3+Bdh32A/ck=;
	h=To:Subject:From:Message-Id:Date; b=KW7XGT6ENObKMgn7yoN0PEPEdvpuw4BCiWRA33E5l+XAeOI0NkQ4khb2rqlRpIBnccDjAjZvsTd0E8rCufynxwDMNUf2bUCeh9xm2AAl7MF6dKgjb5Qk5x4Cm6koGLdWDQvOwBjn+6oyXdt+1wIRvC88KLI4U4Pmf9Vb4c9PVOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLN9KBYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLN9KBYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B5EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763849513;
	bh=W0q9q7n5uzDaaomQ7qtr22J+Txragk+s3+Bdh32A/ck=;
	h=To:Subject:From:Date:From;
	b=JLN9KBYMdKpRA734rUjQ+BY5SJXLpMmyXXh/qQ094KcIrn5v1QEIurGt3KmPwHJTH
	 fsT6P6WACmfrOR+uuQOfzvStYsf0nPrNc5WwwEdQl7YkFbV0fy/kM3CntEo9OT8n+5
	 /xvFAQxjN5vUTYZiIVE2RxUiOTv4opznrGB3gaAM4fNlKrWVFu8XsCGSLJZmNRcYXZ
	 3tRdisjlaQZ3ocpXKiaLSRhFcyRWhjhZB4OaA5s0QRNdNayBlbuEIbBVV5iWBmtqG7
	 Q/zikG9ugOfZWtS7opwMCP2BaqT4dam/v5A30PG7vI2PtE2E53bCBPAG/YH76PiZw0
	 8FBo52rjLs09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6ACFD2F9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384951358.29985.17384020202292509790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462dcef362b7bd1e40c2bec08122a1084726240c681d61a8db5a4a0cb7d60946
Date: Sat, 22 Nov 2025 22:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763849513
