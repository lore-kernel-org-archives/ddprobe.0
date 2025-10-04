Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293E4219A7D
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759544994; cv=none; b=TB4pkc8r+UO5UQMszYDCW5GZHE3lnfzX+AxsPakP8otWxhPdLLu0lHwx8MauSPl70O1Y3mGCX63QOATr5wdqlgZr8b8d2vDmiqTSmUVGMq0SJAXG4vbkxofxyN98EXjBzqvzBQ9+QudBjDpcIOlIbywxIym0UL8kw80rjM0MM6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759544994; c=relaxed/simple;
	bh=yAJagqt0rd4Lg22IT34uJ3em8+b/Ozn1bxbxgkZ416Q=;
	h=To:Subject:From:Message-Id:Date; b=DGsb9ZKv/jgINBzpdS+kDf9JMC/qHWoPpiNAPD+YbCTNSjcEbOINu1Dys3q/TzqDHKn/P556t2H90Gh9GIuYks1pukltjMm1EPcphVeuHeTKCkZbsQphttr7hIn5Dm+IYgWqt0bN4WccOyTRFAnW1hCecSj2wKq338X1nysxX0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEz9RVV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEz9RVV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7343C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759544993;
	bh=yAJagqt0rd4Lg22IT34uJ3em8+b/Ozn1bxbxgkZ416Q=;
	h=To:Subject:From:Date:From;
	b=GEz9RVV5h/z7Vl4rDWHqiJJMLbHo5819BxxZRTzcPG7leLTYctLjAJV9MIBfQ29/7
	 1rhBPtXeIAPKuTOJ3RDLTBjbelaz68pVzEYmoII72mosk0t7keAMblXpQfYHmHd/wr
	 5OxRi57LlZCZW0IvGQEsCpXLXvpMKsXCibN5dls8Y9dgbTVk8vsDyjD3c1FMxA29Cv
	 u5mTduyeu4HPjLD4s6ZpheOSGZEgMN/DP5ltPeZ3xaTTxA1Z9JmtT2CFvII70ZvCPF
	 zR1TefvK3mUaEcBL2yh4VOfKI6LoK9UrSxlRdKtO2coMKdesfJAS3SBFzY+ovpzAFK
	 9eyozdRAoIQNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964DBCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954499358.1222.12842493038723815366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8786b8327b343e772d6ce235fc27c52435598ca657a1787e017c21c9c7c43b5b
Date: Sat, 04 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759544993
