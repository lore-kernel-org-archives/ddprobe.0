Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5D31FDA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750810194; cv=none; b=pk/dnfK3nCXMMiIueCjCCabt+POrG7AnkFo/tG167ZrdH0ZkvaZGzRRgpYE51AuuFGiX2+KkSpyKlb/SF28ZzbfZOqZdITKGU+F+mxiE1AOckAkuKwpOYzJSAnIch3V3bX32xm5HLs4nNQfYe78P163ulCDJ64qSS6dlkpxVjO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750810194; c=relaxed/simple;
	bh=6ZW/u8NUFdaloDY/Aql2in03tCdW2DCacp8egXvOG+c=;
	h=To:Subject:From:Message-Id:Date; b=g6Bci6t22N68ndrDeH8PQ71pUsp1hYb8pg03X10y9jyxGK5vAqjA80BP8gUy5dJoTkkQTVbQ0zdx+cxni/zS2XX6zVMpba7UTZbRMRPCUENAYxNcforA4o8+RfBpsIi8AiYdSfQHIjnqloDeYkhZdyjewEEfojmKLclVrufzU4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccCfeFv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccCfeFv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D50DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750810193;
	bh=6ZW/u8NUFdaloDY/Aql2in03tCdW2DCacp8egXvOG+c=;
	h=To:Subject:From:Date:From;
	b=ccCfeFv1YS7bEwTwEEiNCTu42D/LLgQTtkjYhZpj01o4hBMcJfaJc9j0i9iU2E/Md
	 J9xDdVrp6K0tmHRIivFhnCYn7ae0iIIhdOsO8mrBg7blKNhrU/CZIhPlrzpNXQGcpv
	 z7QsE6njHARUeUu9LqaBT29TduqujC2XfSPes/mYD9zF0K9CgA5DmHrq+ccY4k/CvA
	 iT8/bf1Xd5JXo7ydV5WI0TcHvAh9/FBzOtglzgFMDR4qy/bvxPqnIt9DoK1fYEDlWu
	 fp+WS223fphzbV5WEwktA2xPT0tDeY5X/2f9yNf8cEnhfz2noHjVw1BBxYDQbnT9/j
	 NOtAuPs5K1kcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BAC77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081019357.1494.10399732840849965401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db7b1cf6879eb5e4a9147f7c71f9d0e27bc22646cc0c5d6ac34d99ba4062e66
Date: Wed, 25 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750810193
