Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270451A262D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762562394; cv=none; b=sHBJ/Sj+0CvmNe08/Q/Oa9GHuEgy/bc/Fy+QzXeiIz3+hAnrgBqC6OaBcReOPhJZrB/vVbcSQ+YTxwldDcbTqbWb6Je9okSYYTPLWG/rHLrUpIRqNDlZtpkrnnBW0dMP9cLQMxK6zEwctEzGfzxW35fH406y5vCnfl5UBrG48o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762562394; c=relaxed/simple;
	bh=FDOcfrRnFEK+aC3C3uh4aWWGyb2KmbypT+m5mBkzfqg=;
	h=To:Subject:From:Message-Id:Date; b=YynBznlIyv2uegvCyLGJLL5RHXy6MgPAmvbHBBqcfuUWFxTVRMLzAelCDExMKlwTIlx5m6Q3ZC8BE8Z+hpwgL/XdrzjJcjLYMZTDcL6u3PFmhEUaCBuAIejqI1AsY+fBkkkghTdKK/riYhza+DuqcAl96GEYFVmMX72Mc1fPTWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D763jaMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D763jaMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC88C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762562393;
	bh=FDOcfrRnFEK+aC3C3uh4aWWGyb2KmbypT+m5mBkzfqg=;
	h=To:Subject:From:Date:From;
	b=D763jaMakbrdUoUUt04MCA3BAakfITeOGYIKLy41yvRs/EdgQVh1GIvEyQXftJhHj
	 NfoY5dBQE3lF4Ra7mxiTAIrCbFtQnx0esmkFChajfr/CQDFlTvLk0Wr1dbSvAFCEWN
	 MSe7VxXlfwbLuJWZcrVO6xHWrsWR3JiH5TG/lP5D4qiTv4w51oCcDnBQPizJTzKVnl
	 E4VTdI8njNLlRIB+xHQ02yi5hbLx0idreHYAA7QbPySTz1itrJqUGccTg0VkKan42e
	 URzNQmWOKykJDIQ8OzAr9znaniPv7Fx37VJisksjq8B7AEqqsn7CZ6Ggzsf4X9J33c
	 81kIlVDn+hYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A065CCCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256239364.7579.772542733114408944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9afbc08033ef01790b3179501a60cc8a32431a4aa7fd52725a2c0331391df9e2
Date: Sat, 08 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762562393
