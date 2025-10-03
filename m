Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB3C3594F
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759513795; cv=none; b=nQjGOHyv8DGF3Y5iEj2iE0WTwiEtG4Ymqvt1f778hWVxRZWf08zyiZtYdiARy3kTCjjd1wp7IBXdp5OGHGT77Rn3t11y75+gvxfMF5GDIM0FfytwmQVVl2zUkv/7uK7UAY2FRQ3sViZQMckMOD/wYy48aS/qswUftP5slZyXAR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759513795; c=relaxed/simple;
	bh=nuf0al4uvTTJSkEgyTPqUC/D2oe8e73Z64x+U7WUDG4=;
	h=To:Subject:From:Message-Id:Date; b=CFKLWDmbdH9uvyQItiWSPbpTPgTUl9R147sVQfkawTyEggLAgQN6ZRhV7FBg3rH/NfsFrCg138wFH1U9DWW0/vKHYrK3G9zK/sJeuNsm6D/xNCTbhLv4IBsBbgxRhbBGPzf+8FeYxw/DS2vV/fD2yTj+Oxblx2yXWYfL78tBb3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEB/jP4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEB/jP4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BFFC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759513793;
	bh=nuf0al4uvTTJSkEgyTPqUC/D2oe8e73Z64x+U7WUDG4=;
	h=To:Subject:From:Date:From;
	b=cEB/jP4tXgUbv25FlAqvGlyHZ5CyKjlUe41PGssgFJfZa2VeKS5zEDiailgvCd0o/
	 Qq7B/q+MXXjPpnxwcUJ6/Tqbv87mVUfrsb4HBMIhYsacu8InMDB7qQ092Ce41zR3A6
	 3cF9F53Kh19Q+b3yUl5SBn732pfC1xOrszisx3hcxR3Y6cjnwmLImSvH4UAoS7NCVs
	 BOMLVsA4sdsGa9OHRlCpp/WOSwes5GU7Liynolcvhg1zu0GOs61sxo0nqQ7R0cxq3v
	 ZIPVnYOjPitkfeoHcQlGKdcdHUihe112DUa7bhrbLImN/B7SbbP4E9ZMDOUlse3sBq
	 tLPW+beSkjP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15ACAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951379357.23182.8430738089553414864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bc487c8eb4c79c98aef46a9f8e8059ca7d820a18e3e50870dc6f6fb828c830
Date: Fri, 03 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759513793
