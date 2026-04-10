Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EBE26F29C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775828854; cv=none; b=FPFgFuerKDAnyLmaZIcCa3SqkbaeFiAMfMJeFacqV1anyb2hQd+H0eXkduRBWgmfxIZUagk+TLuL0TVKeY2P483bgHwp9dQAxBO92CHNM6bBDTa/T+JuzSdFt+gLyhN1ncP+hCSISj4tySkBU0v8tTsBeAe1JoSlLKR61cKtYl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775828854; c=relaxed/simple;
	bh=APmSEphki9PCElq/Wfzdlp63P8SpxNTsi3C0F6Ehs7k=;
	h=To:Subject:From:Message-Id:Date; b=JoIk1aB7nhVlD8o49je7XdVuEpcX6WYgzXuCgm6MmsTSlDn4f6SweO/VelY8nXMvBzCVcwzmppHmwEmriMNRwv+a/lK0WVSxHCUGd4xrlNzJGwc1sjtAHq9BDUn56g9SmX4pFnrV9Gq20Lqsu7Y3+CCMyAty7fJ8URTkB2quQhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZcU3a1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZcU3a1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73A6C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775828853;
	bh=APmSEphki9PCElq/Wfzdlp63P8SpxNTsi3C0F6Ehs7k=;
	h=To:Subject:From:Date:From;
	b=fZcU3a1BAP/JFD3Q8miqGTNwlFyH7sjgDl+ao5IT89lA76nli0JyZoFq/k3BeNAtZ
	 YQk4BgtWqN/vWlxAeDJaoR+e9vxE0d0aHeEUTT5w5kSrm9E91xpqdEGUeUlqOyttFB
	 gcnDU+RoA4rwiLIUIIns2lDYIJbjbZ6jumM+0i88DN+45BgeoK+TaEUysn2IkNDcuB
	 ETJDdP3fSCt6tSWUTEvBeWpZyuBhvrw+O+A8t773bwMXlFHl5Q9ysOTEYvtOudH86P
	 NaTzzuZAmY6mOLP2bGJCNXJU5UnqCBmCMWIzM306finQsP9OcNNh+EGbo9YB8XUAUL
	 FvRLddo/msT8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B593BF44868
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582885373.25796.1661973075026260728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd780aa080d621f12b84bd5f5a271424a6aa11e63e8c4efd38230d03f3403b6
Date: Fri, 10 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775828853
