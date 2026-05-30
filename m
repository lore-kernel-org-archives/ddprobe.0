Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2323B1EEE
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780146214; cv=none; b=P0DVLPjsL6FEn+xN7ikInrsHLo5MpnTs1dRgAr2C8BdP38VDEYNx4BvZj5J/cp4R0pRwJddSkn7M7L1Ov0DZxmrRHBenILuDUHamhsnOK+AEVtCyS9RsaseYd0CxN7igXZYzCGiSXucCTTtxUV/lYasDrZGell5OunCh03Mdxn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780146214; c=relaxed/simple;
	bh=B2HEn50ZsDm3zHQxu1lCFUX6h9IQKAvjgQsPpkQEr4M=;
	h=To:Subject:From:Message-Id:Date; b=TThC9fW6kUG3pwcwKDVMXq1pwMCANDlNhZvlod0bAzGeX2XtCOLlHSCacYdURIveFeTYjijmP2BYI9EeoVrwWy6UHDlno9NQGPtmmPHnVdyJPAPV9/tFudeRiwv2vKGPq3u5IggPOsFDk0TFt5MPANiLZ5TVPCfT28VhMElYjvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eflqkPcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eflqkPcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D38C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780146213;
	bh=B2HEn50ZsDm3zHQxu1lCFUX6h9IQKAvjgQsPpkQEr4M=;
	h=To:Subject:From:Date:From;
	b=eflqkPczgki0h4SWXSLNM02BGaOC51yDJrAbkgkad6OV5MlkR6xRYjuG8Ry//bUgg
	 P85HB45XvV2FUjGQpv+oQD8Tlo9ikG1czfbHmmW/EtZ2/e27SQBkJPFmFljV9HsJp5
	 z1xWiA67aG6fCtFy0XOFTEy3jaiM+aZSlivQJ7rqxF8xhK1U6pAp1C1T+2af2LCM0k
	 ysAR6XMEfEUs2PJTnjW+KpgctUVWacTZcOWzv55ctkoZpqG7yXpTTdchKGv0rT1xUn
	 ACLuJxS8ICtYAvRKW0+vmwJaQTtGP+xphARHhUKSM4UdAQGQm4mi/kvjL9HWPi9gFi
	 CWMGvVKP1XuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A1CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014621368.29715.10446241834016791049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5257938207d89181222c04a840177240417cee2c48c159ef636f8d2191ea95
Date: Sat, 30 May 2026 13:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780146213
