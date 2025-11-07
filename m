Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD508BEC
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762525194; cv=none; b=L4M41JSUkhR5m8OHn0j80ZoNBAwCvQa+s8phL/EwNfmy4U6u3UeIluqBKcq6oMhzWXtxBxmIlwRI/YE8QBUyaFMOSdto+CYWqWqbM25L6EEiXj3aDkCh1pbuIMe9Rt/0kqhA64P9Rgx6FLCbuLCu+Xr11Gj9TqqLxakDX6Y/gb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762525194; c=relaxed/simple;
	bh=95Z7N/Ik1ZRTRVhwlPMehoHM0npkc0o9l3RSPHfwRmU=;
	h=To:Subject:From:Message-Id:Date; b=BulqbF7jZpi2c+vd+3y093SI55x8KvNGS6adXaLZZ5Dt09ou0E3N/SXNtmBrWFbf+aO97sySZKeJE3nkAZP4CFb7HgRj6lrcHN3haTX/js7knryEl0fiYHP8b2HtKkY1cPnxnV1EUqRhLxc+qKlf5hf9LL/DlauBCTzUqw3RfUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvgG/5MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvgG/5MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C9EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762525193;
	bh=95Z7N/Ik1ZRTRVhwlPMehoHM0npkc0o9l3RSPHfwRmU=;
	h=To:Subject:From:Date:From;
	b=LvgG/5MX3Pz9/E/AgaKirg02RcmmJX3guJrKS3GR9LdiRXxPfGWp7LxDtEaEJgI+R
	 +DEz+kT01osBHBuyNTEHTHYAAM5WYp2IpwUKrm6S56Yd88emNdU51ghbwGsq4NVJ2i
	 c98oOLw3Ujd1ESU2JL0g68Zgdd5fdxTxmgF3LC4QrFMJ8cJU8vLCcfx47sS6QLAa8W
	 TEtWS/WSalx/axrz2GkfWkq0PGENTMdSNUF6S+CA5nRyAVX9o0TAt0tH8AqGohEB2w
	 K7l/v8xafm3sLCobfI6k08AQVCEOc6QxAnyNXWakcu4s5Nd7Wx9ZaKlt1w9ZI8ebe3
	 6pxJQYY8xbCWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED90CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252519357.19059.10888244143272729852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfda9f8ffe12ab0c0a5f16fbbe4bc0b91c4cb5c5713548f735513d4af0596e0e
Date: Fri, 07 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762525193
