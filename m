Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428CC22F01
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744720794; cv=none; b=db2ssTgkI6tMD1Oysj2u50N8VAY/fQJswKFy0KzXiwADeW6Hed3iB7w6cGkq1ZlfwWRHR2Jx10mB+tR3OtcQoFPtVV3fOQ8ngx5CALCzukENyrAZGn83qZ+eE+ulyOIWDQ0EuiRjM4ikKADmTg5NrhdbVFGNjIhvPZenrFxg5OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744720794; c=relaxed/simple;
	bh=pkxl1qF9K/SU2yFaW5a3lvPtAFBCz5vZ5Cfr8PjFYcw=;
	h=To:Subject:From:Message-Id:Date; b=HQjuxA6W3RUT0j7rsyi0OSiuwxjlqFrXNVqGMQaNa0EhN1QTcdGSovL5gV0Igo22q8nIbb/XgKsuUzur0Fg2mNLfs5dmImJbD2yL66C8kUvA4yyuJ8GIx2cCmKtIu1/LBnn8U4ZhWWzbGfnxrbCI0AELf+LJfP4cTX10lxdnJyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfQGEwfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfQGEwfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14A7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744720793;
	bh=pkxl1qF9K/SU2yFaW5a3lvPtAFBCz5vZ5Cfr8PjFYcw=;
	h=To:Subject:From:Date:From;
	b=gfQGEwfCSk/ZUINB6ogE+nLoVP13hgZvOI6e8qlZxGFtxZLRS8mzbA7YD8FkWXjqV
	 awUfGONtVYSkfDfhz+TcS9eT43QI7R21hNy1jQhEgd4aWT5hXKi/yVkdrQtKq7VN1L
	 EPAM7zjhIgj9LLp79OH+vAteHw/FtAs9TxjMfjEQ3h9BZXyFNkYU6dxDZJq38SjdYF
	 xH2zr3Fxo3J1F3FdDmcANPH6blnPy6xLRNL2lqhSROTSaru07O+txkoYJmk/TRe8Br
	 D3VLllZkbSJ+ldy5BCCQkFrYYZZRZDaRGpoC/TxWDxy7lpQ4hoUHbW0gULu0Pgaw98
	 r+YNOqVVI9nbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241AC369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472079358.1792.13116974585488745754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203b1a09f7706bc5bb32b3674488464f890413b45c9fc84513432f788b896aa5
Date: Tue, 15 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744720793
