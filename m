Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5827237C109
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768379634; cv=none; b=WMi3W6aT5IQrGOEGNUySFuFCt6fdM1HnfTB4kcTUH2k5rO7fEjPL5jNWn8f3YAckFDnOr3cdpT/Q8elM5NwIsPpu++kzAfKdtBh58CEdcDWkpshZa6CozeS18WtRoVdtGk3xDpHiUHaPdUK57FYPjONG3uMXyyrjB8rdL6Ymb5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768379634; c=relaxed/simple;
	bh=eeOLv4Fx9RjkpsfO9/zqwz+wvN7AiJdCB3T8QsB5Pf4=;
	h=To:Subject:From:Message-Id:Date; b=j3E//JXDzeI4qkF0YsLHibqCDcLFAV7n5mJsK6sfM5EShbsRkYW/HcXy1MGEn/JY2Jvs15Hw5Y7KtVJ4VO20heWrViS1FuEyVzuHkEJ/gFdlnxzyVk/fE83OHAMKTBnW9/eik2OW2I7ozY2msd/YdvnncIg+nOf27RR18UKoiDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhXGbf87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhXGbf87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A673CC19424
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768379633;
	bh=eeOLv4Fx9RjkpsfO9/zqwz+wvN7AiJdCB3T8QsB5Pf4=;
	h=To:Subject:From:Date:From;
	b=dhXGbf87fuD4zBy4Urm3dUOFtb7CVcWmP24wgLUGWJ+MtUKaihqjc+ZtQzgTdzUZU
	 wr9vx7CoUvX/AA9z9PNPX8QJb/nM6G0YsWodPG/EhTJR3841dx9sQAhZQuJdbIrDVb
	 066zSlG0ScoGadSxBiJCATGSRMqFfTOee+WK/35NnEi4eFJ7SvRs/VQPlZPjtPWX/6
	 eUVMtlJ7113XOWgHUnhQ8cov3w+XHYCcoc06C24h8PobllfOuefbtmWR53Zddla4/j
	 y3He7QWjdxLCUJ9sw1EAQd4t/mZsDVY06YSadMDhzGLAUbus+vmpY60LhGn7hFrx4H
	 oGKiTDO48XYJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996F9D31A25
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837963362.24987.3022558497064529092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb93ad7bfbd5d409fdb6e478e6458ee860fe8d587b772f1c14f95e9b6a627f84
Date: Wed, 14 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768379633
