Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8A0346E56
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775138734; cv=none; b=KfdIvXufub058g5HlHBewXAVccgTQQRr5bidUJxNzEBUP6WFZwJ2ILv+SyQbjqJSYn2KjgLTxLuy4ZU3c+7ldRCPz9tueSvYILPEmG1pCwpWAaEXzntC5mi5GkxPUrdbbN+GO/GspaKPPZymcjctbzoauhHVomBQuNaOhuSXsGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775138734; c=relaxed/simple;
	bh=u5+a7jZ6g0nhqz1GP2tKifSDazKKVdA9cmlNf5xYrAw=;
	h=To:Subject:From:Message-Id:Date; b=ICYU9SJto2C1YDDll5ldCmcC8jzo1IofyGvSZl4ksx0kcDWRY6wPTgC8uBoXuXTglk2lphieXsRDxDImRF306UxDU8mWwKsMGEg8cq06xn8POb1K9fle/ALZmtHJNHXhbUXhkm1Ug7kfhvbA6XlAcEMC/fuGFJrlsuE3vJZF1mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5J6t3jK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5J6t3jK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F3BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775138733;
	bh=u5+a7jZ6g0nhqz1GP2tKifSDazKKVdA9cmlNf5xYrAw=;
	h=To:Subject:From:Date:From;
	b=C5J6t3jKYnPThibA1e53D5nphsYwAs6erpxLZVzA8ydpvnuN4GcLJk0He8xYcogGV
	 aNlgE2zkbflTAX2U/JPxE2Pn8fqEVbGFIMVLfEdZ44scUOH1clXXmz+vK6k7bJ3ijd
	 CakyIS/R5L7iv+ptBNoojfp/5jsjVtJXFtfC41PcocaB6vfe7ktspxc50YioydoO/j
	 qphkIyvD28tTFnshS/tYBHBd83jGtLZSvozcHtDlf7Yhw1Pgs3bw+kf32JLCUMTF2/
	 1FAvf+Lz/w/iLFJbwG5AZdt1cmxPGMbwuRNNBGL11WPwF6k4DIolYXmHBWOJPon2p6
	 Rx/oBt9fz14qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA77D3942D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513873370.32396.18185481368444722019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c599ade0605b02e1765f058ec44f86aeb1b8d1cd54d73cb8ad2549aadc87097e
Date: Thu, 02 Apr 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775138733
