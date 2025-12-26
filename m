Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3674C18E025
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766775834; cv=none; b=F1BWk/D7Rh+zt3ppGyBGCMfOeA4ptd8g9S/9EPtZMuWg0scmmJ1X/bUjMwZJP+yX5huZJjexcH2Tc4hEP2ZdAZ2tEQFZkFbCyZ2Dltz+ovsErylvYqgMsS6wnty34kMBUJIh51jerMKeWACGFenwu7I4fo0YK4XoXAM/jM0RJKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766775834; c=relaxed/simple;
	bh=3bAZvHSru0T5mjPM9erGd1Y2+L/dwQYSu03uTMJ8Hu0=;
	h=To:Subject:From:Message-Id:Date; b=TuB2nHYH1+IjFV9I8v5jPcbiek9ssiTxREx9PyIwICgQzMhMctX7t2ujembeQj2/TDv8OJ3Cc5fxDhpq43Ps6hmJMIAJBTiqF1a7PZMAlQBUqz3aFpu1clM3STfoRzNkdUWxn26oSkXrg6GujgCvUMzunonUTc2Es2aYgxKSH8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBVASdXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBVASdXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766775833;
	bh=3bAZvHSru0T5mjPM9erGd1Y2+L/dwQYSu03uTMJ8Hu0=;
	h=To:Subject:From:Date:From;
	b=pBVASdXCWhn00cNlZKFaoGyDeGIQEH7NvF4RUAThx3t0CoiqaH933EgZQuCotoqIY
	 hgcpC+UvRt7wcD8y7mYyXngh0TS8F82JqTop24EJeXCuNkgNMrNvEqKrnNhgQNux06
	 e+WOJBa8QDCJsgwH3f5V0t8vc5Ql2wDks7OxVWAKaG6f9UU+5+JVn/2Afa9hjihp3U
	 7CWv4IwnaRV0M3It01PUpv0EIFCUE/nXrstyi/XEheOharOBT9l7wy5+1mTkJx8QVG
	 i/ojQr6KYMsXy97aQB3u8OYPLaOLm51mSKdOhpnTpfLOd/dfWtFTGtEH+Sh3L/BR77
	 8DjNLy0PMF70w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9577EE8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677583358.24883.14761244740472482424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01046ed8bcb18bb07ac81d2201abfa7d825de19ac05fe8b013a8841d2bdc1255
Date: Fri, 26 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766775833
