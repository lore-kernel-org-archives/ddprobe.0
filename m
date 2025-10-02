Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299D734BA4E
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759446594; cv=none; b=GHt2IAM7VRAf2kArcW++iMOG/F5yuTJbzcokw83UDnoZYW/uCPFCijeWmyZmMTRekeuTnGztiA9oQWrDe3G6XU1uJ75Uc2d5lsY9kO69Kr78g5Lk008nnEuUfWZBpBvEWU7A7amPXu5sjt2fml0HuNoBCvQJUokeB9ASQeRCRU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759446594; c=relaxed/simple;
	bh=51DzSRjd+j6Yv2/9xH7Ee+xWtS5Y0Sixtu1nLMlBE9Y=;
	h=To:Subject:From:Message-Id:Date; b=fcR8y8e/J/hhCAaZGYiQ5C3ylfD5h2uwNJ0JerZ2UsylLwAUVz4e3EanRfKSsLhzEemw6zKxGsJ1Fc3VLTxWdwQD0Cr4rAUp1+AWzYIiKYn3Ec8KjIiySD1rMaNOtS/Itf/MCivdafeTT6fFMrrB3VLJrV/dG/tt2JzK5nRgeo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJDNaNZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJDNaNZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B7C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759446593;
	bh=51DzSRjd+j6Yv2/9xH7Ee+xWtS5Y0Sixtu1nLMlBE9Y=;
	h=To:Subject:From:Date:From;
	b=jJDNaNZuYD6zT7mUOnrU/ZCuIPF81Ce8ymvjsUgKzuepexNezL4wORqeglo0Wgi4d
	 LHKb00kbXsysvCA2D9VDc/NZdt7DJ5QJKQdihiyXSkok3SgH2gdpaSyhVvpHXX6358
	 sIVpnxqcA0b010jZbj+wukURA9wVnvVH0q4Rf9a+CDLHs9GERL0zPPZZQDQlmaweGm
	 cdB3UoWl2nfm4xzkUZpxPT+O4LpUBpcirx7X1Zw+slkq59xkWqkdzrt4lhePznQM82
	 7IqG3xcRCDNKs3o0ExcdSbxkkHcuCqfjUVQQpmxAVNpgTgsMi/p6LEBxVUvxmOfutL
	 5I5kGULiXHq/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA4CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944659358.15578.3501089364781972955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac72d3ff074af968e51df0a95a8fc8ce25aa4a73b46151e4a05b7c0a78c739f2
Date: Thu, 02 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759446593
