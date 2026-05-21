Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A68A33260F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779329434; cv=none; b=bnGDCVV3Hia9L+rU+8SH8afXpCK/WgEt+8Fgf73ALs4Us+4UIop4egpYAcwsruRIXCriq1RmOBRTtPscs3OApXFWh6kXLWrd/Ph0reyrfDnTQeISlLn78D5717MN5jZKg7smqpMB45r+gXm9i+YXq0ePpJgsnJSckZ/DEHOs0gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779329434; c=relaxed/simple;
	bh=WmVY/AM7H4NZz9LYAOb2g17i2dnRDUESdV+QGx2W11I=;
	h=To:Subject:From:Message-Id:Date; b=aS8EQxGjuq/7wbgqbl5UYPT8sv8pBdti78XJ2J/HQmLMSrlGMYHcAAt97Wx4i524mxcHbvZ1m/dy9Qz3IxxaGG+nb/l/61gs4vMNH6cue6mz6g2bl/d8fe2U97gJWeO13gvG27cFG0QwQmXTMRb8FjfG2PE9WQKG0BpUgMvT7DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXkCCRPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXkCCRPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4146C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779329433;
	bh=WmVY/AM7H4NZz9LYAOb2g17i2dnRDUESdV+QGx2W11I=;
	h=To:Subject:From:Date:From;
	b=eXkCCRPkDhzrMDSYATLkweE65fR/ioSvJbWkeKDT3cbIBrD8BoDPh3jzfQSTAuLUu
	 j1ea1LnUQlDeUVdgoXH/LLEyUTSvoQ4JzJh5xCNAlk2y/DTpJ1x+sIG5xD2uNOXk8d
	 mAFSDPCztJbFgX+l9pOPfAUvv8hCXDvnXOoXMMAIumw7PgrsZ80WpqFWmztFY1Jh7H
	 /zRqmceH++6vNYZPD4Fdm4rqC6vw4zir5a1yxEZEDVseM5o9h2P99s4XrX2Lq9h490
	 E15MJ3EhAPaS/QiQQVuUCU2o0Ux6QX1ivn4DVVKRCufqsjYWVa0XrDzqxHdQo0DixC
	 tHRwqY+TqgE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FC5CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932943371.13795.8403255712473490811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6d43b9eeed04f9d7d7079faf3a3983373eafe1c98765db8d41cc98790e2b5f
Date: Thu, 21 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779329433
