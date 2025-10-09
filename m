Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3617017A2EB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759990194; cv=none; b=WWoGoGSSw35ZMWH2hqlt4G7fSBISAMrOWzqg+ZZlp12Yw89g8DeVXNoCAV4TqhZ3pC4hx3JpVa0p9TpTp6/6eSM3+VaiyjTH7vRxd00CFBr9KkL4PIhK+h/Y23uEwgzWPDx77xLfvu+DEtPu/KpRSzhkDnxr4LDhKCRSGe68NYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759990194; c=relaxed/simple;
	bh=W554YPApc/x1W15HftrF31HkgBNt0Fah6hpqX01AC/8=;
	h=To:Subject:From:Message-Id:Date; b=est3GWIGVQZyEtnwk9totOYKJLEugr4kl3s0nm6WAi8D4J17FmyS7tcS7su5o7jlU9kvMaVuAE6GhOqC39YAE6PlKDZZYHQKpCm6qpL62uZ8XJutoqI/TQyEDuezU/pLL4mdpGp789ZuJCYP2XnwVk3OyduwyVNtLMrGzkDAlYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYoHhMDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYoHhMDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4046C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759990193;
	bh=W554YPApc/x1W15HftrF31HkgBNt0Fah6hpqX01AC/8=;
	h=To:Subject:From:Date:From;
	b=bYoHhMDEM+IHtkfP/Uqxh6lIbekdren6eVUkv3AmVB0dQjNTBMfD32Ji5pMyZmiTv
	 EVptQAcsS1krfQqlYv2VFk49n+sm7aWdZ1d/GtknNim9cmeTkZVRZ0mt3q1Vh4GVBl
	 Rrketf1qY8kSkFHWAOAs97VBsEJmEB6Vk0ceFMBv8LFWRISfMayBHDT/YYw3wb/jyn
	 LuevXf7T3VMGW9KEuJ3TddHByoT1iCpjZ4TdTYu9tMo4iILs4LqF0VhVzF49eFZq9D
	 PTKSDBUE3Nce7VOq7vfML+9krcq94u/rrwxqqiFtfjAfp7sXW7iFe2Zn7MXwJ+JCBH
	 9S7j0mdKJUADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C39CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999019358.11315.10681126384295642485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e89901d0ef354d82f1b99783574b422d53a0061f05fc0c23d65af33de2821e0
Date: Thu, 09 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759990193
