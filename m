Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CA947F4A
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714972943; cv=none; b=MM1LOxLkqvBgEMttKN3jnJdG0LL4epLQyYLcvtwynp62+WXzncaQcpybkkoSTaDdru17qK29A07gFAjZ527LzQgUYceQCCVPIsr1gYvQa4La/8VSnFAX1WzmoHYM6PqlrSfZbhHgi+9lBmgO9dR+YbLQVUapJu5BEi0m6EtJTi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714972943; c=relaxed/simple;
	bh=BK1BV5GDJ2JD1QRlwJhpXEli9E3WXOdxc+53C6q5/pM=;
	h=To:Subject:From:Message-Id:Date; b=BPQC2JbnZG8l9/FgZJcejS2fKknUxVm+QBZFvIXdgkH43p90SNDzxqxF2Aqjv9y4VEcZhYZWjRSffpw7F4lzRKVKcpM6zR5RCh4OFJL1sjTmaF3FAOxxLXilXp0ugA0ETth07aN6924Qs4ZHwzcfuTvTfz+7ALGA5pff1N13udg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBywpDB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBywpDB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5F1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714972942;
	bh=BK1BV5GDJ2JD1QRlwJhpXEli9E3WXOdxc+53C6q5/pM=;
	h=To:Subject:From:Date:From;
	b=vBywpDB/izDzZfWAZAEKDOrtgocG4jHnDCQaYQWtQypWuVmE5Smu85TN57tiuS0rl
	 GAHIZilk8ACN/1+WS+FvJoFsMLRxLmLQT4gS3YRdXDy8XPMIVKkxtvqHvohhvFV5Id
	 VcdOQ1hTJIuRiCeUnwu1F4xCwUA3ebaYI7soPcjow5Rg9cpP0ILAGtSAtCrXNdRCsE
	 21veosSTa1+9rhDSWH77N3x2gz0hZVNjemqANt06Xgpum8UWHz5KsTX5NY+NRUY6ZJ
	 J3l/qiMJsD2Rn0eBMPfyBrmx+bh2Pa9QtxjqHPH8A/ib/mVTOCZOtML0UjPVv6DNBa
	 KiVw0mM8qfrlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFBAC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497294275.30120.3335920688875560338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436484927c2a8737e574075977402c252a2d3e146c3c473d6d84215b32fbc2c3
Date: Mon, 06 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714972942
