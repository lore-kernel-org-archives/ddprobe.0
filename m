Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236E9205E25
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765576374; cv=none; b=plsRlvZ+ZAdRylINWbOQluBcOfRRJqE+RtyaJYcYxj3ywKtbu6ypgwrzz/nvuTCODuE56rPJg4fVZfSFq/ZOpJ+c8QGD+yetgsaujNIs4KsXzFwQiFSr5Pu+OjEWjRNC1HYv/TfAXzqNqmfx30CLwdeZAV9MfxRzCMlKU/lYDOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765576374; c=relaxed/simple;
	bh=S0LBRww2caRufpvtkErAGCp7iesu6p0brDZNO+wYGUM=;
	h=To:Subject:From:Message-Id:Date; b=ZiMJdFXr+Z56T9gNi+XRH8cITPWHR0uhvXbOPRhCIp1aazmrFj89Q3YYkihrUu+DakfnG5BpQsc5RMbK2bJEriWPcuWbe4lchTnIajq38Y3skVfg1vRmMDq9zoDXqAnwIUe6V9C4D71L9yKN4GdGiEIuKIv2TPVPDEJZF5p6J+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkrDljaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkrDljaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D7BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765576373;
	bh=S0LBRww2caRufpvtkErAGCp7iesu6p0brDZNO+wYGUM=;
	h=To:Subject:From:Date:From;
	b=ZkrDljaUwQDWmvCSgDgXhzOy/eOSVa3O82F9g7HkC/5li48aszZjUWTuYM2zpoPmP
	 l32+yTpvQArGqTUyYO2lPpGZfqR7NLlmL9XUrb5VD7zOLIL0gyzibLTqIjBT/PVhLE
	 z/8rsPs50dquEIRxabKGWyFzdjpLXftMYQAbZvmhAxpYX2EG2+j+7TbL2nkOHyD9g3
	 cauYFsYN6UQWnuYbCl+OLuA/yp+m7kvwZNmhcA2waEqiYaZa5/lYMiMomL0B+Au+1Y
	 GwY70zx+yyujGcKXEupz2MU1uI7vcC1daDp5xYXwwvB5feMCzOiBrB1YW3a2p59syS
	 TR6NRBxp3GRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D8D59D8E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557637358.19767.2720888468040702425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8e2e2d35f3b8a43f6f804b6644bac9b37cfd1372eb2c877549e76eaf924ea1
Date: Fri, 12 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765576373
