Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A8522338
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753202393; cv=none; b=lfS916OvufXHO4nHS6bqSezgU+Nv0Q4y2JBCd7l7dabYn4vtWwgV9vMpTEZez5KPpVoOTAAEC+QJ83jDyVtgWEwMoDPgKEzBrHP04rM9v+2Mcz92NMrivd5EOLRzhzZfJBgdXtwHCXrsVrt/ZYUpA01Q8nbwThEaOAPH89U7bow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753202393; c=relaxed/simple;
	bh=SXhBR/dT1B1mwN//ZGvSBkw+vPR/d3qx47e4UpTrqpI=;
	h=To:Subject:From:Message-Id:Date; b=g9f4oZSC03fOMivMCRUwQapGx6Ln6dcBjCwx1urCJm1QpJSqJsb54qc94Ximhn4THCeG/63qGmxUXLCmG9M68Wns349zecekrDuQoC7IM4GVjz8b+3PuqYn6Q3vH8tJySAWNAf21pHgjRtj2QhXMDhhLPUPMGn+DMZHf9d6I2Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfpDxeJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfpDxeJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20BFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753202393;
	bh=SXhBR/dT1B1mwN//ZGvSBkw+vPR/d3qx47e4UpTrqpI=;
	h=To:Subject:From:Date:From;
	b=tfpDxeJgDL/JJISIbZQkdhOf8+lFxyteEVBnVRd9J/4NtM+Y9qmE8d51eYo0VtBUw
	 0MbSYY0NkhZpx5ezwHCI40jbfr3DXxRKN4VnwuW/68g14Uv3XXqTO+k2KblcnYwDBU
	 Uc9Hk/FD2QlieBnDcgKjjpeiJzwEbtoYEon9qNEM4yD1vnTv10oAcBYH8o8RiFxlKI
	 gj5Ko9XEvdhRzTiZswWaxiqiVum1vgDYkkt5ft4Gi2iM7AxPFCOtZIiuKiAMjKSR0d
	 v/AYjJxdA8SnjWL/mF+p0wiIaHJARLWKeBA/enPKyqqPI0+XTmFf2+73wZTGaqQJQ7
	 avccRrhHU4e2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91477C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320239358.4148.12280697970747645734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75c5d8548caaa52358980a3d899250d4d27849839aad85db72720acb20af967
Date: Tue, 22 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753202393
