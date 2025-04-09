Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE698BEA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744238994; cv=none; b=gAAIkYNoUkdT4MVNguW5CSbjd9iRzts1ugcCFTCz4DsbZ3Tm8VG6RTY4kNRDp6VTh6clbRLyfa1hS1OfGOAn4/h/dVgUE7JiQuOn5mE1Di2ec7nYQZOj4skMxcIkXCRuGX3DJKZPbLXyZoUhAE6am63Z9H3LbWcULxJJnKvr6z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744238994; c=relaxed/simple;
	bh=PW5WAsdhxfXbyFDGgr6QpgR3CXVlWU49X8jpUHCBsvE=;
	h=To:Subject:From:Message-Id:Date; b=QXDbWFEckcTXwNpL34bzvYIKDcNf8lk9me2Oo4Y8JZBe7TPiK51iQ0kDLHbCY2v/qQngQtYrAA9GpcbG2oHw4TYN72wvJYeaOS0sCzt7+rFCgcYih3C1ATM+oCreqp26kc0lmkyZeGBZYSsleiL0DLu4jNCGA96PY6VmrrLgaXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCwTP6Qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCwTP6Qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA954C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744238993;
	bh=PW5WAsdhxfXbyFDGgr6QpgR3CXVlWU49X8jpUHCBsvE=;
	h=To:Subject:From:Date:From;
	b=kCwTP6QnrBN1W9ZK8JOwfWy0HH58TRlr4w3djEgQqGSv1GlRfg+PE7tj62R+P4pdF
	 ef27PZiyzRmo08TSM32GbliGcWCjOKaLgGrkw/xkYQmHT4MjwBRQ9Fity2/AyJ4zLB
	 JOW/TVnNCNSmKUUtq+NUImceHgdkYTfvxNQwQFivaKAWApztIAlVzxZ23tGY8ZahjB
	 Z96iC6GLLz9Eh2Q61/s9Z9KuG7/WXWsC7+2nsQRTYiLfByC1EcUObdnRE8AQC7LwIR
	 lBCxI4Nu2yjKFa0RjAXabpihkWZA8YOSpKSOjPIqx5TVMY6xyhF+uifhKmQFNPd+ga
	 XFnj5AjKK+dew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DB1C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423899364.7988.4854170009933754082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9dba99bc8b9bc17b6a58f104ad955706d43435279aa72a2649b57e41147f65
Date: Wed, 09 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744238993
