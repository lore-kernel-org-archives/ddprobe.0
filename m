Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B92A18C32C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735757154; cv=none; b=UMhz/4CU91RT6UXkVeoNhJuFJha2o+9tfcBzydoxxSm0vuVVs1AR4UjTtx5rFIR8a8tHej0zUPf3c7F9ixkkLRDQYXcnl8J2BmgSr1PeBw19sQ5327Vti2YOageecvYMYYNTL/sfSBudosZk3SIcfECrDpIQgGP5ef13wY2IbmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735757154; c=relaxed/simple;
	bh=MabJKOUGcvTzmZOBjyXihGnK18Vb2QAJof3PNK5r9IA=;
	h=To:Subject:From:Message-Id:Date; b=K7nfHFUpv0ontug+bofN9TRdRTPK4D96c8uKFxl0E2UiAcxiqoCSafjcN3F0C82/g25V/c/bGOJoJ9qa0dj0ENhydJPYNoXN2DOExRiUq09CUp+MFbMErKDA6UubRDFcrC4/5TpO4BpBmmH27Xzsu8ZbfGsG5oLtnIXI+aG8+y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaE3DqZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaE3DqZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE19C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735757153;
	bh=MabJKOUGcvTzmZOBjyXihGnK18Vb2QAJof3PNK5r9IA=;
	h=To:Subject:From:Date:From;
	b=eaE3DqZjohV3Yr7snSJauJ5zM7/BKSaKxIJ6bsI8R+Mnle6yTTpca5FldvP5JS7+l
	 pXmuAwuxfK5XsU9V3x0+wLc7iNJ0dc6+eZpFAfUKK2PIShjwMyeAPfb/8AOJwK/ji8
	 gDiNmpQHF4tMz4Qv3A4CyLtpwbqjNUJvPMn7/882FW4Gqp813epzmUSkwuGMylPCFy
	 u91vKTWF4r6PqKaf+63ByWTbisFm0XZmNHiEE/BK+xd8636wTRC6ouHpRjLhlQwgH7
	 F4g6JYQ6eWNbCcqIdVOBcRmZ6/D6iospK9qT3LY7G71p4VJM4A4KTvU1oQYQqSQKOZ
	 6QGFa8OxYMEJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96065E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575715359.11039.10939245433689971724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e15036170457ee89762982914abfe3c2a798c9500f6205a28163935f3b9e8b
Date: Wed, 01 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735757153
