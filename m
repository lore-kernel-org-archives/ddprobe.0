Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2867C314A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769161436; cv=none; b=RH/Rqo7LlvtIGNDBJSdlct+6Ar0wVyy5RQkB48lk9DIPX/TKRp3Y0OJXhlfGrxkSfe8tftk/lwSnwY8j5BaUeUm7QkzAHQBfEMLPr6IHVjO2WpXBwC3wiFqQuwIIvN+UMEsRyellzugs2/r9fd4X1W1hRqw/1OsUJmDF53anFYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769161436; c=relaxed/simple;
	bh=lmVXLbo9hiLIstWLWe9wZuhTFyAggixysbAbQUhcW34=;
	h=To:Subject:From:Message-Id:Date; b=qiwAqCRavxhXBdfA9yvLgHOj0JxxgVittqJa1KNDDim9f9CbWRWXSLWOShPUkqKIjhC6LxyMi8Wj9Xt2LAxm44/CaUgWC2b8RQTcIVK+LYJeGnboMbHU4q6cX1c1+wgmy27WKlVfKV/NjvZ2zgJT2xGAxUl+dk30mCXvNiuiQGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTpSUL2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTpSUL2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEF0C19422
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769161433;
	bh=lmVXLbo9hiLIstWLWe9wZuhTFyAggixysbAbQUhcW34=;
	h=To:Subject:From:Date:From;
	b=XTpSUL2Rhu02MXq/A5F5VDMsea6WnaO3WzZjwHZgt/52afd9kc0goaR19VZjiPQJp
	 TImjpJ5CZzKa8CKfzhLcNp1xRdVfnmq8wIxZEqwAyXXqvO2W+EVIb1R2yErX5uJYSj
	 MLG4HUhFeFdA9K25CkDx8xD3LTB9IG4eS7ZDUJXenqAdq/G75RfzKjzRYyaayzJzZZ
	 bBlq7ivQ4G88tj3u5AjfOdlraIUhCvu5QO3jtK9vnBGdv6l3r61AMEAjWsLlPpaqcc
	 06wUDeddp0HDfurUBo04bDOABNju+OIFO8r/IKw4k4WknWm+YRclbSaz0sZsO8QM64
	 J0eP5te8DK9ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90149D72365
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916143358.12977.11009759921599150805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1bd4be5e180b61435583136151305f904612ae69dac6dee2e2652edc136e9e3
Date: Fri, 23 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769161433
