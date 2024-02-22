Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3FC1754F
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708579097; cv=none; b=QHEr7GnIds2YPHgVhUoWgGFHg2TF+lNnluAH0eDG/4XNtSiDjy5tRIBLSHId2sH4s73Jw+SjRI3PcuEoXGtcnRrX/8Qqzhz0fDYLsjOAri3oRypIElzvvAYsNPRyQIUbiKQ3x7kykst2KIstS/XZWgtC4PryCju7Go68zqr3OpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708579097; c=relaxed/simple;
	bh=xvRPwDp8ObClZGsaUvFGy/JdvOu6yEoE6UKmlZjgAvo=;
	h=To:Subject:From:Message-Id:Date; b=YwfDJsjqcnqD1u9NvOMnLnAicZeIf1VSenboc75kMgFjlkJ4jrvwxup8kToytiNzl9VfvU4gZpQJUCvn+kOVByHA6Auz5RSyszR0GWk4UDVe8m3o42qQoW+Kc2R+pcRURgBocCz08GPbu2spCJdYs2XYvzJYcn0+j7PlsoBe4J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCQSxhbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCQSxhbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78230C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708579096;
	bh=xvRPwDp8ObClZGsaUvFGy/JdvOu6yEoE6UKmlZjgAvo=;
	h=To:Subject:From:Date:From;
	b=VCQSxhbrz/rulEbxyelbCp4dcX2FF63qwZX7puS7hOz8Lx+0X1NwpjNV8cfsJyFSQ
	 Pyn/gtvETBQcsOax6sHQKuGzN4pNfzleM63l+fmTLQTQM+Ve0ly1S08oYof0v7eEos
	 w6Ptyckpe7ox7Ksckjrfi18dR+qMvJeF9APU/q7BRfjd/PROhV9ts5TTHte8DMNQdE
	 b6L0ergo0mENxaSfzjwq3/rClmXgg0ZCFGP7Qpcz6RZzEofd26lP+NohIbgREW6CYO
	 oSpZE4tTyq3SYAGvfC7oFhjCNlidt724opd+aSTlLfY0nDzfeQSX+nao8ngmlMPfaa
	 8Tkx/VDsuAUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D91DC48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170857909637.12773.3166208898558114778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08d8aa612d84f6e45ee229f776e5253dd219fb91bf80043529f5048f5e8b1a4
Date: Thu, 22 Feb 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708579096
