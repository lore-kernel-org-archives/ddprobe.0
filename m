Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596BC50B8CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790699434; cv=none; b=TGvLUjihfhNnY2Ds1ZIf4V9izA/JB0mEiIGJWaGqifICqP0QfMLEZoW0FPzz8oVec83lFpfLiVaGEgaAaUJgFEwrphSTx+NGsc5aUD0x6y6rPFrfmPEJsRPryfQp4rsaQUTb2q4DpNlxQE5Fg1ZHOcL/6E5mfH3jHnQ9JY6cNto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790699434; c=relaxed/simple;
	bh=r0y+e8mGA7Zbog/EWktVURLBs+vDSr8KIR6PPBCWfWA=;
	h=To:Subject:From:Message-Id:Date; b=Mj3ePbk3J3jFxZeh8WIlhDnVZPEFAgiQH2Qd9FlTMOLU3vjKk2D1h2drM3VXJ9+6aiUg8ukm7ZHvtZqIC+8X5mwSsm59Iu8Dq1Zs3cssN7Xw0j8Nbi0Tb5fo3ZUP0rDKggUOm684DLrBDsvP4HEyoOI0+4Fumace9cYVZE+1L+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvMtireC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvMtireC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A27C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790699433;
	bh=r0y+e8mGA7Zbog/EWktVURLBs+vDSr8KIR6PPBCWfWA=;
	h=To:Subject:From:Date:From;
	b=cvMtireC9HbgxeCfC6YXjE3aoBMNitUUy7bBZQDjO5hYvm+1P0XzLRsrTEtYEp4iQ
	 aRADTOCxsfgGMKhrpyyxgPqiPH5Npwr/pYO2OGsLQRrR28xXmydaK3sc8RcNo5xAc1
	 MqIIvwsdWU/ILOb3cZWfqKnOoSPZOjf7/yRYPcPMh0I1s2Bk5tM655AdoChMGOyk/b
	 LQ96w2R+1DvUcjo+rLQsoUoWSXT9JGVkaVmKO7ASBnuWwbaKzUmq9GsXl+A9e6ngum
	 MATc36SmUw4rYFfkwp/QiowaS092xnAQBrWpzAFgOMF8L2WdXWzMacTEuVcjeveUn/
	 x4xMh4X6+GkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9238C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069943368.23174.8356176815820458154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573e718c50b5b102898bb30df42fd7a081fb2cdcd5723a8b66b8574a8020254a
Date: Tue, 29 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790699433
