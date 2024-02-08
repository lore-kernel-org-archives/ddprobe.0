Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1911E89D
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707368297; cv=none; b=aR8gZ4i4AUP8XofihX/dG/XILh9idyx69PzzzJ6VQSi+jcUKgkqJi9No1NeFnO1p5TihIyipdSIsm9yK/rN1ZyECfhosNi9TwcrN4trCaGINCWNCNh5u8hTDVpmFLliA05l7iLc+ClU/YW4UqiNL9D70MZqclj3cJJYlNXlW7WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707368297; c=relaxed/simple;
	bh=cCq4HEaInOBa3AEerpUraEQa0S5I8qOVgSwMntOv/FE=;
	h=To:Subject:From:Message-Id:Date; b=jO/YUg4rKehdwGJ1TIM8K3zlVW4pHkAB7mP6Kp5E7ADRr5URRTVFt17bB43eMcDJA27/+u1qV/dHBnSvR09h0UGHLqPKH5DY5zsK2xdO7rb7PcxkUBy7+H+JmxlItadexw4SkxeL7Ys5Ij+M/vBiksoj14xiVzN1C7fP7miVJcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzii/30d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzii/30d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87817C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707368296;
	bh=cCq4HEaInOBa3AEerpUraEQa0S5I8qOVgSwMntOv/FE=;
	h=To:Subject:From:Date:From;
	b=mzii/30d/CS/a9nzlXtqUEQPEnT51E+hT5AYl85FL0UvmNKkYU2U5VhFQiNEB7J54
	 n4kDxf71YFIXJUtiO4AbNh96wXA3zMCtKz/3MB6iuVnYVsVvq+/0+XzxeQkcPJPxLY
	 3EOeKIJM30WNBwLJvDDfK81gpckiixkGBn2bCGPpnew5RIcRrRxhHMItr+QEVTw7Sq
	 vsJ0HFCb/uEDK5yp94WhsAaQMUrTCEm5txvRZeTWi5oWAjxtpUet05YK196xwPlSoA
	 sszzHrh/SP00H5m1iBE6jwskOwCiya4P//4m/DreHBclVlSh9X2sF+vfwvZ+C/FHs0
	 zbxxkUkCNtCBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678FEC4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170736829638.2103.13916264214747274776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2df1f3374282a179153349fbb772e3ecc0cea7c1c1041354674441ffdd8cf9
Date: Thu, 08 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707368296
