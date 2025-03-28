Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345852AEF5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743121195; cv=none; b=fMaRhE01mq1rYuO88SL7GCzBk6B4bZ/BkhQQAYbeLt+j5kQRur/PjDKKEelO0FL9n4/P3O3LBvA9lZNC/nWeZpF/Jrp3E+6Y8Sk2qe7+OFPw0/W5DLGP7iHwCcYhRTcO+MuCXwQs/A8pI55FqN7HowM/hHTmwT114jHFQXJa57E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743121195; c=relaxed/simple;
	bh=wvBDZIvlJLdRSrHPWMcYp8AwTlQA/eG0adsNLSFftn8=;
	h=To:Subject:From:Message-Id:Date; b=Fo9BWemIKX4KMim5tZ9zV6SHXEsGFC0OgHWY8fqyORpDVGysZOurdtvljPJ51Zre1/qhG8ZIfae+w3n8uyHBWAT/ciIeIRw+sBdQ0mACLRGvyqj2cQKmSPOaCvyNsa+yPmSDqPdPIQnX5eKzV3VHXnrnCdsNNIK47TZFqRjaBq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kcm5Bzud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kcm5Bzud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD08FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743121193;
	bh=wvBDZIvlJLdRSrHPWMcYp8AwTlQA/eG0adsNLSFftn8=;
	h=To:Subject:From:Date:From;
	b=Kcm5Bzudr1T87qLxfz0fozenyl/g6MW1l9Am4DLl8qM1lBbE9CO3PMnwq2jbbtTY1
	 +PMQm7HNM7WT+xnn30jbw4g6GPeTgeSveqJDnjtK4b1kxpd2GFUcjDOq/K/GnJC/Ow
	 9H3jUiBtmqvZUnBlWv/fySuW1pUeS+I38WSM+Vm8IGy/qOvUzjws1VFXNqVFmhxwAY
	 jTrNuonlW6DZVXUCwZVRF2E0wri3zRkxsQ10GVNfnlzyuhpYe699mDz38ZrP5qKrv7
	 c9SPrDRjWuNfYuSrt9UV9FpOuIO5WeOG6CeSYmaI4cJPigvhy9jTQgJrZC1jvCRPjV
	 D1tiEBXyhow+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5BBC3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312119360.9551.13796831905559486609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0093e1f45ffed3d8d3e556d07da09924f18b9c7d419429c0ee7312772662241e
Date: Fri, 28 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743121193
