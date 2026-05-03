Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A38B3081D7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777805854; cv=none; b=EuAn/+SqCD9OsdCLeSryLi+o8ZwOHd0pVZpCdezMlvTwX+Y5MVkvmWywDnEFKIlWKHlG2nfRMFJpNS75gufIF5b6oWW/g2V9oax+eWB/1Qrry4Xy/N6ItEZktLbm+gd+09CBoQyJuwl8ohQySWnP+1QVbrNSoAqv8UoLcHg1JAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777805854; c=relaxed/simple;
	bh=aFnbscH3e3ZWkrKqYn05sugvuSK0VX6JOIRa43JGUd4=;
	h=To:Subject:From:Message-Id:Date; b=C6Waf8eZz0BuUK4+Ou41o1SjXQEz+lFbo5OeRY2VsI98vKzfJfSdb98DutyEty73zjzZeMvn4LUWL249ICs3E72Zh1mx7Q5FPLRozMx+sLmqe7gY4t2kfaJKqygS+WfZqFy/GV87rrqwLxrC4tR52JqkQmsVzdpDWEghsvPV+iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtTtYm/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtTtYm/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DE7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777805853;
	bh=aFnbscH3e3ZWkrKqYn05sugvuSK0VX6JOIRa43JGUd4=;
	h=To:Subject:From:Date:From;
	b=BtTtYm/aGr5bk3Xes7ijN12Z4sUKFeBw/lddUwdKMFweN6CJuGo514TAEei58cCGK
	 tZX0UMDfaeMg5p7hBoT9tfC5V0KqroNtw/Jg2CWHCPrOp6qqZbokBuwwckmBxXtTzn
	 bWZRxQN3oP8jYIPYClfZU6eXKWYgBobgSryN+4FqjEKJFW5cWoCxr7wxKQLYd+VptU
	 6bogvVm6Wu6a/U/onx2XtktlHaBFZn4wXzQB3ChXBeB8UE9FwOKhUJs6BKEizkbVDz
	 RBK5a94GeMZ9Mn4rV987oodMxp0kwkRKcp6ZwVLcftGbGlOToRirFvtwGm6RF+WrQA
	 Vb3YpT2zmhiiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2ACD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780585369.29232.333884020514215393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f91b0e874448451c4e2ef82d4e318b60013d4bdb48e36d4a6374e05f2c16794
Date: Sun, 03 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777805853
