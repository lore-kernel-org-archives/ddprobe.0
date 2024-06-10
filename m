Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585CC8248B
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718026043; cv=none; b=VWaG6eFVhxVfrxOUa7GWAQ5zV046cjgU56/EW2wU3U+wO6I9k/2bZQIZ3h/qEjcZWlwT3srf4ojrYIhuiUoEbceH9JsoDTcfZdxaADemlWyMeF9Xs0k2R4kZzLnlYPKJYm2sWWmiRR8An1T448kq8xSHsHxxIYsjqPp7S2NcTKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718026043; c=relaxed/simple;
	bh=G2+etDi1F53jzmbTJYBV7vDK9JanlnkJE6bQ+zAiYac=;
	h=To:Subject:From:Message-Id:Date; b=IXlxir/EvYvIMKjDexvsAmg51a2rxIu45yP9i2OMUcIrFWxdRQ/RoPjH2q0xJA2r30+cjJV7+REgpwbTUT7DZ5O6eUnsMDX4/8uSyouDwWFSBVMbP6sSiZAk8sKuikZkFoY9aeLTv8e8gUDy2RiUzgQ8tukjg+nJP/Rdtn3nmmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHzdeq6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHzdeq6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF17DC4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718026042;
	bh=G2+etDi1F53jzmbTJYBV7vDK9JanlnkJE6bQ+zAiYac=;
	h=To:Subject:From:Date:From;
	b=gHzdeq6gVvLUkrS0khQF5JhFZe6V0KovIbjSr8wCrZ7xkXdFzw8rAKJJLXN6PC4CY
	 D5yrgE+NCm1k8paDgoyZgN1JcoOFR0XQjIrWFUsl1mkNZB/jwZ9vMhACIBAmc6muew
	 KdPalgqMj4/UBldHdQO5S9hl1Km68Kcsxa/QYlFychCwtXzslxi6vOxs27LcFEM4Hu
	 ZIBWQcVj9bNaeumWZdN9pZm7x2pLJuDty5PsQAz5ce8YQzNMXnQD8BaQu1JsjqEQZ4
	 9vTXTCOG4jP2h8bkJSGStgZijnojv5YjwQDGokmHkrJC6Mc+szpA55StFA+wtZULty
	 BUCwggrGmN54g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA34CC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802604281.32622.5096992637467835336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd02cd8eb4eaa44a696af60f85150a4841e6b05162f780b746899f01cebd44f7
Date: Mon, 10 Jun 2024 13:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718026042
