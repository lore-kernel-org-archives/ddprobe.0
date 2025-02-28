Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE7E1AB52D
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740770334; cv=none; b=fEgDohoEUsRKRPAEgmGSk2Qvf+2Jkm7Xp44dW9n/YatZB0yPfCQ8Uk1Kow/U6n55jH2IHQS9vpSmZztUFysAD75WwJyaW9cpkZN1zItUy39af0lCdXro9SG03V+y1uVn2hpbLARdxbFx7kkahU5wWNnkPfV3+CLQO1H2ifFRVG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740770334; c=relaxed/simple;
	bh=gnorHqCzMHdLrxixWl0pC0awmHxsHdUJg4c7w8cIIi0=;
	h=To:Subject:From:Message-Id:Date; b=iyOiZEYAu9cFE9zxlnznjH1kienfK+v29m1gHYxnV5z9/+9vVwlUlgQ8hGKUaiQOPIOh/EaZh8lq4P+WR2PRF4mfYEjr5sZUT71rEJ2pFy6E0mMjIn6wG+4IqtHSxYnEBgyG9H68aJqOtIp1YO1V/CecnwEThvLeGGctAneC1NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufcEcOuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufcEcOuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE47FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740770333;
	bh=gnorHqCzMHdLrxixWl0pC0awmHxsHdUJg4c7w8cIIi0=;
	h=To:Subject:From:Date:From;
	b=ufcEcOuFetwr/vCEU1A3Da5N/YVuhMsn6t4ppzQwcXEeVV0E7ajB0e/9+ijPMm51H
	 IqibC6qFmey37nbT9dpLyUB6dtZxuYOjPnGgrHq9uh5fI7rKhviNxXfo4hlMuy3O0b
	 hsYFZBd9pFG5gZeCpAR/0f8YxOlOrkNfBbeSh41QgTOtNjz2y0I7mxHagwQTvrEzkA
	 6tbqUnh/GD1pV9F0J//pOewRkhTa+U9d5fBHThFLjLoz95QeFny+a/TUli6L8/Ameq
	 /G3+clqFTFln6s9qpQa3iWOznrkSilfCIKQJWuN3+l0uIX2YtJfL8o/b2on8KtBqJz
	 Rk+TRyOkyJZIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACCEC282D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077033362.23924.8858210734633932862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5c3a6e763c25a69f218c656608c8e6f4e41a0260096bb74c290c12ed7f5ab0
Date: Fri, 28 Feb 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740770333
