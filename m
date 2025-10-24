Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C980274FD0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761277794; cv=none; b=qyQQD+Y5GzaVgyr2uvczAJ2Y2T/spIH4Y+g5sMm6c1gBuCFD5QHXK8HOrtnFMRSPcGKA8ULYK118ohaVMYigcoW7z6Mc/evcYtQcOdAHsV8/4YTZcUvPd1OG6FchI1QuRrZbo0bZzIdiZ+IOg51gYkzuw7nvn0S0GclEtYbubIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761277794; c=relaxed/simple;
	bh=pK7xvzYpUcSyOTbFWU1fAnH94Oo5A4J8DN48HWHIN3U=;
	h=To:Subject:From:Message-Id:Date; b=dfRcxIch9oXOHHs7OYNV+qucvW7cxud2F8h5taa4oBOGYcLixq9J8b4jzeMW9lNkqIcGhceZVJOGcqFjdUPoaFfGwygKEPnDaxXG7/lJr8sN89ciG7h/cnLOZplbcLEcvm84zHVyo9MbBhop4UpklrCzvAvFr+ahJpVVknYmgYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t28UAdKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t28UAdKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A24C4CEFF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761277793;
	bh=pK7xvzYpUcSyOTbFWU1fAnH94Oo5A4J8DN48HWHIN3U=;
	h=To:Subject:From:Date:From;
	b=t28UAdKq1H2gv13FxQ8QkVr6xcJu/HVbWqZ0tFuLt6iwbfTaERVJeD4J7nzSXjXNq
	 lrCk4tpme6e33HfOJ8skAn73MC9H6nldKobstHsJObcut7H0jeYzhyjbYCdjuNekmR
	 WNJQefjfhWv2t9rPwDjJk121pgCZwREs3zlOXuhoWiElysC9RaBGJhSyRtE9oELbIU
	 BtJU8PdK+4Om4BbqDcJbMJXOezmGbJQdynzATZI5a0NhvDlPzTfxhyHDY2GBTeTEwC
	 XNlaXgAzKjkqzBnOvRuUUqtCvhoKuJS1FkJWwOloU/f57Q1C5oLCJq7cJYwvTRPle6
	 z97nGbZ4seA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C8CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127779357.12638.16073009012708530703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737cce92a947a6e821c89d10ff71d0f70b9d198c2d96873b5de8a011a53d1b84
Date: Fri, 24 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761277793
