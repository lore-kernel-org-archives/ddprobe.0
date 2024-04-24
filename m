Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E99156F5D
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 23:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714000283; cv=none; b=nqUgmMwamFo0xHhJnCsyKWFAN1XaIFKXn4lp6xCgSpPnbPorKK1eX8i23PJy6MzRDzHqVb1dnHt1UIj0QqVlK/s0nmZkUZApdkEyfj9Y2sFtIH3YAOvM+SFHnEc114xcjkmXvofLPH8UPdXNVO3d26+Hnkaqw0c8wLDtCQf4efU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714000283; c=relaxed/simple;
	bh=76FbmSQdLafkkYwK2JVSA4r/i0zIU0I9B/rUE97JeQg=;
	h=To:Subject:From:Message-Id:Date; b=QBFaRaU/82atSuCe3xcoj9p0h1WubVgaiQOigABh3my7bhjxo8p0b0I3BPVblCg69D7FjlC0S0dYORZUbgJG2TaVI77AFJGBxkALlHDpOctH2PD6YQLPpWYuXH/5HeVM7Hg0LV97029ZaFJST1TFW/LsrLTE1o9pygF1i9j45i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNseu0Gm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNseu0Gm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0636C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 23:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714000282;
	bh=76FbmSQdLafkkYwK2JVSA4r/i0zIU0I9B/rUE97JeQg=;
	h=To:Subject:From:Date:From;
	b=FNseu0GmCsWp5tWMLf0IWZwQFS+dKQMupQUPplZYY0QvQBPA5XLrWCtF5pe5vH+ZH
	 Q0NA5a2B3V6h1QJ7iecIeHt/K15utB6MSe6RycyDAkx2P0jRhLAEwJLGwbXxU1z70l
	 cvBaRH+3qYGwh+KG6izkY4WHn6fSNNrockTPK7HycIm6IMHWKMKAMpEkcQXmC81Ayk
	 YS71UfhQDVQsK4DUhflj6Z6e29bXjwsdmKV8BQbQeq4E/9WohJ+KpW6VhH1TJGa9Xh
	 Q7ihnQHoN0k41OPNqrROIm8pBy6Mo8TVSwLvw4YSIhcZUUxB57PcF4U/nPoeLqT4jB
	 nhvf6xISdj0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E81C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 23:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400028277.11843.6967718317351157960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46373a0afa11f2b62c770bd47a3ed69241c53eb4e824070cdbc4e4ebcd4ca18
Date: Wed, 24 Apr 2024 23:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714000282
