Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA453D0DB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788955234; cv=none; b=HvRXrbNGT1ok5taIYc0z0BO3+LpTKYkCfSWL7GWV4rPuwGKRT2sZHSTe7ZocZN9tB2XwuKrUrhWQHrG2s/++YVGAudDU1NC3aOPaIj5cI0RturQq3kX2GAjZLG3eS/BaIrZcxL37gM7ZMbQN+hXWiXeBGJZDpTtMEEhaalmu0xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788955234; c=relaxed/simple;
	bh=RvzT9gadnQtFvH9349ngJHuNHDgw/oujBOhgEHMTy/Y=;
	h=To:Subject:From:Message-Id:Date; b=h4WJiJUZEsayvASR9yR4DiB0K5HRsDKoiJYq/grxYmOTPicz6VWIGmtV46JHS4BDEp9qJoxG6T9H1obKM0K+BAkJ6WWdJjy0rTl3ywPkK7Sax+sF/07FsgCumyc+m6v7FOrM4kRxuY3lwBycfuyD9R+QBKD2hUlet6swzV+TQjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aed/SHZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aed/SHZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48FAC2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788955233;
	bh=RvzT9gadnQtFvH9349ngJHuNHDgw/oujBOhgEHMTy/Y=;
	h=To:Subject:From:Date:From;
	b=aed/SHZ/s1rXH3mIdjmHIUm2yi+TOrK++NBm3RPWGQHhy4Rcq59TO+3Vz+KEz91F9
	 o9djRdlQICGXEpNS90WiS+H83TdAxiGJAQSSrzCOkXG8AxHWqAdZBtJbmympnLdmgi
	 7vRuSk0QMDsrtbzkWk2eRi0MwiglGu6wfZauu6f1ZVeByV2ohDu/b02/4K0KBZx8nQ
	 onjM40rIIBWVAiSElxkU8mm76vZNrh9sFBQ98e3s9+mNvM3QGN0oqaDVGwZceDHBaf
	 EyxVVmLfYn3C/D/VYB4dfKlWMAfhftFOPb33/GsMD91gYylbMJHl7SAKnZDE9Y7LsG
	 /QemAsd8xe22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2B4C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895523369.31104.17933931290836626601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c853f937f656217661845ee9c89213e0672b6349e60109941f7a4ce26f193814
Date: Wed, 09 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788955233
