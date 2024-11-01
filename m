Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB06168DA
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730494554; cv=none; b=ngyVouYFalxTrmtsvWCue5a686mto3Zv7nAdKdSsO8zd1FwzenOOi7MvT8dreBrQVoNvxlTvDDQnBtHXTAQXPxPN7nLTXwX8d3WddAVFh2slZf1ue3Rxb0jsjgGkBJTLcCshkJdDgc6zgmh/uoSiD+/8AqMsdHY1BToEf+Xbv4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730494554; c=relaxed/simple;
	bh=74oYs3GX8KzUmXxi2tXfs8Yd893cq48hViAQDOFSfqo=;
	h=To:Subject:From:Message-Id:Date; b=thcNA9pstfbczQwA23C5NGCKmFhz/T8fx3sckYik4kHWGE5IeVeYprbUb03GaEnhhWikb7xKCnm0Yka5LX64aRnB85ygqMrFLy4C0+xUcwHuomLuE79W2xtNGkAsbAJ7Ibb/fjq2JCe2RHpB5+eOVDxF6aWAU4E/HKYO5zBVjHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6aNpXE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6aNpXE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E10C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730494553;
	bh=74oYs3GX8KzUmXxi2tXfs8Yd893cq48hViAQDOFSfqo=;
	h=To:Subject:From:Date:From;
	b=D6aNpXE5EoY55LiZJrRAED5lZOSpmM3OUIa8TrlxJh89nkTSrQrXqxDH2luab4TRc
	 +Tsh9/3HzDJmGZBATtWYzRuDB3hDhs6acgttDhkOWlcpHkHpKFoMnZyVhyfR5Dy/e/
	 txoCw4xHwY9FOw8OdSu/BlvZIrpyNt0zJQblUUibItczEGN+gyjvtf/s/hCfspwkgh
	 TSQ8tcbVMqp2+psKUOKejPA729Unm/iTGa3XtimG2nu+HBh6MduKWyg1JjcubEKSIE
	 xpCKvDuWGJ75KGbQ2MPdp5qJPzv14PNKWEvwmjQTLAVrAKF9JMgRkePviQ+4SfznmN
	 pPH0/SIQuB7SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1654E6F086
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173049455365.6562.13859242538982604795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321e75c26a756e98eb108da3be9f64375eba4706c296d3b8d764a2b25fd9ee74
Date: Fri, 01 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730494553
