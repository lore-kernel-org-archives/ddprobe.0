Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFDB25A2BB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781148394; cv=none; b=gPYmQKjkomJdTt3Dq8dOBRUK05ckh4HKZufU8p8jRbiWGCCf0F21qYErBYPreH6/jmsHbU9ysoIwdbqDZpdcby4cQdzGi0OqQ5h/GCYmcZe+HtnnRBLBZai+WNrBzmbIY1s+dp1eA+qSz/KMNk6PB0MR9gUHCtl9dZhQZpi7osg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781148394; c=relaxed/simple;
	bh=qJJyDlQolCx/fPYvnbtRu7WbryciMJBzd9+UH/Rr2Zs=;
	h=To:Subject:From:Message-Id:Date; b=oibTgA7nUhHgV7gQuHXtysNj9+HRDUth/5IW3p45D0Wnvtfde5SoSaXSHGFOXX2dsf0COOtKZNtuqAu2YbljW0HHLK9e20R2972oBcaIopwlixNa8ZCyh48q35t/kTA4vwZs+Tbs1WfA6JtLriAUW2QLdYC2LNTRHoSIUCF7KvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC5a0iQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC5a0iQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE41DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781148393;
	bh=qJJyDlQolCx/fPYvnbtRu7WbryciMJBzd9+UH/Rr2Zs=;
	h=To:Subject:From:Date:From;
	b=aC5a0iQQbe1aAZpbI+JxM1vJ1CjfabUyRarOHK/IZo/EkxrKS0cpKnwhWg0IaE01D
	 ZhF+XRH+uzke1nsWTv5AMZmVV/IkqSFbSGIjA88+8YnQ/615HJ93W/XpThpVvizHzu
	 Ld686e5hGDcBOJA9wzkbZUvle7x7WWHo9xhzgSY+plGktrEjhWePo2BACKag7kVzB2
	 IZ/fAj97IhyJ8xEjv5zeJOBQbp3mJxa4sVMgHJW9wyVAN8CqQ1ZsG/QMXFyKi1dNqh
	 M7EQqXcuOUXmcWTu4WeMxiIALNev6VPm8KuKwGosKsnviFzH0SyG8Q68zE92NEAozi
	 THdPTSTxy744A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8710CD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114839368.1833.17591177820924781537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d0204bf1227bdc65513f2a53246d6bd0c4d75e8dab9b0d8667bc2d6474d767
Date: Thu, 11 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781148393
