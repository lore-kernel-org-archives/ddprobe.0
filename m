Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7A726CE12
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754314794; cv=none; b=MeLZpAMgJSbsn6kM8hb0mnFZiTZkR2SV6RVapeFbKdCIQ+7+y2p+CNpDjObbKUc79NeMlmnW9s6QfUvvgQlfLJ6J5dFh8nL1p7dewQ9Tn5etPepS3bf+x1+VMCbKUiDNLEh5PtbHSIVZH7GBS0H8euFmKkzcfWnxPKyGey1ZmAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754314794; c=relaxed/simple;
	bh=DjVToLtdTTOl21DSmGUfz0ETs3w0N7VwaMvHO3JdHWg=;
	h=To:Subject:From:Message-Id:Date; b=nOPVqyUgzrulmDHR0TUU0B4Q101OXp9vDdQ0EN9k2ZLu9WdRhMRljaDEcpnWnRE0U0EJtKuoSOM+dkGcIEA4ValtJYl0Sd04y6k+hRdSVEnaxkSQdML/5txwpUMfs/mVSv1y8XoIvkZiaOD+enFknEb+DGuLWTCAEo/ezcWXj8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YD27Nenu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YD27Nenu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2EAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754314793;
	bh=DjVToLtdTTOl21DSmGUfz0ETs3w0N7VwaMvHO3JdHWg=;
	h=To:Subject:From:Date:From;
	b=YD27Nenu0/h1jo+vMpZvjvDnOTq8LHYa2x0POxU/0701NScgqLpu6hbLSGTfz21Pg
	 Cdv54roAJLgHvZuu9fFdhoPQcQpaKSQn866QR4MCLhZ2b/r/RxrCo1QUaqj9B7Nw0V
	 oHhX1uEyMGxZMKdw7yhCo3uhgfIdeTO195PXUkz9ygVe6oec6JQLHdi0CTvxU5pjDf
	 wMw0CmE0eGyBhyRi+UmO2r5Emxl26DkhvzLBXtkCYK69pxKWXDkObXafTisXT0pOQf
	 E9ghnN7104my9cLTbPMD+BcU51m9LUgaNPL7YFR9sS+OjCqZS6/3sUpaKxGKxhPxX0
	 z1lFowL0lVY1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7AC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431479358.3411.12641688810018011698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5feb9661949a094dc09856ade0a2f0d623e9395cec230e0ab9c409f27dfb7d
Date: Mon, 04 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754314793
