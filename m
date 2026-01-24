Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A7E3FEF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769243034; cv=none; b=oiXEAwjVeOG6r/VB/23kivVmf2o1tBWq2AKCXvxWHjdcyrKocR2v4HDXB+I08eTAklBXAzeZCURXHZzXhTMbsollhYGeBfvMAAfQSCrDYiPyaEgJxVBMJpYVR4s6azHogYlslRo7eK9y+P4SWQSPqsjnqVIe8yfLF++SuZLLQS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769243034; c=relaxed/simple;
	bh=l6JTMw70dWZlaKQ+yzgCg3z2pw06z6wVRx8ON4iBOGU=;
	h=To:Subject:From:Message-Id:Date; b=XH5BuvGxbXXpvmtTQ7A2/pZ6F7GStFkIRFJCnLdIry2mzmbe5EdmsOlWxHjQVY/YCTfiqcyftGZlQXBHm0TQydMSIOS1M+PSHaZkDphzTE7yyxlVzjZC7jCZ2UZ59JG2waL/q5edb3/UfslBg0hFKXQkRbvQGM8uGfrv93WB5dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGBNh2Mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGBNh2Mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A823CC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769243033;
	bh=l6JTMw70dWZlaKQ+yzgCg3z2pw06z6wVRx8ON4iBOGU=;
	h=To:Subject:From:Date:From;
	b=PGBNh2Mcz2fvo8G3waJX0QXJCP5bvtLZvKL88LDQbpE0KVotF1QSgHOOB6OVjpPip
	 rBKW6FHOPsgQbSFmgFhYQMgxp6Jvs2/q3E0supLHBEs+JYV7GNwb4AW20Qg93Nblr6
	 bW87oKevx0euK7xvjjpCis97cRLjfNlfmpkUQta/gVRl/Q0l0DPs7ZvgDOb3PLkpe7
	 StcAf7xvAqJPV1rfFbf1nn64FzEoSRKrmQ5flSfSo+F13NyEKIX6uwAesMB4NYsPRJ
	 ZIjtnTmZtQDdVORTJcvDf0xkWF46kuXJ+2fGDvzh2wKms28rM59Il0zvoaYqsK52bD
	 J9gRP/Exv+oIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97762D715D1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924303360.5918.2961794166196230887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae565e5fb645cefdd6666b2f82e07db2719bfca9ae3cbce1e7587ccb6683507
Date: Sat, 24 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769243033
