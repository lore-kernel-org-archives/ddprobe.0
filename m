Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD4921B9FD
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762483794; cv=none; b=dLFRP7h//1i0TVLPjNBtqR6wEzzSbWSM7uzIRFWMoNUii/4Y91lTmZFRvPD16JkSC0NjzqaK/OI3Z8aijZEx/BYv83hXX35SkWckFsAzZNeCf1/gtS8lKNHkWQX/A/fIcHUukC2sxUZqv6HhZu8NWT64xtRM8nr1n0OUq4ZUPtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762483794; c=relaxed/simple;
	bh=LFCy4fUFccu/cQXMrNsivXE+fLwgfg6UTHkeZnXELbI=;
	h=To:Subject:From:Message-Id:Date; b=itHa9bXorxqTBtcJ+3Vf05ZQYBVy6CLEhmiG0AggNCkiOcU8CeeE5NVNRfKFWvMYRmExHcndK7M/IbI9o6bLkZqJR4n3ANgiVKMvYE9QGji5vQIOqCnMUDPpr0hauJlXtQPFiySLj1TCZ05eGTHa8aZDw7A2tPF5rp1rFxNioh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXfkhqR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXfkhqR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A308C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762483793;
	bh=LFCy4fUFccu/cQXMrNsivXE+fLwgfg6UTHkeZnXELbI=;
	h=To:Subject:From:Date:From;
	b=cXfkhqR6v3tcLM/IhkAxM5hWwd+XhCIxfvKvwLmWmRbIphQQx5wOYJL++kBwu37r4
	 /O+L1D+lAhjUqy5kJOtg+WXlzRnP1s0Hh4UbcMO6tpg9fRplJUT8dbFOA2TrynUfaH
	 coD0YzZJ7Qwh09Hv04QbUJPfAX7Pn8kftlpDEBgUaJifjWPsrgQCdplnrMrLCrdf2n
	 +OZYwcfV/3lJ9QFxRmIHADG6cmINPcFlslqBJWR7D5aHSzliQU8UYu07m2kYIzfD1I
	 h3FM2XxbLVVddxZ9tdC6IaNPEMoQlXpziKW38sUQ87pktVtTr0lhvbxrO39fY7E3Iu
	 Rul8GS73zgMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F863CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248379357.22347.1099295245958448202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e7f35d7b2fdf3a81e1e149f7e19582730252c28b55e15f5c923c9549e7e682
Date: Fri, 07 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762483793
