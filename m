Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857AB531AF3
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792082434; cv=none; b=S4MMbzU9cYt3Ar5+idUd6qdtXVp5TtdWSPyrE2EyLZhFUK6Hq7pa/40NL6vfhod6bLILeZf8ssQn2jTIHxvpOnRtZhuqmKdjLjXosdAmL0pHKuwhamQKiZSHqGOpOrah6zao2XVWf8zFBITOkL5A5jFlxJTNART0rlS6GHxipgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792082434; c=relaxed/simple;
	bh=ktsXcieT9Fkl9EheA/lCHXs5u+bT6U+mFShcU+1XHBY=;
	h=To:Subject:From:Message-Id:Date; b=nA5U3i7eNdIYA8FsCZovq6FzS/AsiC+FpD6rWMYMw8wTiNIfxayiM0uVq6noRJHP3Y81lIjzM31tTi1WJM8+WYIVD79Vm5NrIykaYWb7+FWn5UNM4oaYj9WoSHjatKBcQpgAHzN9PsZaZN+pS/frACqUwnm21l8Jx2HNV1T5Afs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5x8GXp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5x8GXp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD28C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792082433;
	bh=ktsXcieT9Fkl9EheA/lCHXs5u+bT6U+mFShcU+1XHBY=;
	h=To:Subject:From:Date:From;
	b=G5x8GXp8vAXEbKm2oZMn2NrykjcWU4dzXXMjoeYWhF1IUNL2nO959KRQvZMrbg5/E
	 0AgGIbA8pF4Zv6LrMyJmo30eREhcKjWYCf3BGotXQDR3yt2NSgoFsDZGjjEMjqKOE5
	 XcGPY/RlEd7yhXA/r9qHVkmOVaxOMWUgpGWQLMFCBZD4m+i9kWZQ+uDDs4PJKOt9gr
	 OBx+Slcxgc6tsQ63FwOeHe1jWpGNU8SWzqeMDgwsIWQU1VrSfVNnTiAanEnLsvP6/y
	 +BCwPCEQMWEDPcpjYoqAfUDUWzznQ+Vw0+LAnfapM9flo12dZT6QtgNMiHIr2XHGP9
	 yo7Mvv0JCBW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981ECC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208243368.15311.18087811460006163948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4c2270f87e6a9f67fb31c503c1f43cc7c92a129a81c1d5147da07b1e2096f0
Date: Thu, 15 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792082433
