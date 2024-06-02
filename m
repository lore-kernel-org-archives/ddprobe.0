Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E131E52C
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329923; cv=none; b=NpIcjAzrgemn1ghqWeYWjszVV76g3Cm8E3O5GgGH4F1Qxt5pCAHKysbdhr3G8w/TnzBkqZ84B3L+ZwddkekF/xikbbp0VEiB9PL5bfQcpFeCnNrHFYF6X7d25Xg5aHJieH/ix7+iu3WQcQFhWp6qpH5KmyLNtwWqIUBqOuQZzFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329923; c=relaxed/simple;
	bh=MCAdSQczIZKP6yPaPiGD2BDICebrGnD6Wr8w4XTfjrw=;
	h=To:Subject:From:Message-Id:Date; b=lEf3H8YcHlnHly7tIXBoPWstqyygEGMcqCne3Wb8r0MABDr+68rVXt2de6WTJ/UM12rsoS78vA1RSD9VO37WaaFsATnlINbNJf2xFbV2NcOJuGHVeKtJV0RhDFWrFopS7CwOQ3lFISSxJuRlY2OfTCDXHy0x8LkDcBq9O8xQKB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIUeSHPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIUeSHPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E10C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717329922;
	bh=MCAdSQczIZKP6yPaPiGD2BDICebrGnD6Wr8w4XTfjrw=;
	h=To:Subject:From:Date:From;
	b=pIUeSHPrMah2Di+Xspu+BgTap7J6QTPJkEZvNPvh9kZ/BrV4pW9Y9/mjmtWcpyRzD
	 YBwvxg38O0doZcJ58bNnfhz5Qbbv6r53TvdSA8E1DJZyvCWwW7H2jCzNBTTRappog7
	 K+60B0v9JHKpeRxbRKSN3cJqVs3oFIH47v8sUYbaDD51n/riYY8mLLsrPKpeIc89aa
	 l6zMaFnhoNMjEKCGQ3Pg5mZvaA8Og6C9KisjxjMhNfAXW2QuW99Wm1ha9oMb74V3VM
	 Q7bVooGCfmXDjSvwcZf4sLgj///eU2qQadM606BnXqmHPADXPL4tBdXAg0jniDqcuL
	 lJf3TUtHVzuxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91CCC27C44
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732992281.25449.17876900221199313552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c425a2f5f3e5acda3955a6b3c052f464c9d7150260bf75bdcec7519b58c050b4
Date: Sun, 02 Jun 2024 12:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717329922
