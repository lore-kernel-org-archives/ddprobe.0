Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A411EB25
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719947123; cv=none; b=eI3gLn0vvTAgl+whFWslQO52y95/ocl/H3hWKwy/IvPZcOqJi1SmmqHfIWmtv1V6Bnb2a714h+sl18WOOzV2oMlPqtEPGbHmu9BJW3H1kWIcj7qa19KsViZHQ14TGvpYoKcdj8znyNHwjBySAo0ROmOxBmvvNOhFhEhpr+Z9+kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719947123; c=relaxed/simple;
	bh=1xr25+5zG7pdZTgYfJ+BJdQCfhW3CP3S1jwt6IVGarg=;
	h=To:Subject:From:Message-Id:Date; b=Jp+w5ySA7Ct5EutAFWE5ONTP2MXHOJZJ3y7omYUGbFgzjzmVVg+RzmvOuwK//SLcJRIv/tWcTHqkGJXscrvEoUCR+HgMm054Yi4iZV84Jvwhba2m+En/0hQTfNK2TUg8mR6xzADyt/5MTk1asQYYkZzeNCkoOJAhJBgFyKXJgPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6ykZd6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6ykZd6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB89C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719947122;
	bh=1xr25+5zG7pdZTgYfJ+BJdQCfhW3CP3S1jwt6IVGarg=;
	h=To:Subject:From:Date:From;
	b=T6ykZd6W+NvzqQgsfraa3LGYU8ulfLjjBoNhciUrs3lqNgE1hbaz27zHun6JQz7oy
	 nxV8A6iddyX9ny4TeoqRg5mkXuSYdsmzMScjtgDrWyX09bcx3+cu/ekN5S5NbAep98
	 NURBZwPp7H7Xi9CVsiZANbeqwmECPReD8D/AW31KFc8KgZzeJaSx+r0fDFy/2D/hJ0
	 kmL9NMo0BK/46wd9wKpJ/QlMrksc7cF7+UZulSG/gTuVPFLByveitVGhQLRTKkDETC
	 2ALG2uxzAQC4eWkGD5OsQMFWTJs44Vk9T3cKUNKFsz2Kb/gp57CXUbcgiuS01Dnh7z
	 Nhz1ZNYJenGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4E2C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994712282.31006.3117495547377622723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ef6c1da2ee9f7589bb77d73c139e47b375a0594f20fbe7de5fe95ef855a361
Date: Tue, 02 Jul 2024 19:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719947122
