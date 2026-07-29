Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A91E339382
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785312034; cv=none; b=E4x6eMkdGdnpRy2Lt8OyZ6veqMlIYSHNBjxelMCGEMkcqmx++mEDR66rEWS409+xt8aJCleNdu/ejuWBHgHEyyMzT6r9jw/sqaCYFNPZ0s5HRhZk9DKNzvamSYlwBxAbBeVokWozMFZtNH6QaQ3WODOoCUsUbauJuR9tdxWvs48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785312034; c=relaxed/simple;
	bh=yda+7IUAhnHPVb11J5vB0HmiwnF9RGTtIWjfy+J9aiY=;
	h=To:Subject:From:Message-Id:Date; b=BuwDwtEAGAtxS2q6LPFwu2FuxQj7lDYqdQ8RNABl0aHQbMdG12RbXk2cQMTr5X8uC7URptzFZBaD+hhLP+tUlAOnrIt8lzfE51VnFOEhwRArxJ3ObObezEJlK9oUuI1bjCZcr1ngpdotisukpJ7GHzM03nTxUEEBT2KaIS7/Uac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDSg3nzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDSg3nzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBE5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785312033;
	bh=yda+7IUAhnHPVb11J5vB0HmiwnF9RGTtIWjfy+J9aiY=;
	h=To:Subject:From:Date:From;
	b=kDSg3nzziP47pvQ6VE69+AfafgxJ4sYrqXVwYur37r7QllnkL/x7qhF2oZtcYCE3s
	 edKWSIoq7MkvHW1BcpqSQ4xyKwk1YZ69YbEYqcfHUBsgmnNTclJCxzBiRvgi0rPUqB
	 YA79BWCi/5I9LJKrBXwqdI20ksugYb3A1zprp7ooM41vzsI8pmjjbWD5YBVdNWXSG6
	 a0wwUtTw7DezK1Ds4CQPCyqmrkRt0uLvzlm6rYMaZJHSkqQSSBFJfFQheQBQ8spf5b
	 UqOv/jQ33+Cm3mmY2LzmtBr/4wxL/iu5fG8thDpuFEkGwZSnN6EZ6Ym2+hXIquWs3r
	 wQQCHYI9MJ8ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80AEC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531203368.9389.17673571683852882309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0306ae942ee5a4db3cab13ea7d11e31b3697c82e6ac862aa3193b7a2f3b20a
Date: Wed, 29 Jul 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785312033
