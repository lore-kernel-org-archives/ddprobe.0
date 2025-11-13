Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EF135959
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763017194; cv=none; b=KsX11wda4MhUup0W7tDIcB1Mv7pjiFqXgvUUxu4/gJlGy5pXhjXN53p2Kyqfr6xFLGRARVXq5VamxOPRaEz8vv/FiZairTxYIDthXxIfSy/IlXn2QGaZqULbPAKlujMJ0YRXpe1U4r86ZHhZPSjulTLQrKBLjrBHJTP09R/A0WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763017194; c=relaxed/simple;
	bh=5EhMLaRw4JoZKTH6BbBJq4hKo1UQVU3+NoWqZuHOg70=;
	h=To:Subject:From:Message-Id:Date; b=HErF/uJpdrNnceWRzXXTJu8bKS367QgksTpw1ONaMO44mrs20H26Hfxt+93IHXzyu4pHi8Ynafol4SDkuARrM/lHl4+/Q/BMbUccjVCahsTJ1XoQq2V8Zb9z0tc0sOgWXn0/v5fEr264o2siFO979DoCIVoarmUoGbfKKKelk6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4oUW/wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4oUW/wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B126AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763017193;
	bh=5EhMLaRw4JoZKTH6BbBJq4hKo1UQVU3+NoWqZuHOg70=;
	h=To:Subject:From:Date:From;
	b=O4oUW/wk6nzecDQxoBpCV0ETTqqqgEtUS6za8fahL4/uAZRQj9h2QT1t1uv+FCzNv
	 gmqtBdRVfvGTwXY9UlfIM1ybB423zevowzMK66hzGFFsGxlk9MmmE+hCNcUScGlnZl
	 O9Qrc8Mt6YUcxp/aYZk1pwfDOTSGLnmVdsUB0YG3SGMswMqnICCBpOy2nPnj/UoK5/
	 M8XUbKJnO629eXovKM9AOamMBf39YguZB0UEOiIf9iV2XiD9f/unf+KXD34ha2vN11
	 XYBu4wEePNdwdnzwy9TOM/4ey1TphP1PS6/0To9jcG5BGx+NvRJGUZAvSJbwdGW2lt
	 Yc6yMdPAGPEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4215CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301719362.24172.13715587815986212941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644f8960381d308bc310ebe9e46c7fa3b6ba27b8b0a1dfce3a58f6cf53e4e771
Date: Thu, 13 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763017193
