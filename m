Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F922E7369
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790760634; cv=none; b=J8S7kqGC9JxTHzPA2ho782MeoWgFUBEncdOH6lNMO5Q5D/VxfajTLiJcJ0+qWGZi2s4GKv0zI8ZcsOvMK1tt9DLH/MGYG/6URB3Ik61ZivUCv6x7TW86+oFkuUASIe2xMvVhIbG5Eg19rc3VmNMOKI6SyYjYFtU2eWJyxgoFwdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790760634; c=relaxed/simple;
	bh=6qOrqHIpsi/YKcXBV/URCmRBDssaa7mIuXIGOkNQX5A=;
	h=To:Subject:From:Message-Id:Date; b=oPKfHFA3UZNyXYT1DNqrs/IR/AJSD3pJcaP+O58bcrWXrhBDCy86X6GY9R2Bmqetw8mmD0ztu7snW1qvtFAudmvXKrcR2GrKTJ2g6edkUHUoezFbQeaVyvw9HbITr2ZSYGEyKhwTgOyEFnlrlcnOmErMY0+O7fmre8yNQfsrAEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EONNEjLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EONNEjLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D352FC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790760633;
	bh=6qOrqHIpsi/YKcXBV/URCmRBDssaa7mIuXIGOkNQX5A=;
	h=To:Subject:From:Date:From;
	b=EONNEjLy2gSYSh8nAaGMBLIt2dRNKd7Rd+W1x+xnN8Jjde7tHTawZvhq9FA0XmhlR
	 dzkNvD0oY/6MBq6nlUXcifGPrm8z6UNxefriwXFeLwGABa8M+qSv5QYzDMbZt5Ew3x
	 Oh+J2amLMsDTleCl17fWtCqDInBULWdoKDW2kNSGPkcLKpqLYOcEEk2gzkBxpR6Gjh
	 xrQGASqG38oQmjDt2+IhHHLottGzJilHa6Yaw1liKVOiz/DsCEgBuTk/Z+6So6a02f
	 RcruRjbevEWW5UrQU1kBwRVo0x7FTkAOafThtwHVGIDSrGIpFuDqDHiG5VrdB2nQej
	 G4DCbYil3R11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2212CA5FC3
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076063369.32082.16986292423845077265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce459d7361440d5d36efabe5560844f7f3eca682852c9fb276c1ff8e20e688d7
Date: Wed, 30 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790760633
