Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D3B142E7C
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747478994; cv=none; b=DB/WSoRG8eMz71OnZe4ehMrN08nS9xEPhjrPy5hoNGVKSYaYZbz5GfbC7kSg0wb6+EutOOc1RTBAjRIFT2ytLrW3mqPgiTI4M/HBmZzMsHsOnZ5YopDnH9GmWb9cWzXI9bgAt/PS24dM2vPcpZ9h63dWRZrkw+ahOgkJV+u0eVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747478994; c=relaxed/simple;
	bh=vqpZ+UlyeBjFIwl3WdYRsnnQfY8buGssJdACaIU84nc=;
	h=To:Subject:From:Message-Id:Date; b=sXIA7d0ISxAc0EYCg0QOF4FDV37l+9G/fRWB5g2tlnpTB0pA6BpkvZ7Dl6Fu1RK1pFzsDHE6EBHyhepOXAK1JepQFFrEJNzTtKvDenDbN+rKtdlnB3XHBHuDDD8B8EokmjBelcqGJ/0alDjDUW/pfAUcpgr8c4AVFwWTtw7ezDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrF7rOLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrF7rOLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E538C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747478993;
	bh=vqpZ+UlyeBjFIwl3WdYRsnnQfY8buGssJdACaIU84nc=;
	h=To:Subject:From:Date:From;
	b=RrF7rOLs3lYZ9ZnyxAyqFuXp493zhvulMIqQzTJ/2SmKiwyN28+kfjePIGIWNMSt4
	 CFxQ93gP+BoumGyyUoFehuxMbv+ZtfTekzPkL40N4u4GJXOJSsfWqiP/q95lDGnwVZ
	 FlWGCHXlhjHXeMTqTnkG6r/6VEPxT94EgPVlimidP9MZlVM6KgzZ32Ku6kiHADWwlL
	 KNAufYlIcbeMDaYG8fQ8Nfo6VGoLaJSy/ANjCuuQXyIx4gKqh3d5mWfPo4O476ub2X
	 mlCCV23u2J9LuOhmZruzrpdw0gPuNOJchQ7CBavbuqhbqf12T+2xToZkxhkSZMvetA
	 WTzuaTpoZ1UXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55BC3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747899357.520.17809067441260323468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898443a307bb08d5a36c7258ed3d79f43d293bc2851dd668e9d4ef4f907abf4d
Date: Sat, 17 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747478993
