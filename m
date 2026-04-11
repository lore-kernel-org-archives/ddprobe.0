Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C24C18027
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775926654; cv=none; b=ha2qy8eiwQHU/ds5x2b46A43EkBkOY0SMz9/TSqVhnlPg1gdY7MzW0NyxMqa9Q9SI4KDRjb9+Va2oilx/s4jcRIi+AnjC3weAwIo06yCLnEGQ1eTLhWXeZoC0zXvjx8of/MPBbTDgtMvzDJJlsY/XqebvAs5JozJaJ9lmQf97fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775926654; c=relaxed/simple;
	bh=9s2ZrCtvmBfBlm1nvy1/ImiTEVp3SVTLkYAplENJkek=;
	h=To:Subject:From:Message-Id:Date; b=FnzzIomA38gX6jo8/d4Xb61XUcAxhRtIzeVqJBlLxDHgcfkdG5XzMtqbfCkHV+cIx5/Ewirzaake2gVo/R6O+8kfiabkJKdiN4auc4CBFOgYL5Y3TzGX7sggKHbLLqqdXcReSQhXPxuw0ORzwcjI8vSum07my2qVCpM0FEfF/0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnvc9utY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnvc9utY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03E3C2BC87
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775926653;
	bh=9s2ZrCtvmBfBlm1nvy1/ImiTEVp3SVTLkYAplENJkek=;
	h=To:Subject:From:Date:From;
	b=pnvc9utYEdGvcpeAM7OZkhAmedY1hnPv+9wuCHhXeb8DllJLEIr7kaK8ddV7O2UGU
	 6CSxOtzxBCASHSnmP9CT2RewvZ/DrvBHPqIEqCPN+lLBZYNuyoNgUxix9DUqIK1d2o
	 +vfVXCGIdUh+M2uTWfHtmPKt/ACZUiN4UZWHV2mIX1auTa+mXTY56HAUyXUXTbo/LJ
	 giX8VeYYBNFvwn9hhG+/6ldm2U9KoEfQfLJyyPrlbQ3PmElqlYuktRj+5rT7svccKz
	 xINKRaFGplrcrtrDFPQ37dhgSvHZ1aGrGtFiTI+KAqO/zTAYwQmEmf2xCDXH68TrOL
	 BFCjW54qlXocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B039BF3ED59
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592665368.1003.14659845690046385589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9bcbe6c369350f97780ff60021fbeef9d0a423d88616a9eabf3c6c7854c8c2
Date: Sat, 11 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775926653
