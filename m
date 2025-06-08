Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404D21465B4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749357594; cv=none; b=g4IkQ9KJDoZ4XCwxVZbm5eNDttxz2i7Cgeu1AMrDgLnKmjFBeiqRiqTFNsHJ66o1y7U8IA3WaMoq8G1baPatRd+QFV3U2kQsjWWeQnwkrUyHBmT/HFPfoITuo1jLCubFOcGcMJOJRDWRfboGCDpXanig61RiccsV0A83RQuDus0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749357594; c=relaxed/simple;
	bh=dGNAL+C0NiVyFwNCBy7nPYS64hZcerGn75Jt2pNXQs0=;
	h=To:Subject:From:Message-Id:Date; b=cPJul8r7Oo30x8thjkoSXedDTE0VfbjVL8X9vDVAAyJYMH4dPcmm4T6GjiVzD5X4z8FmQ+WHc5OgleEP2Wuq3nvudEbwy20dEIqKrXRK24jUQjtvrbBSPy7qOAK+iVe5tcB1NlA7NdP4udKis6QQLuNF7dXx9w9lCW0aJEc8BBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPY9HseS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPY9HseS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0DBC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749357593;
	bh=dGNAL+C0NiVyFwNCBy7nPYS64hZcerGn75Jt2pNXQs0=;
	h=To:Subject:From:Date:From;
	b=uPY9HseSIu3g10dRg9e4Oa7DQ8Vpj0NWLhXEvZOAZ9eMWjAHBgQ1GcjbOrtllG7zL
	 M25Z6a7TQbcBP8YMWhXt4a2x9zDSNnBqyJj+YiC1JigoAOCEW7nQR8uVEyyg7aSD9t
	 0Nv9qEwDt/PCYSStonfb11wUsq5FCslJzAiCvF81CLK+ksmK5MMMDlaw4MFrN1Zagz
	 SSIG5QgW7+VyA1lHprh1uUQyzJduTIVqvuOIVVL6vRjabQ1K3oF8ozYyEHpA2du0Ha
	 AQaZLTPV66DtHLc78+Yn/mIyOMML1g3DhhGMKoWWPi67pHobV/4KLofKDTq80+N2Kz
	 fCPQzclxh2xFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E06C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935759358.11981.8154864939043147507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9e3a86ab2ff60854e747debc9e60c40a80f43a475dc57183d9a5874c55cadf
Date: Sun, 08 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749357593
