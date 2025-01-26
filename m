Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5024D25A64F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737927954; cv=none; b=UXY28v9QflD9xLuZb7HcpwbCLIBMsD4s1v2x19WId6FnV6KQJFWVl14BTAZmiD69P1zlY/ii7/IB19BXVfl0dUpWg6shcjhtkotdOob8ANjAI4o8nmd0hOZjFnIwGDl3Uj8pTLr8k6iKYEqkxhg45BIcrqzRSbwDVZVGtaPjOJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737927954; c=relaxed/simple;
	bh=2G8IM2o0luw9b92Ssf+u49vsrfW0wsRUSK7iYnL7obA=;
	h=To:Subject:From:Message-Id:Date; b=rG2gzHhVPW17rwM5fvpHD6Hdd68BngRGqhOk+11y1GJKCmbxcZARtqFu3R+7xywyv+jG2dOI8QMSdHFtI1FL2kHODNqHXr6iM2K7iahbj7lXLYSNdNgn9gsct5Lsqdmh7WPXGzNBylfHfWvBp1ABxr+y92159CSIwupck1XZzhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgKubkuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgKubkuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D73C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737927953;
	bh=2G8IM2o0luw9b92Ssf+u49vsrfW0wsRUSK7iYnL7obA=;
	h=To:Subject:From:Date:From;
	b=IgKubkuLYrcHgCv5/w+iRrgmGFIaU32sNgo41Y/uJVzMRn7Bt1H9G9nglCglEAXJe
	 r9cD2axi/S45wWgBaMOuVnMj9uUnRuSkrt4WcWBjBcxl6on2xvBcIvl4FFE0CXnRY1
	 XsdXlqhYm9AOVEaiQOacu80Q46VeomvyoAk1b2fZgXyDoEDdPS2pZ9uEnYSr5HRScT
	 ecz+NSaT5Nr4tintvH56kdzZocBW2c+BkCMy3lZ4CEqkFwECx67FADnrTD0V51ghO2
	 pm+DC1EcY4eDW+UFRI2EMZXkoVK1TilLlsgwXRwX3g08x0s2+ezNWwak75V3uSl1Vp
	 evqWWqNrWRxvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089FC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792795357.30943.11976567328608923148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0a6f5edd18ae3f73ff047e3a446dcce5a6127d4aab7b3789dc342b09936187
Date: Sun, 26 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737927953
