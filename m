Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB851D89EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738013756; cv=none; b=AoVf62vZYZ9Z932FZ0HGClqgkMV1pUZZ5mumPTSIXQMpvSmsZgC68+7rSqKorcHz4pS7ffXOeWMwcZOiwxz7tOD2xtEsWFmJkY/JJVHvUWD4DXcUlmePD+BbHL9LKS1mCx/fufJsE/Hn0O7TuKZi6+e3b6sx/bEuIEOOtGIMArc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738013756; c=relaxed/simple;
	bh=njvXDgRHZiZ4hxMTDYI1CX2I0UOU7N9iU1Lp0+Z6o0E=;
	h=To:Subject:From:Message-Id:Date; b=K/hD71LK95gdDvlHcTSPIP+OtU6v+xImcaXhe6Kjw1U+BMphpK6gagRow94FDnafRyLmQC2DBmYOYYPebFG+SzuKdVxso6EVoKqoyn4yr83KOebp5SzNs4f0+EPTjEe97QJqd1xswgmO7GT0FRlHl3uFNUZ6HpzOAmelSA1jrH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pz42abxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pz42abxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB314C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738013753;
	bh=njvXDgRHZiZ4hxMTDYI1CX2I0UOU7N9iU1Lp0+Z6o0E=;
	h=To:Subject:From:Date:From;
	b=Pz42abxPiZEYmfaZ3vogh8LhQfFBhCKCjlvk2hDf+KnZdhKBFsnmhdj34MezOFPD+
	 nihO66BW+GlpRHOuVP4ToI/ogNngE3kwN8g2ng0ny1iyx2SKMCoR9NtFYOEFwFvWTa
	 MebzIYQYuV8CxQJkIQJbmwvg13bxS0INAsPyhUSwKkh8dRQH7WHJGk8nS0+b9Rn41F
	 Zl2POZ0klbLwftLQP/nPP6J5Aks33wmDtO0ixkRVV+RwokmtirkjysQ0iAwZpVcPsG
	 HLydFBZo8gjRW1gZHpP6wVEwZTgjgXHqbnKgwOgCJVoD7XxIYcq1BdJl5PKGWwHDdX
	 2xZITEbdTjdvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6278C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801375367.1533.9802784622450762460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f1904ecf761f69667dc6d830855d553ce2bf14014ffe8e8d6f6e63d9e5e7ee
Date: Mon, 27 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738013753
