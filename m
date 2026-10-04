Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414F039DBC5
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791138634; cv=none; b=O14i3jNyX+fICDCTf7PQs91u8KarZFnsO8CfgtXNAfLTiDEwZbUdEtQC/P5rOvlWs9/HfPtkGaulUw0VegXc20wTMBtCjb87lR1b6Rr6kENt0n9acNIIBsS+Zzt9LvFAqGptLM9WPQ4m14YBm1V8Y4H/ovSR4PbSKVheeJ/aock=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791138634; c=relaxed/simple;
	bh=HrfVC2miu9HcSeKgtoa/YhId8IRlzm8Z4qr8RXTP8Cw=;
	h=To:Subject:From:Message-Id:Date; b=R+FgUXKSHW9Q4goRJ7gGYLFWODMG8nACfTv35UULjk1/fBxJ3ANhMQBgKNrLkL8dWQQ26MKT4VGUU9BG/Q49aS+JU1jMyCz36eMAupDlTd3R/KV58duljOn94TZK8k7C3Muxd8T9JpCkIy+n0bg27bftnxEt5RVx15qczYCN1C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0lPrMJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0lPrMJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D124AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791138633;
	bh=HrfVC2miu9HcSeKgtoa/YhId8IRlzm8Z4qr8RXTP8Cw=;
	h=To:Subject:From:Date:From;
	b=o0lPrMJSMX9fR3fpNjS/B437CT+YemsrpFuh5TqRiBlvRVIF6vbjj78bA75NTKeJi
	 pZFPa3wvCw3stqSwFgUr7vF/di6snbi9MiB7SgdyZBDU8q2ty6O82rdZwUeu63r9z3
	 eSwBejuFjH7yKOArQDIEuYr57g8aZExptXXeFrVQA86Od3ZNdya2x2zhOPLSE5QWkA
	 Up9Mw+ex2UbqoKcypreQhjfll2BQQcr5gXXtotLbCVHNHAndourWu9o5q9uabUhU+H
	 4JKMaeCBhI7ifaRk+WhQPCtTz5a6frm563M3gL4XrgaAKPvsf3XzA9bHnqC8BnvR1N
	 hsnb7vYvJDqRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD858CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113863368.25222.15842299818294396556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61af2016a3516bac2b8c66414f95349397667dd4e0dc673da832a89fa904b5b7
Date: Sun, 04 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791138633
