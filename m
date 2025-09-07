Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B321684AC
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757256595; cv=none; b=HGVuQhS+P3QHc2wP3iWz1cdfJK1qay5RT0EVYnfW3bmVFEb8TJfRYyBqcZ6+lk/y4bHc0hovxVaG91vnrZUOxt+gE5CKtg7mXRpUH8qHiSTP3e/mEuiE632m4aIvL5WiFfsjAcmMTioJlbwFioh0JTtwcFFlF+hKzh/PiJxkovo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757256595; c=relaxed/simple;
	bh=ftxd5wV/rSyW7Lxu9+HiIdFN+j2m4o34EbTIXnVeWt8=;
	h=To:Subject:From:Message-Id:Date; b=hjXlVgqAz/KXbfHMhxMxyvqdHyAQFoBFCYcFAvdq1oHJq4JZgUzyjhNV/lQ6KWmS6ybIL6bBcAhotEa1JUtolQzOhZLYyya0TJTY+iquzkAsPcdxHjtjOktQTKsZFvREC/2m64CsHab/VBLrLFt68IurHhh1ehoOcCUknalWQFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAQGmi3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAQGmi3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6086C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757256593;
	bh=ftxd5wV/rSyW7Lxu9+HiIdFN+j2m4o34EbTIXnVeWt8=;
	h=To:Subject:From:Date:From;
	b=GAQGmi3jPiJpuy7QNFSOphFuYHkkHDIsMkPpEzgKQ1aOarXju/eSPjg/N5GwCwFAl
	 LpXfOTRk/xfLF1u3VC/iZ+LiFJlee6fJ3qeYuWyrM7kdBBSnuE9GH9F0nzbhw4ej9s
	 zW9+ofpvnRJI/P/rMwNRHMJLrY+W9eO8PpkAY8QVLZszCjuG1xf0oC+j2V/ZqNq4wT
	 Z8dd9+OgYE1XzkmBPGfgA+Wr4BN7mDP50h/dTfAsBr9I53FlYqbZk2/rfrr1R8CvyZ
	 0PcP849Qntqt8TKq8zQR4Zb9mJKqQsRU+njjvG/F+9YObA4wkwGChpL5QUcCDjHkFO
	 p2L3yoCU9tLig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95159CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725659357.15094.10342225290317456626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ccf35c60e208c1c624688a84cf66a2348a69181bdf8abc2012b57b09d42138
Date: Sun, 07 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757256593
