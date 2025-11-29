Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3392036D4EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764455574; cv=none; b=KR5D+yczMWa6ZC05XUh5/cxOValwTouMLcTESry1dr2JSFmpts8/tI+WHVuv4oOt+xQWcrTq5G/ntcaNjVNIXtkCz/vbIAEC+W3tK1yFQXY4KPyFtpuVUp884i5Tx1pa+3BQ/UMYUfyCj1fYJgRhzCbXGIc3QWExbzrXXMXVraQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764455574; c=relaxed/simple;
	bh=ovFDrWPW3rqPaZvigcVAFPfKsaFL+MV5EjBHeI1u1Ho=;
	h=To:Subject:From:Message-Id:Date; b=edggnlLfH3sGwMEqLEhF4MwroUhj+MLmJhzjrLllvvRFFGMDrZh6JOwYPRUlx5Axb5GQ+1jyakRenD1QjxYnyZ+ITXceaQbe+R1EuieXIt+u7bIErO4eIdj8M6Y6S96OG+mU+H++PrhBJw1WmG3SBiSCju8rFG24uVgWb6KLpDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdlNRvRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdlNRvRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48A9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764455573;
	bh=ovFDrWPW3rqPaZvigcVAFPfKsaFL+MV5EjBHeI1u1Ho=;
	h=To:Subject:From:Date:From;
	b=ZdlNRvRLrWiwbuQ1qfEIRXBqhJGAbIfIiQ5UFg4EjO78btLvl+mIZteROeJkvUOkA
	 8zxiFwcy2Oe+pes4YC35PTUN0RtY7TIa1TJf96RUK6Oc0ew7GKQny6UORnvghggBGb
	 R1dCMG4NJqnL4BjGVAMItdSOt7SfpmNz+KR3kT0b1Q88XV1W9vm2u85SQVwAN692fW
	 0NnoNRzGh4ZWHyWn5I0B7FQCegN9gGswVRw1bVbLp80qKX+MtB8AAxARS6gU2FjXjt
	 AmsOqD//ulAhYWbUpuHgiPw1aAHASomB3+fpGdkP1mXPe34xXJz1LmVYpCyhSxal8g
	 2OZHA25GxF5Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F88ED116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445557361.5555.17204988823602814073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d4ca435da818bd259a085a32d5b98facc056309b795c24be0127ba16723093
Date: Sat, 29 Nov 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764455573
