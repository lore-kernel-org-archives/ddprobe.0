Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8D33630B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775115334; cv=none; b=e2dCuuKnuw5eguayl42nQbK1STcR/3Usm1i8v8R9lQukCCvqD0gYQ8IjAEnWDBMtjXpLEK2HzXSQ35DIWPFv93KSOffd3eos51SIqOes8WpGZpgdY9xuLaHJrWmIF62rsirRmZV94ydf2Tmcn7F0jhb5gOem8IqqmitFCYG2pgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775115334; c=relaxed/simple;
	bh=o8YV+hATdhBrXc3e30ddrCZponFkDPuGyyU/re2wUhg=;
	h=To:Subject:From:Message-Id:Date; b=Yz2vGfCTZ6alJGHMi1BLSbge6C154vVPM8urlDfDGh/a9AOvZn++fqUE43XblEXSjoVIvhzHj15yZJESRv9DKyB1fw3tCJIx6XO/leIkuloyzmLZQN1kZ8JMS4I+HxeRLPVYvEjV9e7lJQlmbIr1fG+fTqppQirCGyQYOeXFClw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRBOsXxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRBOsXxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3967C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775115333;
	bh=o8YV+hATdhBrXc3e30ddrCZponFkDPuGyyU/re2wUhg=;
	h=To:Subject:From:Date:From;
	b=dRBOsXxx8CWg7yKRkELqc1e1X+UmJwZY4RMtd3cDElXqOX4O7fNdMIjiBAPcuTASs
	 5IivJn4YG6vrBus/nqBM87+Bfc085jWIg2CjKYx4zwzO6nP2LEtNb1yoaXBtsAoMTb
	 YHGw7AqmPRtaPV1dmC1lfcyDxmyY02iq5F+1L3V9Die32sm+KceLbenU9e+4ov+jkn
	 nhIGRczKaCBP8J21mzROhEIr2TywEZ9HbJkXdapX4KnzLFzInSE3B1ybf+cNCqaPC9
	 w2kIQwaSbpA2OIg+Sbkzy4/ssWFxnQsMSt6A6Blzpize73rXtBOzvOkzEKv3jyIQXJ
	 NdcC3NMlOL2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EB3CC6B17
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511533370.11381.11304995209443300536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89af5057023f1ae8039129d6999b700b05570d1221ea0c73bff978939066d380
Date: Thu, 02 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775115333
