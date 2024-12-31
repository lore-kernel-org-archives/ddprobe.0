Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA2187561
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735631754; cv=none; b=hvev0rDrn62lp4FVYZujrp9djWZMVIj6KNY8v0+qF9aBGIMmgiLo+ER7wftVXyOX6WbkojYsoOb4vmOnXga0E9eUNmElgtgM7CzaUs1JN3lv6ijvi9OadW8HyDz/ZjdBPL7WgbZ4DypQvtix4hEBHhKUd9oZOUDe6NJ18ZFGXhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735631754; c=relaxed/simple;
	bh=g3iYk6efaPVfEIZlvC7o7zuKS+Vb9vYWsU5Ny2HqPNI=;
	h=To:Subject:From:Message-Id:Date; b=nYzTLdjvqEjd2WgA9fwamFgjOeWWdKyp5lePkXs1TDEuXHiJmaEIMIZsffbBDgQhrjicUdbSganr55zPEId8uqRpEmQMBa7FTLKSM0lxnDgoZXHJ7rrxDSmWM9D3IdhDHYGb5T2l8J9QJ3FIyWWzzADXoI/2krGbulFvkvNjZWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4XDTUwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4XDTUwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39E3C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735631753;
	bh=g3iYk6efaPVfEIZlvC7o7zuKS+Vb9vYWsU5Ny2HqPNI=;
	h=To:Subject:From:Date:From;
	b=b4XDTUwz02mxeV0nVaXE8khHf2kFCNAByqIoz2nxOqgjko3CmLbM+dPBAYwC01sj2
	 L9X7JXds/PSymWWTPqZqRDk/jcgLj31hiw4oNbk9QsZdswNaTUR6cvfpTYw3wHlxEz
	 PZT951w1Ax6rfhKmMcyOViPbonr/wY+8M8xWDOY9QxnS7wfx2cuo0RM9gsXmhoITdt
	 uPwIQuXmt6TqcwMjs60kNLsoDHIFRqlkTt3oweCK1WiKZlw4RQL6eyiTn3vimcUwtC
	 bTbApXfC2giE6Alg8+pAWutmlV6dFezYC/3L2+bwv3xh7SOlPuFZaoYamhGTOLrcxS
	 q3JSYwyfiQBng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B75FE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563175359.27472.5267387362540806838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57542c77ddfe85edefbc47d510304b4dfd8b59978b1a838c0a6b96176290418b
Date: Tue, 31 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735631753
