Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3AB82866
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778637634; cv=none; b=D3CKSzaLJ8SNCQkJi0yNr+PjL8EO3WKpsV/KayyLIR+QBYlPzk//sHhmhdCADcZ7AFE/8iIfTMLFhQOTYYpCQpmhKK11NgAP+8rLZY8Ztdr2jt84BQknBr4+v8QRNUtaffe5dckAIYv4nHfke1BNJg5wih/mbS14sz84rbvyhn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778637634; c=relaxed/simple;
	bh=ow3qsbrsrQ/dQDOpIjHRZLaObtQtUJ34kynhkYIR2kA=;
	h=To:Subject:From:Message-Id:Date; b=BitkC8cL3MhlIwybo1puRmUOdgVpGWHnH/gc5mqdp4nV1aqhys2ozM0mesQA/to9LZEZ+do8cAzJAdss6i1YC/YPNSFyjdApDzYi9MH4a3cZmfsVXo12tvQhoJXF1OCOcbJwy2pi1Rjlu/8RunlCz+dl4kbxRZZkQN2JjTY6h/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+UkPaMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+UkPaMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D65C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778637633;
	bh=ow3qsbrsrQ/dQDOpIjHRZLaObtQtUJ34kynhkYIR2kA=;
	h=To:Subject:From:Date:From;
	b=f+UkPaMvjt0oELPvHcfU0jhVNptpQMo1dY6BLr6DOHuYIZ13o9rTVjolRBd87ag2a
	 s0+simpFtakVRCdrjLPk1WU0giy6Qx3zuLUwiNPyyfnyBQbFnFnbG0wmw+w0h3EFpE
	 N6B+HAAuMFLrzzcR9ACInj9qgnhSCMGcRVXOC8Ss33bX2iYEmp2zes0Km9iqPq/wd1
	 NVundcjf7Hg+a7N5dB0c94WRcg5T/0dfQtmPp2wRrDVPKvtehWjGSkj2QiUtAlFAwd
	 L7Ep04MjAuFWVTOeiTJ2yuw5iAm/asR/vGljoxmMHefSuyivwhzLn6FgvoCy8zti2/
	 uKyFOfTnMsb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0909CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863763368.14683.1494401888124569617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6213b4aa337ed5fd8d92fde30d6fa56acb71e6b89572f2ea0e6330fe49b441
Date: Wed, 13 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778637633
