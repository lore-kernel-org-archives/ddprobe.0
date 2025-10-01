Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1FC296BBD
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759337994; cv=none; b=BhB+t0fcZewXJ+N0sh1gN5GkwvqmRMWPlbGX9jjZdwI7uYwm0glx28iYHNqh/2sWZcQj0Ajra5c/oQijAS3gjA9TmqI8BEy4w7qM+C33mu0se/6MiBMj1+OJAHE/WHZptxSrociWoZucew/CHE7HxcS9XaZtwiNYxZJnG9R/M0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759337994; c=relaxed/simple;
	bh=h4qzf8zyv3ggODpsl2BvTkRoTa0rlsHq2QOZRIPSikA=;
	h=To:Subject:From:Message-Id:Date; b=PfnOpTa1Kkusu/iQ+kGWwVzRj5H0rkLVwmvctlojGsN/T9bwYcyCL6N3J8uh5vPmb+1GlEnr2q+62PtLNIhSqqkBegEBCY/Z+akGR/sWWdj0fcUxM6/MYLXQvkJg3Aa3h7TFrepS6t4l/pT60MlFiR+unBJMgqTzDKfJaI0P4Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zw4MJwGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zw4MJwGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759337993;
	bh=h4qzf8zyv3ggODpsl2BvTkRoTa0rlsHq2QOZRIPSikA=;
	h=To:Subject:From:Date:From;
	b=Zw4MJwGB70mJtgNeAxwdWCDHjhiSueVqYU/VN1K6jTwXu5S+cct8LKFBE3nzmA4t2
	 a17w97wOvU8cED4qdMZF4hAOI8PE3SoqhqZxVC6TI3csPMlv3Gy691HPJN5hLfL2bQ
	 gP4cPONXlMDMcbqbw3B7tsqmEqajeBRxcRUxa3it0Sc+qPcIPAJiCjxafCQtnqmP2b
	 DEym1E5XEIWZsPHqdKxX9De1RnOV5WBktl/4ySjRlhWg5HugTJC2u8XUjK6egbHU5N
	 Aga8KG/Kx5/PpfvSkkaCEo+YPT7N6PQBML6at9rQAnY84waLGRCQu7lY0GuSbv7Oqb
	 zmBwrGzWznYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89DCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933799358.14447.1669173925409473078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb0fbc23b08f80905c4dca46ad7bc023d46ccadd84105d5895b80c35d6ed6c5
Date: Wed, 01 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759337993
