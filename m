Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B65B22339
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770262434; cv=none; b=TV+aNshb6ovbV3isYPOO9EAgLRSuFKzpWw8WrFuoMHot+KncuxnQJsd9trDHpPmqSjFxSNdvmoCfVCQjG7e0BzSHu3CM8FwnkEzDRQBDNQYrxVeUUB3V9q74qOs0KvRAA8jfmHaVhVif51wBC6HLkQ07oh8ZhRkMBd+RDRsJbhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770262434; c=relaxed/simple;
	bh=d1SI/pstlYJUE2f3RP03wtaMPHY5s7Bw3unuebxwqwk=;
	h=To:Subject:From:Message-Id:Date; b=jWgXlRFWZCiuQiF7rJNcBEKX4T8Uwgv/hQ8Koqc2qnA5eOAKPz1lzD+rsg3JyxyOSd63fLEP+I94g5cTLUHDkI1pJgPqyVGIyM+Zgzx1lYpjqpbl28A4OyKiVL9Kj+rRxsihN86midAKdldQIrHpjm9a2ajqtr0ONyYGJWXaNpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2XT30Uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2XT30Uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42CCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770262433;
	bh=d1SI/pstlYJUE2f3RP03wtaMPHY5s7Bw3unuebxwqwk=;
	h=To:Subject:From:Date:From;
	b=P2XT30Ufh/XbC66OriYvzy8myI0MkKUmYouLQw9VF9k9XbMmUcdNAM+rWxi2PvZ43
	 +NBq3rG8WXjt3ZKP9VTk2wLO+vpV3rXC0k4/FmNFkXZszh5/LddBI1QPLcqK7DUudk
	 jVDmtDCyOyyTRCy68g9FxtC0sgEyJVrRC5dRYuXLZgx5sXuIi5yEUvnhVzHT1pujcx
	 8wFGc1cYOsqvR36TjkU9POesjTX6P7ExRIt3bCBX4vL+v6DhkmJBDc3tmV8Yv5gmY1
	 jxBbaZAFteqyczqNfJCewRrLWrDgT6AY7RDlwZXFbGHttQCNCmeURGUiz+amrzVwYj
	 NRSAP4iGDrVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C66EA7959
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026243358.2463.12073056239262888543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff5e3d71f5852d6954650309b4233a18dd970e23425e6e7ac3bd182ce1676cf
Date: Thu, 05 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770262433
