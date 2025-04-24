Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD3D14900B
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745535594; cv=none; b=ksi4WSyqVeY/XQsWDjTfsmcrscxyz0Hh9lNquRbN7/BcGWtJ5heMCv0S+6U34YtDSna2wczRpAEPjqBttP+Fv/deoqyueFTnN5ReLbagugyOMg+Wkc4rBzafAFpqe4c912UT5ASg5G/bO6v0W5uEP+Sw/ap093fCFdpTvsLO+RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745535594; c=relaxed/simple;
	bh=bHYzcqjqV2+0c2RQfnl9aovo9n0VbYghVs70/GoP01A=;
	h=To:Subject:From:Message-Id:Date; b=lAr8PlsZyaZrfNUNlzk2gAMJhfztYt21fRxC/uqwSCYMSvNuM+qdOpeipxgFF2VCgY/vNosaX6ba7My0UHsoRjul9MUpWWQVyBrBQzdTFEelzZUsG6HBGR3uDEmZLdLQlbnq+rUUERzFgZ0PJlz+sytWfO2Ner6Gvzcik4OtEWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0oZT5V8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0oZT5V8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE2C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745535593;
	bh=bHYzcqjqV2+0c2RQfnl9aovo9n0VbYghVs70/GoP01A=;
	h=To:Subject:From:Date:From;
	b=P0oZT5V8eBzXm1Iln5EkeLTnYkM9Qq9mOFuMUZEEi/HYGfGzTtd9oFEUzGCKPSVrk
	 3RpEnJbk7N2kpVGhJUEvlIJK35awFlxS/rGFACzbYYdttfmLa1ejMoYUrsiXkIP5U2
	 QSu/u/vWJtPtjgxZrI05iYhCbHv82yCnGWZfIOA0zFb/Xa7kfU3KjaDuUXsg8m53yM
	 31uSdaFONMuWUmRy0l6CAwZD1ZuGYQw86RpXGbu+UOT74iyRumLD3pfiN8VPr59ZGZ
	 ACmFpthrw/tUATlZ1OD4b5UlzPr/yVitKOnipDz+OdSfjHpgaERL5X6ytBQI5cBEhG
	 23MB38ARrfKyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E91AC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553559357.14633.10548658497722293078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf3e51023d214f2ceeb83bb0c1a2c2cac5a2f3069aa18c63499922542b76725
Date: Thu, 24 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745535593
