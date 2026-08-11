Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4992BCF4C
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786432236; cv=none; b=Xj/Nu2oxM5ZUTcu7TzNP3GCQgQkHCtohXO8229NwTVGzHaL3IVdtHx6TEwwEJZ8fQDJluRNC3stDpg94NM82zQGsyZlNCY0p4pBMKI8N7OqvfZyzGxKinrHtB+whKnE5JcyNeeS4tsu+jjjCu4mKpNk0mBPxbF0wN9baRp3AjsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786432236; c=relaxed/simple;
	bh=WebrBp3pyM8Ov8Z8oJGvicxfJPvuUEiAtm5zJtNch58=;
	h=To:Subject:From:Message-Id:Date; b=HWikLXmXZWM8kwEXCu+VbZ8rYp1/ov3ozyEM7YlduSEYgvSfr2knxpja0Ql4BbS+eQGRTNBZbFyhNYuVcyiPL0mQAFHq9Yf1tn13iPQkNos1hGgI6SPdUgEfCCT/TuqI6eJva6wjE95iOZYK8JtIgfvskN9e4rS8fdiMEwo1xvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxCGrOUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxCGrOUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD99C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786432233;
	bh=WebrBp3pyM8Ov8Z8oJGvicxfJPvuUEiAtm5zJtNch58=;
	h=To:Subject:From:Date:From;
	b=VxCGrOUEPVM0weTgNEgQ5eO2aP+lKYfY3VYzTx3iDg1GINTJoBweopsCKdu572ASK
	 Q9YfCztj0ydeKeeQkbSQaiB3fOBxkEfx9tdD2q5pXqubWHZQ50JHt4k8UZlK7iAdee
	 x7htiaB3wCl8gkypXOIP+Zo1Un5TmJHjh/HlxZKSdH2G0soVzmeP9289DEhSEbgMWy
	 tznw3CYPr/Og0Yr59T28Msig4eDt9TcCk0tU/URnrKKN7KN+t/9eKaqv6g1j5wU8yH
	 QoNOVVwXDrmm79rCQeHLUrSub2hSMO5gxEwg1OH1YWTO+nybXobJ40ctT1+xg9pa+Q
	 NMmA/qFkrFYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8491C5B569
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643223368.28227.12412853592060575864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773760995d676a25a3fe515a58528ee042b3e87de05c26e6016b0988e306e5b5
Date: Tue, 11 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786432233
