Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303E4396D13
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772716494; cv=none; b=d3f7HjAg4Wb4CVtNQDfLcK/JPEn0dKJfqRi4mHets4UGhgiJPjcybTiw4ByCSpFAoyzYnrELy5k0k5P2qCTCNyJW4nCqRuwq7edMMIpenbmu6/vDxB20wZwnc+j5kYejx5l3Hft/uKo0m+AjtyyLAMgNGUzX/bPHukV0lLJFejY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772716494; c=relaxed/simple;
	bh=u5Aq3sg8BOpXyhq5MHSZRPR0O6z0Z0gtlVmGH/7CQ5o=;
	h=To:Subject:From:Message-Id:Date; b=X9XuFnCtRAYG1djA10gXCqAd0X9afjLxru1wKA/Y48ja0xZCQXCH41OPJeeoRQQuvqvar3tZfK/HwYJZamvZ1A/kH9AqqUX1TLRfKHDM+ZM1doFpFMoYeP5TWPX05Dhwq/HzC399jtP30/WKB/baM21/sIB0szaKdXn6wzjhi3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHA5BhBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHA5BhBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC09C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772716493;
	bh=u5Aq3sg8BOpXyhq5MHSZRPR0O6z0Z0gtlVmGH/7CQ5o=;
	h=To:Subject:From:Date:From;
	b=EHA5BhBY947HztJzNWbj977J+6s7t+NSHCDc6pIjCpkxujLionD/sXnsQwbWrzW0x
	 ZbOOxdP4mgAXPUht0cpLE3qtlu3asX2qBFJZ33DmK2fmxGQlrPa7xmpbyWHah7qZdb
	 r6IyOVhJ3I4/fYaqU+KuJeeMLP5oebmdzabao3PnVQmSMjccrZBUx0llC0usY7InTM
	 eymUKbcn14nBgGWNHJHjkQ1VAesFW3BK/pJxKMyyruXHpiB20kDnJHh3Q8h41lHFzv
	 IPtKyJGi0au/Ig1H5TFzvgMPt7n4SwrqZ2gZXLt2Z2infob0S6+XNOCCEnrvsX7wKr
	 oP+KBROMLNaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFF5F3095A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271649362.24161.10371383179384907162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab94171faa8ba1166c8361a18d129f4d374b19e69f60edaf8a567e4d0fb93858
Date: Thu, 05 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772716493
