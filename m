Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB01125B2E3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752597593; cv=none; b=LXE55EJWgcaOY59ciF9VnPbFZcr8lDqR48uhPVo/EuYlKg+wfUQlCfuTXy/bbW+jcgi+hX5HGml0e1BlYitsEiHC+X5nBpw5lv9neJ3ce50DfMXhFTS7xux2H5r/pPG/vaySv1Hj5Q7pJohIJkBvzTALFyUHL+CPtPy5RMRyVZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752597593; c=relaxed/simple;
	bh=Qei3gzPuMd98fx2a87R+JtdDwE1zefn5FVaZRnn6nZQ=;
	h=To:Subject:From:Message-Id:Date; b=f7GJWheJYr1H8xrNIqsZ+AYEQwJEhUo5lAARB7PfnH7sgj6IzJ/etoGJhDk5l7ujTw0f6DLMQQ+xzWB2ofnc+Iyaz5Ew44BjaR7ltBQDCfz0PMJOGrQnuQaCvs+xie3tc6KQM7d7i7IJF0wemEF085DM2nHzKy5hZo80py4Fe7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5qKMLCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5qKMLCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7BDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752597593;
	bh=Qei3gzPuMd98fx2a87R+JtdDwE1zefn5FVaZRnn6nZQ=;
	h=To:Subject:From:Date:From;
	b=o5qKMLCK13UD5INK5MvR3o7QMWA9OX3/iCZnxUNEcTKzJxfBDeKCTE7gcocDY/A4i
	 HdX021ghZ5zIhOdMo1akg22gHH9Pz+rmucNONi2l5/eo11Nq8PHQGvPfNsMozxpeCN
	 QILzbjJ6STko45brtVCtI/JcGNEbHr25nEpucjdXvs7AAZDm3yIwmFbsCvsms0Crej
	 g/gDn51oGQFAKy9qKKS2aop6Txa+4y+YCeAuwH3GFZl6S/EuuoeFUXSlunyIt3zEc2
	 YB//MAxTzjQRnWfJbBOxLHk6J7woDDIXeK+tM9/86LBXTcGvZUJEw4xD7+dulsO1aK
	 vSuxn03YrRKcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB0C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259759358.26208.5176596316551087647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5a2dfc92b7bd04e737f54db0cc0f86e7a10cfa85e6c3262b0f102f4782b2d4
Date: Tue, 15 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752597593
