Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319991C2AD
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721815554; cv=none; b=i584BeMCPjDgpCF3usy4QQVUCl6kgoXFl9VBzcvPh7bMEMlWBVjzoONpGD+KsXmgio8iQeW0H5oMMaE52jBReQPaB7sQmGwpPUGyJGVbXv1mMNEpSAi2gNKGPcUtclLXMmPacyhQFHYQCTnnck62FiLt4w8QLifnew0ybdZEt5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721815554; c=relaxed/simple;
	bh=NjWVLLVuO1AopwR1dNVqOY8ehwQoNPiVNO3Z83Eu4No=;
	h=To:Subject:From:Message-Id:Date; b=gxGIyqNBOStYdTXiBM7FTfszHpg9g6Y8WebF/b5UoBNsrFJC0X2XwTeBkzSNEKbeUmum9SwiaBiTBH3DPBnDR+ijXrWWS6qRimZi7q8kWpBS3uR22ulORDGT3t9s+M2IlLd7DbK0YNYkJUXb3JLktE4GXD5R0Is9DLrrg1rADwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxEWFA/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxEWFA/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDA2C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721815553;
	bh=NjWVLLVuO1AopwR1dNVqOY8ehwQoNPiVNO3Z83Eu4No=;
	h=To:Subject:From:Date:From;
	b=SxEWFA/RclTLcPwPEyEYIHNXg5dFWH4trjH30Xyu3HGcjax9uXDnIP7VQwTu+gSVQ
	 +mqmwCo2HNaFSl6Muugdr6ElK03UK4XDlhxSVTPZpiR/1J0hOPJhtK2K1QunN+l2c7
	 es9SX2dxLvfmMpzNAhe0NpGLy7RXkv6Hqr9U1kH5yxfuOZiygJqFns5XNmPznax07y
	 aGn3ahm9+1X6HOdo9RnwBoAZzFpWM5scZ1jvCnvNH1Rf4REbjw8w0k7X4YDLOynqCj
	 ncI6CCVQUm3psBCiWkyRtXzFtMAr60WoUahjZGc/bgNj9QbJ7VHW1OfTINUpuO43lv
	 PRR+C55NaoWNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C44EC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181555360.16098.4956639773716919809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15cffce2178520bb25f13c488542d72a2b1f8c8b1d0deb4fb2dd674be0adb71
Date: Wed, 24 Jul 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721815553
