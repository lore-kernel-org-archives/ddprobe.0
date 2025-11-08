Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2261017A318
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762646394; cv=none; b=PWy09jpI66MEYNH3DI0twMXzUC843AxbB+L8884CSMz4keK6/2Cc8XO/gdSmtczqYPv0WXkT+xehafHrO9zQRvPbIw/TTaU+KZrDJOU1cq9G9dYTxwB4qAvcfHl5r3Rt+sWwTzZRa6juiRWbBFIeN5+863PiDJw94RMZ8Jy6oyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762646394; c=relaxed/simple;
	bh=U2JGDCnZ8gyFgsQUzGCWy5FsGVoL63+g7Afsm4b3gvo=;
	h=To:Subject:From:Message-Id:Date; b=j/pXHqdvfux7Sa1tNCJV5ipzxBmIm8Gp6Xch5KNhto1GMSSX4WSr1HMieRAk6PodWOFn1ftA0zQgbzEfQWrQ1AQykQQWKoInMZMgI5sIexm+J3Toil+EvLHPkg97N0wShAAXYg3zFYm4bXNO2awVJGD2+hOE5RTbn+x8N6NVkIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcWzyW19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcWzyW19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D98C116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762646393;
	bh=U2JGDCnZ8gyFgsQUzGCWy5FsGVoL63+g7Afsm4b3gvo=;
	h=To:Subject:From:Date:From;
	b=qcWzyW19rIrh1UwAjWENfOPHTbEaCyr8wx0feAGcsmAfa90iyiURosEfXB+RBEM8c
	 pcYD/NcYvxhYVC4o75lvMHxnCzA54VkbX6atjv6a1XfgAEC2iO4mpYs5LVCP/SnyqX
	 +sI4UteokcRPjQJXeyLKBt53tOguQAdtI0Ts+HfbjJFN+0V+5SgaIx4jS+x7/3lm6z
	 qANloZ6+0pEDnYT0bTSyZ9REdXYnD8J0dQQHLcStJr4ZFaoLcmaqzjFdcsg3zBHWDx
	 Zejy60ImRA1fgWoiz2CT7LNamJB106ero2PRDEzBvyLdsj9Llq/s8BPD9dXB/fnW0/
	 mVgb188WzE8PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96053CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264639357.19573.2779650888084827937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a615f7d0dafcd02d1f4a0cae3c6fe61919a1ca50cb32b83155aa8a28512a21
Date: Sat, 08 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762646393
