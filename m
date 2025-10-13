Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6EC28E571
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760374794; cv=none; b=lfYCR8kTHALljGcLkVJLaTtUI9Z66SyDap/+ZXNGSsV2PMqAsa4o6hmbCzSqMnOPssOGLCYlLP6xI5cCwBClHhtJ0j1Ibx9lkoBbjh7VNrpecDYSEdPTK+nP5vb9sGMxF686Ko9snKPuiaP4faUgjBMG+9qawH85DXOS2L5sy28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760374794; c=relaxed/simple;
	bh=sQ1xcv6bzE4Kde6qyGdTYA34aZPwqdZVxYYEbhnYFRA=;
	h=To:Subject:From:Message-Id:Date; b=I6moUQKbnmoUUzOQ9cL5CgKS0DzEMy6O9qgNg9ZWOuCASW5ZaavkB625Z2XTle6RmNsXeQy9pYzJRs9beH3mIQQYPdER6E3TV5v2iYbldmxdkGIbkT1FFWrxwBt771bO0SBlKuDPQ63wgeS2N1GP/L0rpX+uQ9PvHftUhvRqUeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiV5tNJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiV5tNJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E40EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760374793;
	bh=sQ1xcv6bzE4Kde6qyGdTYA34aZPwqdZVxYYEbhnYFRA=;
	h=To:Subject:From:Date:From;
	b=XiV5tNJK7ZV5XMY6srwSqlSy5dIak/x/psabMaqIGbx2t8Y2797H3GQqWQANEgt4C
	 od/7hLDAXhCfDLwibhjcjM5cpwjd1BHB5ROuSEhDECxPsH+ZxCU916ULVRL+HFDxLm
	 +vnURnxo3HSyOLq9Ac/eNciGlJyTqxrwqYOJL5TyshxQq5KCko5wpK2nLTue3+NHDs
	 Nv4L0Ry/cq45mPk27S/pPRxo3x59NwmnWaLCGDn+YFDwsFH4n6KZPUFRYfvDIvuZuY
	 hQh2WvrJiv1uA2ZfJ58RdBtxUDoN7kQSZ1NBQtb9r3ncgpL4nN+/8ftUFa7Ze3wlD8
	 dg0W/QgEmoDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F902CCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037479358.13888.9451800495253130270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54034ca5ea7c9a9630dd410017d028762de083153d2965f3ef7da2dd8c96eb1b
Date: Mon, 13 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760374793
