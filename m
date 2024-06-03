Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF6137C4A
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717439123; cv=none; b=RSq8F0JpgO8Fl+0ViLZteIdbBrbHS3uPrDXjxO3PstbjdrTDxlCR8nD0a28GCPSXU54R4T0ecjniy6j1M9Ujd5xRJxx9mYy4AT+HbydczML0YK4ZLSrMjKBqCkfDW8PaFCB/KenR0K2bevv8OXhM4lTkhe/97G4sMynKjx3Hoy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717439123; c=relaxed/simple;
	bh=ZmTxFolpSoI9x5iMViwWuVgHH67E8T57XuRrU4gFzLI=;
	h=To:Subject:From:Message-Id:Date; b=Z7YDI5R0qtEPjz6jDrkzsa6TQFY8iRe3euHIubf8T0wyyR9TdtbDdP3nlUeKX6cJixG0JrdUdYsSqOep2tbPMMe8nL8gQ1kH9AkLwn2lQ0kuRCUWLE7wMmYaC7NMVzJ5Q+SpMdzDapdgTr8ZeTcmoUzIVuA9vPJnnqyqPRZfSVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7D+IVtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7D+IVtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87CEC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717439122;
	bh=ZmTxFolpSoI9x5iMViwWuVgHH67E8T57XuRrU4gFzLI=;
	h=To:Subject:From:Date:From;
	b=i7D+IVtrcWGj0fWQDH1LXXlenU2E8sH+N6Ib22MnsKHN3l/MpkHrKrN/Lj/Ip/X2X
	 QSkXDu3ickb0Yl7CO26hKmr53ozXX27rd2UHelOhsuY2v4GZHSqdM23Mo0nIKtmg7V
	 sflIlxrD/8PK8j6C+Gmi0hlabMMXbDBUoM5BnK8UallEsPDGgGN6mTVROfiBzhrD/A
	 rSTtEiOomxOMrlHTbpUuWm0OUcpmLeQLj+mLahUb7Jqr01z1YW4v/tkrYsrDHMjgzY
	 URb86FpYFRk+u+01E7et/xWi2BaG+4rU1gYAdryOhf1a98/vbuCM5lW582hLB9bOxG
	 pW+55IkUBB7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14BDC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743912277.17428.9584332466822383353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe8c8bfc628dcd467f24453446d3ebd3f8f5b6e50bf233ad90f0c092d922195
Date: Mon, 03 Jun 2024 18:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717439122
