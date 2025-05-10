Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400C5259C
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746875394; cv=none; b=m+5TwnbVa9J0oUM67sGrO2uNCJ1HckEPR58d9KrI7ddnBUcj3yfOApqjE8uMfPtC9X+OLqYeIXQiFe5dSuQ/01KyeGm6Qxkxn7rEQPjP0EobW5EEpoExmPL21/47RzMBpXwoHpmFJDcMdrCVjfWRlQ5JhE8JfyfKnRGwLed8CBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746875394; c=relaxed/simple;
	bh=fv5hir0Snfq+gUpttVEA3uXjwBrgff9Man7dUNFuAoQ=;
	h=To:Subject:From:Message-Id:Date; b=MBshEut4ddAGPk1Zh88Js/7VvYZaU1KCeJtE/pTOh/wVU+5/Wt3uWOGNRfSAAZ7rtrFlNdR+mGsuBfALIlHzsx7sxgDMjYdMftfcELdHQHR7/95b7asIUGg84gfhUHbLG0HTBcD4z6DeLJycdzedvadq9FV93Ga6UrXB5ef92GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZetURmcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZetURmcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1636C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746875393;
	bh=fv5hir0Snfq+gUpttVEA3uXjwBrgff9Man7dUNFuAoQ=;
	h=To:Subject:From:Date:From;
	b=ZetURmcOYrYx8syrjDbO1ZC9OGvAArOzHGfpCxDIJmX8DtpClpWSmrKCe+tzhe0gE
	 a39PHdCrlCYWtuS+oWiHBGDKOazH8dxAU//MyTQ9ws7yCBPTNBflM75vrjh9nMcPB0
	 OV472q7WS5jvgLIcJSbSMRcC9124TekjGTYU7+sTLUVF7ERs2pN96AsPCRJ1quL6fo
	 PVAkuVkJRUet0f4vkcxdEhQGhrksw26bH6p56aP/FV/pNkqGaTHg/ggDrwmo/jpSVJ
	 NXTh8lJ0Znta0YmDZv9QLXozZvmQE+OwbWAjDC9LnCLS5ZGpromW3hXjiPdu/iIYc2
	 QZBx+PDGPvn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5C0C3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687539357.22057.6797531395098023487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4c02a75643774abb7ff78a28577e7d14cf9f27d58b61d8f284d96260f4d5aa
Date: Sat, 10 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746875393
