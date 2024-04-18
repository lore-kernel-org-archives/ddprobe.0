Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4685315B0F4
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713433163; cv=none; b=HjeEhdWfmEqQ84OBWJBBxHzx993FC38CDtccVqzzxRyEkyAYa8QJmYaiAOjywf5Kmmk5nRyEnkH9MOIBMd6Vda99sPpS8CHFD1Ib59SCMT6DB1oPrDPmsF6UGYcIhnDIoywMBNv9h4RsQrnezt9LiaN7eble/ZL22i8L6JNXpTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713433163; c=relaxed/simple;
	bh=WyZc4t9ATpL3pitFo0UCo5Ped7mH32qIr87BpfUdZ5E=;
	h=To:Subject:From:Message-Id:Date; b=RyGZPJc3+IUDCKZjlojuv0lBuvpGMMNv+zLWA9XZOZznuto0OsQN0Vb7BzvIEU1JMHFO/sf1iCQOrZn+bGtzfMeG3TM3PmYTpCV3BJubvWh1xLXJzPPEA1FIp7Rxi5dCl4Wf+zI9uwRekpTlUsAYKY4PxlNkx1kWoK++KGoMh10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSSRnp1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSSRnp1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32A1C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713433162;
	bh=WyZc4t9ATpL3pitFo0UCo5Ped7mH32qIr87BpfUdZ5E=;
	h=To:Subject:From:Date:From;
	b=FSSRnp1dHoOpB1BtuY3MHoIH1GPvOjDSSpg1Xru0PeCI0nHOgLePofKJ5VjsSdDQ+
	 mnzvIJQjmTnEBQojH+jE6MnvG5p7VeacjX34FVfSFRkRcm+0dqmdQN7gEETEAMs4yS
	 TlwwGIfluLdg5sItYsLBSGOVJMyhgd15t92B5CXX48z0M18AZy9i2ALU3PPLfUllNK
	 W+WF/iIszh+v0Os9TnnqHkAVRLCYcf4wRdUkB6i9HHgWRwB1CL2GUq3w749Kt6SmUV
	 Lusy+m1QTj9ro5+aAyvthPuPH1Rofi5Uj0FaNJkSNxn7ZX5jH3JPZaj1FYFXT9BGp4
	 nK0I3m4CE++AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF05CC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171343316277.16713.6415484842739367234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31b9e6251f450af9365db01cfc4c6d37773f3391c32d215b7d7021aa0cafd28
Date: Thu, 18 Apr 2024 09:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713433162
