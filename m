Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F23282FA
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727384154; cv=none; b=lxi14kVhst6A3kATONpEWmozpCKUXPTDGhWEpbLQMOQEjsnq0zKX9QmeB3tqAShOj6tRPbMT2jyhOTf2d/mGKkhgUd0kgyp8oW7iFpQJQIFxU1MEwjZGD4zJnqGccIMBwYZ4bH2XanH9ca+gjhAS+77SJQdlCOY2DTTza+/HfFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727384154; c=relaxed/simple;
	bh=/8fedzmHeqJMPPzghZYHVQ4rk90/j4/k1GUK6ZojJGI=;
	h=To:Subject:From:Message-Id:Date; b=jeMl+bSJLiFyYVxGC4kAN7QTlOOxOzOl3pNSSvERIAEpM0DPOplClClofivfBAfXe6/j5YK79t88kULmDYaGCd0XpRMNiOKlQTY98vuZymGT/hAfYlgiFISzXU8xKVzjmLCGeOCydNdRmySyQaC0tTtA9Sw6cwdZsk80dtSOZ8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqh4cJP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqh4cJP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6108C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727384153;
	bh=/8fedzmHeqJMPPzghZYHVQ4rk90/j4/k1GUK6ZojJGI=;
	h=To:Subject:From:Date:From;
	b=Yqh4cJP/B4wiO8zp8yRxJKKOXYDr5iBTzT3isX/8Yl87W/hsg2ehHfzisimhT/WDt
	 6ZApjgPQqR1S5cMT1IL9z5RAP1tMZ6u01iUu+3BqKCBCcqVkXVhH/keNbsYSS0P9ON
	 DoXJIsIX30ljKdF3IxNV3WW4HxupshCViyBAhvfRyz2PYKAx9/zeTmWgirmxFQ1EZ6
	 PKsgHwr6Mw1gPSkm8U9l12tDj6jVzJPaofXcohcI14Xn5OoXvmibXM4/y+XpTbIuRC
	 iTCm3JMMI6rXaSA+UGjnVttQ+JAViKJQxX9jr09Pzh9aK1Nrvpsft+SAb+hhCNcsaP
	 +doCpwzFyQ43w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F2CDE03A
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172738415358.673.9547053334077023623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63514d8984435e33d65d6785330f4dff538832ff0848603417e3df4fc8201b7
Date: Thu, 26 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727384153
