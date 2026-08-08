Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31894353A62
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786215034; cv=none; b=K9gtZ4jB1gn9hlHjLnOCtYyrZNEP0w49KG7nWh38fmhP8aJPp6FdSWJNiTuqJPD6Nga0yy8fpWNXarfy83WkMLl1X+zG0GSqfK6CMkPqDMco2NJ/2PuKWNzUH/u0exExtM9KKfj7iZKFN373ljRA5LIee2yfOvH/FGzIc4xw3l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786215034; c=relaxed/simple;
	bh=gSKpFMIWAn7T780Iv8kuxv5hZ7dYyNBcS35MGtiRj7c=;
	h=To:Subject:From:Message-Id:Date; b=qqTaVX5cXodE3Z0JcMy2vb5CEsWFidKDoVJdKaJCEC/D1b55UC0ZCFZ2BQ2oHw9/TdfKGzMtGOoHDHCmQepBAzisUuvDu63rNFOx60W8VmjVgvTdGojVMFKsrKHaJeaqPoP4FIkigXg4S542DqocPMRjjPASzfsntrVUNJWN4AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWXyVCQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWXyVCQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4392C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786215033;
	bh=gSKpFMIWAn7T780Iv8kuxv5hZ7dYyNBcS35MGtiRj7c=;
	h=To:Subject:From:Date:From;
	b=jWXyVCQ7Erptg8+kdmoooaBOWDi6/bJcPJgBHeyvRuy4Ok4pD+IsJ2LT89AZWG19c
	 LNI6xXzd/MVBaEiDsQ5N7IX1blvGRkLsBtOfZF2gd7A5phY4h8tg/fTtWZmfHcUqYC
	 OIpl+nqEZtCLjlLzv9KleNVQV2iwjICzBdMqHjAoXy/wWR4VAxYrdThbdJkesgKKgr
	 3AcfHgfPxVRbioIeriFFfSmKca2vJjwSfZV1WcMyL//hFRhz0RPkFLCC9CajOxsMJb
	 cMmswcIhI2Dez5OtCnP/nw1SFoQagZiLmYnhzEXhBJ4y2tB3zs/AVxeb78Ig94lA3W
	 NukkZg6WqiBsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B210FC5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621503369.8769.11439622988295328834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6599f5f243b6f09729480a5cf251de2b718dad83e1f378826008701389876e41
Date: Sat, 08 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786215033
