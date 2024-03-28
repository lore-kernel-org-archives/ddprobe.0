Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2291012F370
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711641497; cv=none; b=ciQQatr9pV1TQh+Y8v6vp7x6Q3KaBxuTl3TqoTxHQUanApyPJRFJDKr+g3iWCZ3vKUPnhgQ4sYBNJaf5C3bRQtWmIbmTAWZCGj24dlwr71tT5D+xnJDO5d2q3VuSvWZehuUBrlyR4ODNwnGkr7Mty+BdT9VDDutFgv/Uu+sahkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711641497; c=relaxed/simple;
	bh=r2eBgEyftO7e9UHGUstGWphnxfFBwHWpTEm1D41lAH4=;
	h=To:Subject:From:Message-Id:Date; b=NjZDzqMReX8pFU/T3+cjh2PPaV5tkysHw6Z0Pcm3PG53lgQ4rlHzeXbT4KJ5PzcAbogumz8cTf6CEAbgU5jmjmkKsrAc76XVblNeSgVlu72Fzg/Cox1zC7ErMb8+R8ov+vafuzOb4esz3m8LDmaMvIzyOkr8OEEedzK9z+VeuDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAZQ0XTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAZQ0XTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCD4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711641496;
	bh=r2eBgEyftO7e9UHGUstGWphnxfFBwHWpTEm1D41lAH4=;
	h=To:Subject:From:Date:From;
	b=oAZQ0XTXZtvO4AlKvzZ235NipUyaghR4fC2bx9Exs/lYHVwfzemD10HWdw3ALpsIH
	 kd2crVVIEdl8KISrcTzYRqsD/G9HoTjytETV7DG5zaPe34befrpWjGpfy4KNF1hdG8
	 6bNLofd4nbqBarB9tXVNQTA2TMrOEtPWCl3WIhUDeYY9NMAiD7iqO7rhcJxWL309Ew
	 E0XBIkAmnkbv8cpay7WS5iiXpqxHDol1jbfWgM7kh7DgpXpggnTjyGMxFPQXiBGliP
	 K4MQ360t6A3d/Vy+2XJSchmBwhEA5OaUljFEeVNKRSPkC1lq2AScSJsuKxxWcuYBy0
	 zSzePJvsN6R4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81349CD1283
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164149649.20425.16851374189486390143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a2272875f5f87ad7fa9d5d2c31ac408690ad892907b86710c2b84087283bca
Date: Thu, 28 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711641496
