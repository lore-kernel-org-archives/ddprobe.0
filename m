Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250F420FAB1
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745927394; cv=none; b=e+qOXuy9CyPLIc21IbUUz62lCdssRae1mgIblGbxNnrzrf1t/TCxPB/mV4N39baYVyMrZnkX5iZQjgbIcWK45QXHKgA3Ha6F+0DyTLkZsfpJ72x0rsJ5Pi7v8zI0rfkckGbq4M+SU01/++LnDjKhwQ6bRZTmIMsFbZbRwGNwNZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745927394; c=relaxed/simple;
	bh=QkSDCdZUUJo2oHf7iS2KRacDBKCpt6OqxRIv5EDaxSw=;
	h=To:Subject:From:Message-Id:Date; b=N3XKOYlQnIpbCnhFfLziHYTk/fOx+bLbR5kJqrwd1wu/+2y19tJ1BR0+myXGt+cQ4cy9rH0lMvYdjEiCUMZ+FRzYYDstRO9mTD+HVT6XDGDNoUgF/Dt1Im83hQIhXATpnN6FZTMKoEQbcDktvfKG1jO3sbLB/LG5KU1546RZ+3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl00YFZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl00YFZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF8EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745927393;
	bh=QkSDCdZUUJo2oHf7iS2KRacDBKCpt6OqxRIv5EDaxSw=;
	h=To:Subject:From:Date:From;
	b=dl00YFZw45Ns3TfPZcx+wM8qDs5d7QwLqExTvbozinvmFoM6bcmeWRl8XLQ7Sb/6u
	 jd43Y/QkzMdZXJsGohdZwSZHhOjSHVQVspJv1HW3x1lxQGAJPqMyZWqKALqc8m/5hQ
	 8tpcz0iHwVCZpSSU0IbtXtCPDrDw+fABpu0qaCoZnWAi8eKzvKTxkt48OvLyZqsXXg
	 Roj1A8MeLNxEJ6gDKQDLOhHZdG34AyUr9tHdcwqfj7C1idpN9BOQw0SpUXKNYXbSyy
	 IqpzdPL1vYtSc6VXyYQmJbpBkj8WbgV+/hVYbj+NKLIl0XPlMI5YmVuO811VfLQPS8
	 wQCIp6R+omzGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E782C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592739357.689.14604483655297234326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13301b30e9b675e61959ae8c06098d1d124ca0d375bf0e96a97efecdae04754
Date: Tue, 29 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745927393
