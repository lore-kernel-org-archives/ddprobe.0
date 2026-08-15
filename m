Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B352AD3C
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786768234; cv=none; b=PHjMQhbn+5ifhOiGzJ3NIGDAOYKSLz/5AK9obPg2ut9aU0qHJ1Rza409sJ73g4queUIXQqsBArR3rAWEjD+OmODFEF/JTXhz01fLmevj88N2ikpm9z37NWKnkPor7f45dHi1XXTZEfzpd4BiZW7w6FxoNZmfEJdymm9/lRauj5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786768234; c=relaxed/simple;
	bh=+lWx6rhPRuoyI7Y0AWwo7LhNuTEuhOCtji7qLrxhTVM=;
	h=To:Subject:From:Message-Id:Date; b=ShiIHl04LI5fgak6qICTD9RXiUu+5Kw57FzKpDo0ZT9P8AAqyOwVJUUPPtISZxIkcNaPeYvHVfKartbEcaD/NuIXlxjsu/Xz+TpdPglMyL/npz4lovIQo0IPwzacjE7LpgbHrai4V6LmPdeqBionXllcUzPGyzwDwWDsiXXJNQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEItoI5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEItoI5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB98DC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786768233;
	bh=+lWx6rhPRuoyI7Y0AWwo7LhNuTEuhOCtji7qLrxhTVM=;
	h=To:Subject:From:Date:From;
	b=QEItoI5jHLqHng1fXe3BGNMs6p8D0ilVsiw4JrUZ20J1f7v8WSB2bIJQsSCbTKYSn
	 VWV+D2YeW4PKWg5KAkNzddNAGHk5NJzuqtnCK8t7GFPfOWwE6+wptoad2WyIpblom6
	 WQUOrq9EgZ/+TVla+kPtslIBXOb6xrUAVCh8Bq6P8FQK6C414XsAqY0mCX7otC3/dF
	 m1YRakja9x1L6mt0IK3xorC0EF7nadGO+CQwJ0mu44bc1NVU+FzZ7FR6UA1C0BWzim
	 /RdUQVbsMzGVn6ZRgcUP20OKEA34GVIxo8ocxhiuWvLpbL4uzZKY8waXPGDaZZ+8el
	 NVMRPui2kpXBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9035C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676823374.32013.15448421077461394664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bc613eaa27e5c0d4534184c2a75c40d6f272cb5a831c461d438e7d0adfb471
Date: Sat, 15 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786768233
