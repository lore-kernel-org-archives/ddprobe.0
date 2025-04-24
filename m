Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB52F39FCE
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745468993; cv=none; b=eIuUbZiHOVZl5pt9yb5Xhpj00EzW97LoNrYjPkFaQD+95ExpV/Ut+f0x8zQyc7n4BF+3QI+Czn3DdW8naqv9zkvSI6Yy9WvKJrVGmSNtn5xymir3hAInn/p6XOaLxVD3TyYhyfwB0fu/BobojDkSDJyHW95vgKJwiPhw9NQFlcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745468993; c=relaxed/simple;
	bh=DDWkP6h34eIeMvevdtIeZtcy6lk/m8phdidtbaCdyJs=;
	h=To:Subject:From:Message-Id:Date; b=u+n84gh6HWOOVnCnjPcxQUT+ebAcAjYVyvOZYLSQ5Drce/lbJ3h3VpYlIxVzormv5RsHf4LlPdo5SMM1IDyPMi4dd25pxZlMeHVBDJ+iU9KOXlYLcObUR/Jskf6SgIZvPqeCe6UdBUq6fVych9dgzNE70fgDQha3IfAZGbHzbK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwHpVYCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwHpVYCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A791CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745468993;
	bh=DDWkP6h34eIeMvevdtIeZtcy6lk/m8phdidtbaCdyJs=;
	h=To:Subject:From:Date:From;
	b=nwHpVYCn/J2FwQhKfqtv5rfDJQtzQUWBulJ/LL9+wvWUVpBf319MmTLnDwFqj+rZJ
	 f7c2DxaXp+5Ii9xKA1gqQUIE1gQuyiWLdmubiETSIzQTI/7iZIvdkvUmjjN57hTxwx
	 gNhgRQjgocqwoSpz6wnCPqhEJYXP7wjGoJKW+ZhxUDRJ1+Of348vO7P6S4PzR0g8Aa
	 9zPMtbCLtxil4PHTewQH3mehX0GJ+XQJBd7T7r6ARm07QcvXF1bZfs9JkQNec5lIyx
	 6SyeJEuOchHNgh4G5l57dR03AJVNlq+P+DfIGCL95gUEyRFj2bjrMVaoUtFg20BtaC
	 SaOxRhxseyGaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D1CC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546899359.3572.3968231878537272728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b0431d4caa8f83280be388c822ea1387a666687bcd2aae96725dfc845d9a69
Date: Thu, 24 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745468993
