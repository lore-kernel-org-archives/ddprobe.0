Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F04C2BB02
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716980663; cv=none; b=L+s93ps727Mygd9T40brYgwpK0rAiP87ab68MMgukw1ShczCjePaMq2/BC+Oj8Z9KnzDdSXxGq361aUwgQbWJ9aLYfUR0QNAdjDctAbPgQZdjAvf5xSlZzBNkEHN+ZieofGR5z/0Vn0VX+YZZpY30VTt6o/rJTQly7mENfaRMqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716980663; c=relaxed/simple;
	bh=b95zE0rcEcet5nsoBj6ttHqvC3T3vmPlPQRly/J+zHA=;
	h=To:Subject:From:Message-Id:Date; b=VSzACUYPyJk2Ypqcmeua5NqvLILIkMPVsxrJtA5i2lc5eOJ+6yiasfxU3q4aUXkC4srSGQ0sU91TL4ealwM15NV9PJ0AXk3LJUYwr+j5X++bgEpSrl3giM+fjcmJkI6tJUIq4Iqh4Y/4KQkMFlhDCCqSL92nw5hviINn/Xl+9ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhZWHYAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhZWHYAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38FAC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716980662;
	bh=b95zE0rcEcet5nsoBj6ttHqvC3T3vmPlPQRly/J+zHA=;
	h=To:Subject:From:Date:From;
	b=MhZWHYACaRRvWA+XZMmHdwebzfQc+YAQWAfAUMFt/+2wKRaoKsGPKlT720g62h7Fd
	 +AHdJZ6nGa+U1D0ymrPnIStoapKA/5BOrB8yjSlhFMqeNpXkgkGD6zF7CR4dBYmQGk
	 6wfYgUuzUiLOKFicpMoUcJuXnbSMp/UfYuZAeBPvH19kQnYTg1SEeg/t3KaSkoNIX4
	 72tQEujUw7gO8P/mrQBCrZqVs+Y3o0VMQYl2CRqI8++/92WNRrmfUpC7/pmNHB9P/N
	 zIOtkWGhsCuIMUABZQBEjBAkmXmssUjsQySeVgImpbkfD8Wj3C4wc/zUzZxsQmZ5O0
	 y0TcD1oCwY5MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70DFC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698066280.26469.11182233298667725115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce897cb67799ee317399bce68a3370f271e2159def72d605771c7e798090898b
Date: Wed, 29 May 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716980662
