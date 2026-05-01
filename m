Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118CB396B98
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777647454; cv=none; b=HaiVJa7Y25hzclXXvFaZBsh6l44P57gBESzv+UIJYRm4KTg77Klu4KPF6/jjiqEFQaQRXaXFpPDdV2BsOT4tFBTuNzj9ur7n4GTkhRLT0po+cOYeTzPP5Rh6MjUWrNBezIiSg3Hn33gEQHEkT6SgUecVck0FS22Q2Uc1zacXag8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777647454; c=relaxed/simple;
	bh=uhB/8pO1ea3UPUrvZx0JVtx8zbB+4zhKeRfuPS5IqFg=;
	h=To:Subject:From:Message-Id:Date; b=GFkJREG5KVN/12JVujoU7ri4xSiJnlYIvYiNoOWGnw57PIzPRBCJe4aCuxKZzv3JIJlzuFYXXBW31HtKa55VHe8M1brR6Z8xx1Tdkq9bmCFCbRHNnrLSyji5ffVuj4u1gETj3oV+XiAXdrxWt2Ns04J0dbY3I1SjaeBsTbBlCDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeP+xVnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeP+xVnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDECFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777647453;
	bh=uhB/8pO1ea3UPUrvZx0JVtx8zbB+4zhKeRfuPS5IqFg=;
	h=To:Subject:From:Date:From;
	b=TeP+xVnfzGolbc/lIFWfkiKcmC8vM8/fQvaPgEvycIvt/QyoHPvbFuyl4YEHotT1o
	 E6AtMYYplApc/6lK3S5l3AnuDCOt4s5CBJyhzoOoJfLflivfmU75RnINhvHB94sg7P
	 ydJqeFB79/2hXKMIvsUEmL9hsR/uMs4LmvfQCK+tMlpYUVKQ+Dp9xW1lzkDz30pqKB
	 ZcToARY1fn6DL4OY26Wtq6qcvYp4tRxZyTgGtGHWUbQpjRzr6N2Khbx9rAWh93Ci5Y
	 asgTbztw9OYuL1/HTRHTl50N+AHFWLEvZTCJUEg1/daLKRe6Dtc/Rtzg2jXxR1yMst
	 jPsGWypzb+nCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC925CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764745369.10020.2589129670413577565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e09382bf5b7ae65c70866a44bcfeab89d4e895fd27cc8096c5610a44915b693
Date: Fri, 01 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777647453
