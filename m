Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3B52D2385
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772169894; cv=none; b=qqxaAsS0lx/LSvFjRzF8KOVBYUU1cbs7cN5kJq8o1eS8XTQxH8MuIquvAbkuD5k58BQyiCIcOn7wiBSDsDZGuBb+XKxzPnIFuVWVQJOmrC4DzAI7jByR/7OpSTH2ftGNnTUEk8M8kph3/1D8N2CilnZaOtf6P/OfK6L5zQK42fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772169894; c=relaxed/simple;
	bh=gbx8SdPg4loaFVoGq8cvm08WMYG46daJK2hT9qUZGQc=;
	h=To:Subject:From:Message-Id:Date; b=EmUa9Vb34pyuXI1fScG6nqhoULKqpQQq0eTn7i9qqR2mZK+g/KawgvBFIvwRPsjJt6KFheErVhPnj1z8NsPO0hdR50RZO9GOq5xbRDob6Jw3kLm7+za0PeJJ5n1zdKK4Gev/ZiE5oIbZ/tqFcCBxEid6NzOdK8MTiU4IufVUIy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqgeECrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqgeECrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF919C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772169893;
	bh=gbx8SdPg4loaFVoGq8cvm08WMYG46daJK2hT9qUZGQc=;
	h=To:Subject:From:Date:From;
	b=PqgeECrzmwbnZvPmU0eVUZO7BCPI4Witc/ZluSkrZxHBL+affwLMYppRaOBJ6+Yih
	 oD3u8hrbXS2H7mUpUmWQVw+e4pGfKSOTsJBdgSxlcZ3etXIEQb8SKSWaMJTTa3kK/O
	 NZK5jRs2V1KvwIg8W2xijsBf7nThBdKZ/hTEbG+A7N6spjQ8fMvTW0anb1DIhQHUTH
	 c+tX1qjknC/bsLyAYUXGKlGIKiw/iJmaaoabTPJR/13uiCMHw4VUlAFydeuFJlglyg
	 nz27+octQV8PE5eSTNtqz90UA9n+biPaGJq1ImBavlskr7ori4Wm+UZb0fCjr97pZv
	 w/xpDjkTpUwgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A65FD9E34
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216989358.7512.1062917583945641837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def687f08d53052a56d654d81bd6eb98a2e90557567c7d4b0ae8a85b119ace99
Date: Fri, 27 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772169893
