Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BDB3CE0A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789876234; cv=none; b=ZZLEyuV/ldIETmJbSLeD7bXyMTgPj5GyhPimD/gdxifVXnImxAvr5kfaENNXDdcQZbYAP9+u79ln00V6+C2xia/BRTmeuwQp/g6ofYSAqT9SbqzaYFlMiBldRApzqeBHhTWw0PSOAQqT2I7RGFtv4SWvMzi+D58s7iakraFLSbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789876234; c=relaxed/simple;
	bh=FY3hr3368jRVB5fZQMKBnVwXPPLcL1+C6d8/a48/J+w=;
	h=To:Subject:From:Message-Id:Date; b=t2Te3roSgtoG5FnFh+AuUNu8xq7rvJHbvQs7IYaNtAF7WJ30lQ1Z0hYG6OOsReNwdCHWKv1DgRDume09tA4CKTkVlsqVTcfdARZLzfW8AE2zu1WCNrfPq3S8swRurPHku9GfJDg+QmEy1BiLdpNaPBpai5uC6d7fXYJHBAIjaT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvtqslXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvtqslXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E02C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789876233;
	bh=FY3hr3368jRVB5fZQMKBnVwXPPLcL1+C6d8/a48/J+w=;
	h=To:Subject:From:Date:From;
	b=JvtqslXYs/+pQyMHJAr+/iptwrPUYzLQ7ZWGbadzz14YiF9ZQGKznBx7hz5SrCzc1
	 EWtMurLnNcU31OIlrf7nxvCaCOcZHTwsdnzsqjGglPx6Hk/rKrHvoKMFgImIFR57oG
	 X/hQNRBOWBNU9zdC/DzTKU+/IxHpoB29NT8F1nw9qnloCCeTtSvqKcbv4JEkRQ8wX0
	 wuzSzA24eC2ngMg5TIeGkWd20y+m6m92JWWHecaDf8Vvv+c7RO5pDjmG6pK3nO6Fi9
	 hP+ptoznyI4Maxl6WyXuoogijvXqxL4F1EtptCl4aB1nnWJ/v0NyWpzF1Cvex5B7Ci
	 Xu5OjoVzaPlgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA14C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987623370.4040.14057263477759969055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1687a3fc553ced9966fa37e359e44e949487964d6b20239419a4b9e1bb41fa79
Date: Sun, 20 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789876233
