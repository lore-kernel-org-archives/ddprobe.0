Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4847513CA97
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746088794; cv=none; b=ii9WMNOk8eBPUqXyyHsOQh1LYgbx+sscN3ljCiUvITGDPpOXzFzJdsPgZiiFWty9Gq94Bf/gcBtgwrs8c3iiRwbmlbIUyVvfaZbTxzjygONR3asocDrtG7JxdJEugtC95ZqHxMSJpj9MUyd3s1iC8ei3Eq2gChFvXTyDjhF5YPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746088794; c=relaxed/simple;
	bh=Ip5zAG6F72KTj5267jkhD9LYxh+raHyo7ebwf8lC1CA=;
	h=To:Subject:From:Message-Id:Date; b=NwOufDmSqf749B5t4fCJ9vKPTIdKsOjCoS4v5rBOKrNhb7H88lGbRW2MtBYseTMh2ZzoDzc43LREsBstfpC6YzUDMNKmU1+ClQQqPPLV7CPDO6QbvUQCWY1bvufZF3eesVyyADWUxKUr1BI44FRXIdPoxiSl1KpWzVhAHRR67bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F56c5SIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F56c5SIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746088793;
	bh=Ip5zAG6F72KTj5267jkhD9LYxh+raHyo7ebwf8lC1CA=;
	h=To:Subject:From:Date:From;
	b=F56c5SIE9oVgaiKNO/YoKwzFfSnecJ5K+dA2Jk5ZWMuWKkv8eOtE62T7iekRkJNSH
	 A2K5Oq3fWd2COv9Zwc+mbEgP7XqwbiZKRpupmJ1N3iS76vTt1BGxl/AwCM5dtm1OIM
	 prubEU4oDpdum6mxfQEUgHYJv76oEjV7+LvWK2qMs4xm6LZe/xbEP+x/VGBSQ4xiSu
	 y3BNINvuUzb+LqvFlnauGpNjwOo6T2JM/8UX00EpvzNtYT5RFsL1OR/qWNUWhRe7s9
	 mbi+uhOKxgPs1Hy06Q31e7qR4t8hPEnqiXRelEBG03RfgMxdOxSLrX/NCaEK1l8WhJ
	 WBHwWX7Tt511Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9457BC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608879357.29669.4596050586468922815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd2befd3c53023aa5ca94b351f9cf4eff5d9f3a8f5d79aecf1e4932836449d4
Date: Thu, 01 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746088793
