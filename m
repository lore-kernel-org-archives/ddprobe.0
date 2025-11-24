Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0D512FF69
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763977314; cv=none; b=VAZwJnIQ3aPuoB+D3FSHtFky2uKcmsWz89HLu3XZ5q8rNKRFqwzmCZH7LgOxEFfOAoJoEKT3NqOACBJjvTo+ZUGqsB1E9j9YTnh1x5RS8c55uY9ieRdITBMWPnDz7y8aD8NPSjZt7UoXlEREnJzZZJcSHPHbpBZSmSCiXDXgrD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763977314; c=relaxed/simple;
	bh=a11UZlBjG94WzkElKwcEOPyNSOeNfjpEmZkLRVfiCGU=;
	h=To:Subject:From:Message-Id:Date; b=X2bFOYjwcg2S+FkvyQ5HojSODC8BZWj1BrXsNzuXv83UVA9lQ1BkFrDHPhoTuuar8OhvZpg3MB6yZ4mTezs2IvGoWjHo8gefX1CtDz1HvJT8FheZ2x5B787R9j5PJ/xu9sa/k5WofAAnzJhZOcfFobiF5obgGl+k7JsQ7cZeB3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJ7FRhON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJ7FRhON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C7FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763977313;
	bh=a11UZlBjG94WzkElKwcEOPyNSOeNfjpEmZkLRVfiCGU=;
	h=To:Subject:From:Date:From;
	b=ZJ7FRhONh5i5MCVPcuFUq+evY6ERphg7xwPuiZZg+8fpWKywnvnQ+9wXK5prvvwh0
	 clSW076d9wirZ8F4juR897NebhVc7QTf1fppLGUKpKZTUKBYMygQWt9r6rSmX7Y6ps
	 jzEPfDqA/1e6eVufvrYbVf/0AETtXCqGcIHE/2CbqNoDdSaW5qGhuugHdgiVdn64ZO
	 kkv5iw/fG6ucKeBH7uz4ifxIzc8FGoD2z63t/Svo+MiOTxsH9+e0OJ8CpojGNGZta0
	 DDETpSksBQJL43Z1yrUI+Ai6zLL8mK3TLFfFeDnJsB425FMfDMfegYqfHh/UNvJRzJ
	 0SdB4FlGF9+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1DCFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397731358.8330.4625331359278854726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04aff8f335581a0d163efec67e17303f25a0c73f74d11b55563302244e98634e
Date: Mon, 24 Nov 2025 09:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763977313
