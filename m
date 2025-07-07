Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7432D8373
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751899194; cv=none; b=MS8hmvjdKBxu1dpAJhfLlMNYLDE+79bldAxopuV6vcN894YRPKrg8vnwGVbkCuiIX1hMnSLM6IZQ/eTpqExZRlKtDAuEa+UMcKEf4KbCS5UcokPv675i3HZo6ICQV7SwLe6CAfDnTzGVawo1WXBc2QiJ5rzuXLTbdj8Vfb/sX1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751899194; c=relaxed/simple;
	bh=ctKDOY0EVrmlXXMojSf0BXbOj3fNfDMfGGnD+ERDQJU=;
	h=To:Subject:From:Message-Id:Date; b=Z1Gm7e6ALCU3qV4Tbs4sqQrwJUZ/ExVM1jhtPcxjLhu/mBvSHkVrr4rCPLhSyhzWiJzmLOnhl90utmaSk6utp3Lx4lE3bEeaDtJT9iVUHijkqR9K0YK4Xldd+J6I9R9QhhSd5nwGkFDWd1Xf4I8mLa1NwMoq63Pq01yuvgeVZHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBOiObZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBOiObZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4543C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751899193;
	bh=ctKDOY0EVrmlXXMojSf0BXbOj3fNfDMfGGnD+ERDQJU=;
	h=To:Subject:From:Date:From;
	b=eBOiObZWYJZPeWygYLyI2QErerbvQABiT7v8ThikglAc7UYFqH4MJK7/RdYV4xQVk
	 mG/crwq1GQ1OVMri0yY6dILhROZTSlL3efhLLOko+Pv8FRM9/6zMnUy67DQKP74XsS
	 P6YOYXFRyz1wuAeZIvUJMiQ6Ls0BnPaeAsGyQ+/GVZkeTXgOlvV7SIOrfR3row9SU8
	 b5LRxTJFWdHy7chzKfL3t0PVPTb3DQrNwrZUpdp+KKHAPfSsoUF3b++zYsspqBKLr5
	 cxnASgAhZVABMDdJujKAF6qVURGLHnsWhesLznBWtgrhNUpwIKmSi/g0HHq7B7rUcz
	 Q/DOLTD0zJiag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A72C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189919359.13223.17680555047875723650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a82bf1830deb45e213fca472cbecf6ab949dc3cbc79cf96e9f557beedbd70a0
Date: Mon, 07 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751899193
