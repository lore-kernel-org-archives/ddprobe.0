Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FF31CAA79
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750909794; cv=none; b=F7T0aBP9qNfc+1QMXtL8wS8T9YB41V+W7EUTAxTphLjrlwfh7c/u5OZhz1bvh7foXvm0I9/RMxlcF9fxZvr+H8r5FwxoW5eiI/Lo0tdM0XnejW3r3KTpmrBZz8bfZ0e8vK1G4gUWTlZLxSAdDTONGx2x3qsRkY2Pb4BihSLnfq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750909794; c=relaxed/simple;
	bh=gUxlX0GraPMQ1/jkBI/B+PJVonDGdTcPsrW8TwWBEck=;
	h=To:Subject:From:Message-Id:Date; b=KvsUvmfE9IktBsNnbg3uuahIUEgP3r5PzQJeULQKsH1LKxkVOWsBWb39GcxLLU2DBnUVV7GCjgfOXQK0S67pkPuTAup67o2ZXbB06WktYW7hEqAZYlNANY4X1UvAT7K25frMzqTgKpQtuWlhxKH8Nlj75KtoTSlyNE6fTCksfRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDGD2G99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDGD2G99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4846C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750909793;
	bh=gUxlX0GraPMQ1/jkBI/B+PJVonDGdTcPsrW8TwWBEck=;
	h=To:Subject:From:Date:From;
	b=CDGD2G99mGU4ufmN7mgrLddLYPUDbMqx22Z9rSpwjsDIeK9/SD+7mZpoKcRSPSNS8
	 KGZprsWRH+nr2Ye5AczJeRV/Uc4/klDH6H2qsKp1luv4eMLEGwmDg8jps8w1yVORAC
	 fTlg3gqMnB+qXmbrs9rsLvFrfRz+Zfs19CIvT/wRTTkHtnVOIgYZlnbd9+efDkOGKm
	 v+If+Ctq9ADyCwScoXqKe9fcjMBGoVJPJGt5G0m1TaVN6E4HkXJjd/JRIG4u2POGqL
	 FyGAPIXJBoAbvqRUtiU7BisJmv8zdvcxiF5DayDUs6w+O2htGcg9EL5tSRIFGpIy9V
	 gLcpKmp7BuPtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230AC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090979358.17730.13535599119806192529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1401af817981268068938e7989011373bfd7156e1d0b6129c2789913f1703c68
Date: Thu, 26 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750909793
