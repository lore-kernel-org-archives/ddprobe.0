Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410EB2D781B
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788156034; cv=none; b=IrAC0n/PgWH++NtEwU4Ngh1URxKN73xzTCMYf3MHzoSKwBR6060Zq8UO/T4PZNmVeh4DXGhBIYNdZA24gIBI5UGCb13qQwtbnNzCOTY2XjzvizDQR3xArgp27qeXpwd++VnGZ5gRmr7yFRdq+XGqCrgUSOiYYS6T4gtD+Sf7duY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788156034; c=relaxed/simple;
	bh=ars/6cuvcOXbEv/e1NTfzYwcStmKLkDtCX0Hlc5zpHA=;
	h=To:Subject:From:Message-Id:Date; b=Y8ziLD7LjUxKM3oobTXcLLGz+A40naYLTE9vuAppUgkZgYKTVIj12oxBTm8jMBLZDPb/i+gg8BTMuvf1VugRGycQhQ8T0oFJWTWOYHULWn7dmalWXSRWnqkia2+e60p1Jm7qEs12YUreZMLZGqYAeiQb0wJROdUsnTSbXk9w7H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQ7VSCu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQ7VSCu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0F0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788156033;
	bh=ars/6cuvcOXbEv/e1NTfzYwcStmKLkDtCX0Hlc5zpHA=;
	h=To:Subject:From:Date:From;
	b=vQ7VSCu/QepVe7rkfE9bP0BeJ8gAv9yCSFHW1DBuyIEBNZw3rUmD57+qvhcNXHXnH
	 ezZ1LBnFzJjs8K2Dm4DOoXu0ocWTJAsebJArMpwOByhNXVZrnrLnuZ/qfHBqwvtm79
	 Gv8sLqURlZ+Y9/qeR9ZbvHvBl3XmcVcK7SzeeQRRV867VQFw/RMR309zukMLrog3a6
	 siGG8Ys3laI9qW1DUBQqZ+drwsGB7AvN5VyngT128lQi5nqs+Jjq8POg7Y3TJI5x1f
	 /ydp4SfdR6qFWU+cC0IAFamou7gjMPQvMoa8nNbj6UjhMOUFPqK3wQHiH3hN8Lsqb6
	 aibqUAgthjQFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C70C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815603373.8678.6885169967327654680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bcf265f1d547d5c864e430b7c51fa2cc890dae3b3932b38db6245bc5e126dde
Date: Mon, 31 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788156033
