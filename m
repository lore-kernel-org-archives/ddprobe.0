Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00434EB20
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705966697; cv=none; b=BtgMfvs7O2+88CTBtBFbyUgmQ9CTub/pTTkargF/aavHaGJv1xH5IzbsW4KrL8pNCwC/6KO9v2e0TR9Mi4THhSt0FNoYcavq6f51AtFtprQw14I2USFt2c81MolJxZTTczfQ6pYXmSEAQoc08taKxmpmIagz7HoyzsyRSFZ8BHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705966697; c=relaxed/simple;
	bh=WYBF2SpMY2KelqvQPwmHVDEI2kHeX5WcAjvfU3deO+c=;
	h=To:Subject:From:Message-Id:Date; b=PAv6I7QufnOw7oBS0iCfJ2+wuUDLWug8/Uarp2XeM6IifoHkpK7pnmJ7H+dmq7mARNksQlMSQI941YG/jqmgzPPQweCTbRJGz5h+ys+VgD3uskjulRzvJ6uBEw40PiG/vO8D1lMJRzoiMq2blxkI3fdu+mF2SWJc9WkQso+8NnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjyStgr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjyStgr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732B2C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705966696;
	bh=WYBF2SpMY2KelqvQPwmHVDEI2kHeX5WcAjvfU3deO+c=;
	h=To:Subject:From:Date:From;
	b=NjyStgr7UgnFVtE/eR/XbWPyzKhJ/dJNbRdJnjmSKxZRgV50H6JefQVQA54HQaKhv
	 rS4dzNQ24damtQkhAHwMfIEh7zTReeKVvnsF5BKP24m/drxc8Lx6RXdok1ipop+LV4
	 yizZ2GpXXThj6GOknNeaiYCY+C9U+/2czwJWQlgiZfuQPwLWpPQ4jtUC/28FFokmz8
	 eiZvUwiWjex8Tpcdrz/PriDg7dMJjRODAHSLSi17bHHPgHo/lMNmyVi6Mn+c37s/nb
	 WwP48tJyYfTPdcAoWsaNw0iYQ4QiThs2w46qYeIfnEpk09enX6gfWQkAII7gIrCBmt
	 HdyEm+ZJyY7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF15C47DDC
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170596669636.16083.336174130817083731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6541011a9f7fb1d8d9b229ce2d8b5a6112ade7a2f1637d80890ec9c2ebb1cff
Date: Mon, 22 Jan 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705966696
