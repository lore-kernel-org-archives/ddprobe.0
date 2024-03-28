Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3370A929
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711594696; cv=none; b=Hxvy0XJctitZ5KNoQ9IvB9vb3YP9r9ouB6Z3V1N2AYdl7DHnUz5s/SSua3CcWYWDIIvkrIR07cs9bcmS8MwwbOUaPis6dPXTcr3eZaoT1u/CyrNaUXdye9iZlWjX9nTG5z2qPDw+S+oO5eRjG0C7c8mVQM5Xxb11+Z4dqbsdNn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711594696; c=relaxed/simple;
	bh=Ivqd0Mdxtoh8tdcRCn9aTbFYV03KdLyaRSYRrQcWwwg=;
	h=To:Subject:From:Message-Id:Date; b=CXKbtHwk+RTd5XW2jbknDQ00wGoWO8NAkSEYdUUpbBli8J1wck0mSTl9+IayZS3nBl3jnM0IcscfwExZur8uwrMZchKBJMFlEhBfY2+8QkVRJUPnIwN8RzrC75HxD1jahX3miUJbW1Yy3jUm3cNDe0OylGgaIuqJab26uyZEQDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBofZcyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBofZcyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EF1C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711594696;
	bh=Ivqd0Mdxtoh8tdcRCn9aTbFYV03KdLyaRSYRrQcWwwg=;
	h=To:Subject:From:Date:From;
	b=kBofZcyLCYl/G7rQuatIvLsWdCCjhjzjNH/FjXNDvoJModVB7nLLcA5xxjics7nDu
	 ifhlDMfIjCLIJtYHmt3Csyi4Mk4GFahLILorsWwtXnEXgpnYQ1Yu6ziNZVWgq6G6Tt
	 D8L1K2O9JKut+7ncBqcffOR8BHOPVyU1f+faOS5oLmwnupmPE4mt5wSyKH3vBtVSyd
	 brkP23e6+JfkxuDlw9pu8vCZjL6yXI22ZjKy48N1YDy7jPzOG5oCde/Vn/6m52bbKn
	 VybFG+NbKe82lHJ4nQwVxUIPTRpw2K7wuL1J+vW+5GN4eFYd+HeVaq6SQ29CaSW94w
	 8CPJZaZQfJf0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F38C54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171159469640.7014.5717946694660261641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9320ed579ba0a3629782f8c143d76748843e12ae3fb979b4b9f0554d55c47c
Date: Thu, 28 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711594696
