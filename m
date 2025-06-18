Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3197935963
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750236594; cv=none; b=GHVP5cWgFpFFuBg58ZPOSrwmAkVfu+mPVNunbKQ883TwVrfZAtr12EZkd5OIW9SvhBKBqsP12Y1pwWj1ofRpozjXPWNjUyp1K0bJZBHI/mdomBXhLdmkUhU6O/QXuq1DllDAtxysM9a4E5LHgf5VxZ9PpACeFonvP8u11tfh//M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750236594; c=relaxed/simple;
	bh=Qr4H2ezkVNiyjFUU6vOhMDxSil2vLNJePgyrcXJUT2A=;
	h=To:Subject:From:Message-Id:Date; b=uc9VeuU/s9CdtIXOppYN172WbQAiKipBNfgTNYRBo04bjd6dQfFpSjXJh/cqp4yK/ZqIWzaTX6y3ms0bHEkToAcad7OGVR5VEtDZ66gCNCoJijfeiuGVwtBRsN0QWUDcYSGfS6RMRpXQBsBabJwugFlr5ol8BhJEzFY7qj0A/rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTnNh8J6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTnNh8J6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A91C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750236593;
	bh=Qr4H2ezkVNiyjFUU6vOhMDxSil2vLNJePgyrcXJUT2A=;
	h=To:Subject:From:Date:From;
	b=GTnNh8J6/qW3VNlQDStYooMzUHJZjhuevk/4gn9OXURK1wjT8V+2ti6FJnIE1noa+
	 h5h58O1oRjq3Ohd+Ugp8MMmUuWoV7olJv0tFb7KLABuLUBPU+sJEwVaHTVESUKPoAk
	 qGQuH/Ag19mZ+BqCU8yWbL2/43X76kdULe7tlRn2X01ciKDtoE3axE6BRsviIG3osM
	 pSWrz+XCpVpPFa66kNuc/KTi8lmCvQaIVtSA9Z9FpHIEOU4pE3Zq57Vrwlc7MJ8wEZ
	 EAKmtoAxD3gmFUzlxSORI2VL/y9CUWFEsR9wlEjrpYf1zsEaxFIFEj4ya+I5ADdA5z
	 U1CzP6825SAnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915EBC7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023659358.31851.11338795216636674308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3a4e3f3d6b0cd9606e5dbbcc92cc01daa657c09a3836851aef0fc04fb8e7e1
Date: Wed, 18 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750236593
