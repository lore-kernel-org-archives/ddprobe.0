Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5116E25569
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743832194; cv=none; b=s26A0tXPlguk9/yDm8tC5eDNBaUSWgyb4X1GAcamZl7oFDytqjg1tlyASu2j/9YQz1NRLpoxWWDxLJnKFvgjjzeRDPGpIbYbroejBeAYcvPRf8/XpMH9TXnw2esls8UX8xkvclxdhjMm6nP76D3L0b2UxFUhvtzKl/amuNVAFME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743832194; c=relaxed/simple;
	bh=uYElZuwT4EBS/uPoYI8lYuqti+5ekmpEiV91OFBF0Gg=;
	h=To:Subject:From:Message-Id:Date; b=fJxrEDGeBZJieFbH4HqpLiH1sGiXVwNUfI6ZkJiCHXzurqS5XVmnfefoxx7ey5xFvT0tXAWxJ6thvTQE+9fiwaX11I4/PLl/4C1JsiHgO8lMaivUWevRAd5sS55HYLowshhL/h3691plzVr2i6EOqysj/Nw5TXunjMgmktJoqSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsuNbWlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsuNbWlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB8AC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743832193;
	bh=uYElZuwT4EBS/uPoYI8lYuqti+5ekmpEiV91OFBF0Gg=;
	h=To:Subject:From:Date:From;
	b=SsuNbWlxCFjHQhOwjiMYN0EH8iCew2HYKnrVMkGHaLPsziH+ZC4WidTCsVsjgDUA5
	 Y1zmVDiSLhj/OVJS1Ot0tdgKk7Mk6VD2Nk9BjN5g/UOe7+d+ATZLn6dsXjMhC2Y2p/
	 KRJv1/0y0NuUAM+eamAV3fO//hYXVIrbTEXNlKP/eJGS1PFoUAW/GlDB1jAbZG5Rpj
	 yjpek6EQbXehcLabLdZnKsxwMtS6wxmi35Jz9DZBt60ID2rP95G1wXJOAnBSh80+5R
	 treHIaM5GzBZYH4vTdhPNZF/40m6kio4Gi3eaSqpkiKThMAHoaTpcwp9xx06dn3lUr
	 sahZy1H5tagEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2158C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383219365.11701.8210251729124718483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d52ba2084ddc5ee2608caab96836a323fb19e1812f51fcb90638117cd794078
Date: Sat, 05 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743832193
