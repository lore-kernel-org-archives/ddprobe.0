Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0F337998A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779810154; cv=none; b=GiEQ5XmkDsihOvPrRP92l7nR3T14pV756cWcq5mNYEGahaSJH4s/QBXnrVXGapERQxWfUa9cRKA6SczHlU32A2EIIo5yc9yQ/vs454LaF+w8xktW4mOwAh3NnA7yPky2A03gwat2+foQyFuHXiWjve254y3SoUIXXLh7MONiMu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779810154; c=relaxed/simple;
	bh=OiSyJTCGhq7Mvi8v6hoIdOvPEwiWahT+7N8NfJOzK6I=;
	h=To:Subject:From:Message-Id:Date; b=LEFQHmPkvaAbSnnN/gZyXhf8LBAvkdfEKUig5qlOzeQO697vQgIMkBBNotzaWvLFGqxN8gA44yrMzsmdok7oR4MTiw8fzn3e+cqBcaIM0fq50s4PVmOFPCkYRBZGmDCb+OJc3MdkwNgebMsmbTF6Ch1mZ5ldhyaUfx895jLjZMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVPCORCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVPCORCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E72C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779810153;
	bh=OiSyJTCGhq7Mvi8v6hoIdOvPEwiWahT+7N8NfJOzK6I=;
	h=To:Subject:From:Date:From;
	b=KVPCORCGMR72Po2Bt8Qhmu4A5wg5gSRxDIiSw+m17chNTRa9IcmpmJlDLVeCAftFW
	 kRROMO5ng11a9zCwevKj5nvKEcIF9RXcXP0Lkdq4pUxKMOszn3Ecx8uY6Km3Ncih3u
	 wUSx9m7eJTB09lqK5ETr4pBifOO8/LmYeXSp3CgIXq0L3D/re7RwrN7iX76weeR1EX
	 jnyjwOO7kBXPqq+2lm5Bi7r8wCcafUBroMKN8wxaOPJxcbX/FZBSPIU0NwhqYsRACQ
	 uEjsWGtPlDEhJTwAghFNqxe34/4jIb5dShJg3QCOAb/0JoHli6JLoW/iDK73JapJxm
	 sTfvT0U9Sq9Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9C5CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981015372.5099.13903261035430725223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac43e01ae6ef984d317548297556bcd1709158f714acaa4737fa163a7852ca20
Date: Tue, 26 May 2026 15:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779810153
