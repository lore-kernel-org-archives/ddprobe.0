Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5766E19F47A
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732110354; cv=none; b=JUCz0ytkGhtxUPuRixom41aWDrci1E+dx0sueETHxbu0INCdsyk+DoTcP936x1/xrIGkdHgl7Y3Z7pUFiwCctPTzvTaxqsiuJRIgiOp/4ccZKWLOsA4JTsmgp6TlnMyIUkOjzaUQROoMARmjxVHRR6DM5uEOJWFgjDjPwCyFyQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732110354; c=relaxed/simple;
	bh=NJsV5fvBlAKkEaJrxppgajEbjn9yiw9SaEZr8kqBH0Q=;
	h=To:Subject:From:Message-Id:Date; b=PJl7iir6uDoTC3/M+eAIK+K2ASWmE8uOrFOxws+9jnV8RfzK2+oiQ4/GTaqHQKX7SU85pbA/m4fx+qPNVdojc/f2QAhuSLa1totYkjiiTrmnzFu7vyVOMwvXCWxHldEVwInh47vSTK1vyrGT0vQoJVnM5XihGhwHsuBpkCyS8rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZ6NQEnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZ6NQEnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA25EC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732110353;
	bh=NJsV5fvBlAKkEaJrxppgajEbjn9yiw9SaEZr8kqBH0Q=;
	h=To:Subject:From:Date:From;
	b=QZ6NQEnUG7/MW3Ru9jMgNg7O4MH+z83JIkTNHalolBakZvVHWAcpbwAjcGwRaHaWa
	 X3nXZx3QVGp99LCvJ9PlIwi6K54cUiQnxt1vzBcX/7MqiIHo0Ka9h3Q1LYOUCo/xAN
	 Xnke90Xq2OYE6VOMdwRwxjKO2mxQj5mXdTf7NsLhpqdGWxAiGIriR750+wBkR0AJpN
	 J4GXadBH7UVrtBglB7GVCaUCBwjpFdHteHahJbW2N0X92DUTMBOiF8joV/ngt4Lt6Q
	 A/fNynoeaal9jb/T6M4Duh2+QEz62qM9zijJ/0vwNYqTeYAjmTEp2O4JDrZi6s9Utt
	 Yt8MvAhSsWa5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19C4D6393C
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173211035365.16490.6726164547911483762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57b7a99e4fa30289f764e4811570d3ed05fcce838fb1b2c29d42dbc396c9365
Date: Wed, 20 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732110353
