Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268D0319859
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782857314; cv=none; b=XMIziw9IDD4hrf3ovvwEJ5/QpQ/jQzi9/s8jz7DAc04S7b/GCDsFeynciWSTZ6fvWOUI5CGyWTMtepktsAI99N7CJnOccM6qC6oiYzfY1ZEMObHArDDmRob+LOQYACu3X4M9aPTMLGc71LSlPqTNgpXlxXRsbdkhbRQOdGA6brs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782857314; c=relaxed/simple;
	bh=Ru6dCCLKjm3D7mbtpTwtm+VCz7t5nqAm24+rwN42DrM=;
	h=To:Subject:From:Message-Id:Date; b=aMh6FULPZuBngIe/Tf4T26qxTWE3Oy+dWAjJ6hxwzHKy95QJ1Kh8/26KYrlDrxzDksej7TR2HYVvaYAlL+gjosyI9Yuyfj9a4Nb9Gwns8KP2Hb3NjhJLyrK8ZhPY4rXt8n+bUyskylIl3dNEc+Dis7L7l0HIy2Dx/rSnzxSfn6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmDHyAgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmDHyAgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21D8C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782857313;
	bh=Ru6dCCLKjm3D7mbtpTwtm+VCz7t5nqAm24+rwN42DrM=;
	h=To:Subject:From:Date:From;
	b=pmDHyAgEmu0tA8kf4ML91RoScM8f+pCrbbxn5fmPNGxbaYeW5vYw51KcZiFGILJpw
	 8nzNsbcBkZFnLhcMla3pLN4MYJA2yVtnSuwRsnh4Qq4VRjfgYC8yGrxOzkpRap7EFe
	 Sa4p0vK3FrYfoOfk/16LD+E8IWL+rWh69mZdy1Ww6rAYCvZCT8rWLb6+YIv6JkSSRP
	 Myw9HqF6tvly6LkeryeehXl59uezNxu8LYldg1dBE5DSdQnBWCtj2Y8EdeiGfRrrNo
	 9TYYqU/PvXu8Rajw534iapH0YxGjYFBw04t+kM7+XH/Q0qvoo7YwXTLA6Vt7YtGOSa
	 +IJ4eMwceAnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA18CC43602
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285731368.25296.16788902602737813459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45485220dab3bc6243ba5d9c226b027fff482c5309b4e8a2f5123d6772b32fd6
Date: Tue, 30 Jun 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782857313
