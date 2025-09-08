Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BAC1E5B60
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757311794; cv=none; b=eSo52RhsBK3VcXRPymQhwfwRMSkdLCGo53UZkOT1/S4LL+Yw1jt9S0I6CElcxVfY+DhPZfXFnHB5UBtVaYLZx/FZxZOwDWn8mUKH3allkpACgEjJYJZS86BUJI4yQL9G0WCe/UXVIdLJ7QvbzjnnPu12DOE2N0EzcJ9tdH3q9C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757311794; c=relaxed/simple;
	bh=c/S3ifH5hVFjIkwiH160vapJVuH1Z7vR75xyI4gP+Ek=;
	h=To:Subject:From:Message-Id:Date; b=Nzm0Jk+JtpAjFyrxoKKnvSWpj9OFfHUHb0rwGxL0+ghjQJtRyWoj2TU71geG4Ji2gZMq+1WmJZC1DDCYs1Ngemoisgfg/dvcib+XEFyhNZCVEcqnlug7qacmjGywFVeGAlD3aKQgEd5hJAvcjSlAE14nVZzvfWqqhor0mz8EoOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5SLTXwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5SLTXwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E93EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757311793;
	bh=c/S3ifH5hVFjIkwiH160vapJVuH1Z7vR75xyI4gP+Ek=;
	h=To:Subject:From:Date:From;
	b=R5SLTXwhUmGWmY0pptKvjWWfdheeBtsg/8Lem5ww2pwoXuKsVpKwpfprKpX8qBgx5
	 DMnlBsvv1jH1zzusW/WxcCmKBeXTjgRun213b2ddnekv2VXP5rBcJ/6xw4opl/gfSd
	 jfAbn0IDnEyabMp+YkfoxbgynaHhxBr3g6rWVz5rxS3lNBGBDngUtL1+zz0CQNVZk0
	 BCQJWTOPLl5SM1e5Vh8Lr+BhvbLEmMy7D8bbNgV7IrzigM/y0LEbnqubwm8BwMzpTk
	 iZOxFKJVy3UvVZ2ioVO033be0M0Mx06pzTCnfneEUR0h+MfzI4RT2V86hQXL40ThB0
	 tdIpKp3BlJtcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB52CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731179357.22179.1697049741949041856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1de81ad6db88da8ba447724ca7e3ca755900a3fc722a79bd8a7a647b23b3f09
Date: Mon, 08 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757311793
