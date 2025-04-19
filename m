Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34796647
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745077194; cv=none; b=iCWNZ9pXzoVHb0P0NPtJtAJPPK7MZToqIynx1aQ/rw5uh4/YofRxTnSsnMMOJh3Gv6WKg198Py5aRL3/ey9V3+g9+D/3/uod+5VhDTadbno55gT1VxZcNhdc6Dhbwbj2jnceSbSTl9ut3pzs1Qq7QzGClURoNAanGsbTgxxs77s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745077194; c=relaxed/simple;
	bh=fAhX78A9FT7BEw3xkEQO7dzgjZeameA3eD/oqgeAiS0=;
	h=To:Subject:From:Message-Id:Date; b=KqmPelXDzKOB9w4mNwgg83OWEVolaHwm9bYT3ksuLh5x43FvCCSPNe1kBlywomzB5dKkyhmL2L0IA+w1tzXw+pez2FG7Cp+7DZJJDyvuAFY5i8DLvHP6XEdev9fLFA8lFuz5gFa2zGw0bqAcgbxZc3w2GcMZ9NYS3cZI/pdWUHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnT5Xvzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnT5Xvzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B0EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745077193;
	bh=fAhX78A9FT7BEw3xkEQO7dzgjZeameA3eD/oqgeAiS0=;
	h=To:Subject:From:Date:From;
	b=KnT5XvzhA0CXjigEojrAh1mtVKRZkl27TsmDbUZXPgrbbtOJjKTsL8+RNvkdXw3qF
	 pMk69cEijjsJuaiJSjlNpF51obpaPPp8M/ABlEVWkHo3f+IHwdinST5EjvSPw70bxQ
	 EB8wXA01TnlinQtmjElQl4Ppe6Mit5SV/lH27o1ka3XRw668uD0FWEVDK9wBqwkdFe
	 5pXiOIpMSdIS8arQwnSzBElhHJZAOFAz6wRuY+DOYsXOktZPgChiamiLCwBJcJnsNX
	 GHBCdwFYn5jy3q1Mbl7d8J69t7JWxKGiyyGJnfWiHeE2Md8mVytSiHomh/TNKVtXjM
	 Yd3FSvN5zr0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD0C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507719359.24590.2070526552787575476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6b96de099b67ba30655b342bc07de42ca2ca907883d6c6beaded3bfe04851e
Date: Sat, 19 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745077193
