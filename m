Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275783A6EFB
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777900654; cv=none; b=YdfeAlaR1wW2bDVxnAfQR0CdFoQWF7U8wyMo8cMrchJ0+c7PFmIWTU6h0uR+USHfVkf7fhmrn221qweGpMpydr5fRBLn3NrO1fqgW+ctw9+XjRsmlTEBSvSSeE2G4zeivSuWYWKX275+CVE0ud4FbnUiS7yQX6VtDb9D5X76PDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777900654; c=relaxed/simple;
	bh=k23hGihxhvQaowH9OT6CJF1lfvpSCTiz9FYq41MM2X4=;
	h=To:Subject:From:Message-Id:Date; b=S8JqLzJsJIAUunt26zpDzwP33ieUudL69LJam26DIq3xx00c3LM2DwuE6oJ2D7kdbForq/w9+enm+cCJ8JYfNxaYFKbuS1/AwadVYcCu42v3i6XfdEsBWP8mMjP1D4TiUVMnrPkPrz4K7GpXlsElYCCdPjaPW82wsWTQ5rLJx98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sunFVXvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sunFVXvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EBBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777900653;
	bh=k23hGihxhvQaowH9OT6CJF1lfvpSCTiz9FYq41MM2X4=;
	h=To:Subject:From:Date:From;
	b=sunFVXvLQ0boEBLP6Hy3Rke3kcUnsj8qsvpoRaHet4bl/zM4JHkP5Ra3SIHuXHJsb
	 4A92+QU/nd6hSFHyAKo6jwCY7tLynBVj9RHDz47RpmyGl8uzJt8r1Msf2Tfp7izWLV
	 4yiVAScPcitEz7YDhOlvQRbLtzMTOALT5Ei8RY/vthZkLjw5KZXxzikDicEtJBIDzY
	 Zn0WvlJnIvrZMlUaNEPRDgtUfTcxiZTbo6oJJayG/G2DfxTxRmUp5O+74OtjustRvW
	 4Hhbp1wDu4qvnnV5aTzX3TI09pqihKSrTEwJbyQWAlbSQJJjoYuQyRd0WlVxEfVKOZ
	 o5RgUxQxhhtRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9480FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790065368.15803.13900606835620985021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13105d8906223f8e8668da1903ce3704438aaa9bcc84084810c3bbaa2ba79bdf
Date: Mon, 04 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777900653
