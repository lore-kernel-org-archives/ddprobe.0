Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C749175A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782361654; cv=none; b=YhCC1tM8J2slBw9uV+zgYzbKRRVCAhedU0wIkSzaY84EiIx9RziH5GNfVcYLkSlSQYJveLjVjkQPHuIkPGPVk0M1d48rkj/xkSsX5DR5BvG7pT1/hvloYuAWQnNIRXUIBruHhsN7Cj7nAlK4LUPFuDRTzko797nxtrYKYofLaqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782361654; c=relaxed/simple;
	bh=qUZayEKKbn7hJpTJhLkIdNVW+6rmNyvu90tOj9jQJJY=;
	h=To:Subject:From:Message-Id:Date; b=quLuhwifA5YC/I+TXv+6jCHWlfJRjTIM0B+NH/mt/W1KwgmLrSTr1sDXwQhjH1TULmj0WzRZpJqcfrkI3ih1xarTJwL7BrYjM5f4rqPVe1gIYPjIY2P/4lk9xcS6kRU6Pnev7fBOY069H8ug6hBLmzGkGPvdP1iDxIkm+Bos7QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFn/+FN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFn/+FN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10DFC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782361653;
	bh=qUZayEKKbn7hJpTJhLkIdNVW+6rmNyvu90tOj9jQJJY=;
	h=To:Subject:From:Date:From;
	b=jFn/+FN8djhItrAgdTRUUBqeUNYJXCjSgmsJLrU+lqfcMRwn7SwPF6NuFLCBiJLa/
	 DOFqo+4wAB2ciTPZxh0d0ofK3AhES9LdUR3TWr83eKOIT2icRxMOY4mK7IJ9MZhlUO
	 BKSeGkgzixlB7aUT07DzaaIWOMwis5I5PMcYSua7gbZBUX3VupXyYyVSwREgHealnX
	 6dufNl1jCHiidESBIW/KahiT4Jd3JBwEjWfF/AcCkPi5PYHYWZ9A3tBluQiGqrJMtM
	 N1UVM8hKSpHk1zKGBjRMpzlmFuIHH36CmAXTErMi3yX+/+17kqVj8BDkJjf0Bw+JSM
	 Ao122A4KcLuCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE271CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236165369.18824.41960330946502333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfb6d066b988d3af248ba33635b1ef9b25da4759e24c298f71e23d0ee14192f
Date: Thu, 25 Jun 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782361653
