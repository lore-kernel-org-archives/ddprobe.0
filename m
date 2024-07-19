Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1358B137E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721351754; cv=none; b=Q4VyLhMmsY+IcwVaqTPnoUbRDBM9njxkGyIAbzK1xx9IKP5W1aUg3SxX5ioGYuwCdJYXjGPoU26OMToeWfpFr4okhQnXKEQPlyC6jRHNuOmcpM9iXzZJ2OqSvs8/SOo691voLKjNoTu/c5SS2q7avjgDlL5YUDiJ3cXg+h2qwQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721351754; c=relaxed/simple;
	bh=nhfwu2/zEOtUmHXkCdgCuOIbwLvg2/Z8/rHtoDQ44Rs=;
	h=To:Subject:From:Message-Id:Date; b=CE38YAjo7eUR2yN01IvQricTokqISmCzreyprK5ZfKoQrkqKq5B2f/33mELxeqo2KJ+VOMjj7Yj6vLaAxIW9eAzDR2H+0CdkP9JqDXZMa8jXGPpEKmmLi9TsfQTliirIDoopIKNoITc4IZ+Dn32EnyL6GukIoxSsA7Sb53Or8JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy73xSuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy73xSuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A7EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721351753;
	bh=nhfwu2/zEOtUmHXkCdgCuOIbwLvg2/Z8/rHtoDQ44Rs=;
	h=To:Subject:From:Date:From;
	b=Vy73xSuq1inkAhjIPruQV4BaTTV1t7H5WYlSZXwnSOM7ygFy1MzLFYfXLogqdGt3w
	 uPeoo5a7UeQR9yNKtBldbshvd+XUnupmNTL/p3nxMdLRl/IxtZjnUiAZe/j7WPu/hP
	 TO03S9+ZFcf5V9TnRG6bi7aGk5twCasgSwKIt8bJ4TBzmntGRLjlCtLNJtQtPpZkZ7
	 qlAnDOIF31+ckY/PvnJABBrSPqrMkPKbnZQsZcWpcskYFewrg0Sh01LI2IjjAYiCNT
	 t5aKVmC5RK/hIoJf6Nt1vcNFchcz2E3774QDiIEGvhBlOojrsEHDnlTAXilZZ/rM3t
	 mVMU1baZ9Kh2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9850CC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135175361.13009.13642662365605642518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573a30e79c46fe1c1ae8c03ebde4b84cce9994ac64aba691d06fa5bdd301854e
Date: Fri, 19 Jul 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721351753
