Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E81325A2B5
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774458894; cv=none; b=VX/l1OG0+2SFUn2qj0W3De9mTuT9Obx0AJwkLzeg/QaI2ZvL/Mn3/jpp6ALaFoyq+PnyItuPH93eebSOOchCc2kfdCzzc1/nGlgcsc4/Q/m/qoByo3jSleWVMNL94OAL4aXNljbdHEyYh1PuDNgY6mTIuvgXZnTmUb9B/mu/AJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774458894; c=relaxed/simple;
	bh=hPGHj6syWPBN3zBYlH/8I3j2Knk7D9ICHF9ChDKfQhU=;
	h=To:Subject:From:Message-Id:Date; b=bLg76UNUh2U3qtbmut2oxFOo/dHgIldFrM9EUx8kOn5sxbXo4uc3g5b47so+2K1iuRxI2Aa6TuBvYENx47jSOYqMKD0xvVAjTvC/BYnW1UZ2FXQEAM5vc5aj+6zR6BHm8Io3Vt9yrcTyUFAPwA4jjHtyzd7qI5153BZi67vC0no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdyastmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdyastmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774458893;
	bh=hPGHj6syWPBN3zBYlH/8I3j2Knk7D9ICHF9ChDKfQhU=;
	h=To:Subject:From:Date:From;
	b=mdyastmoUDxeh6cEG0YLYBDSeZHneTtRKGPpyFlc+123akZyBftYLyv4vBO9TK5yh
	 8YczPHHtjmLR8Kq26bsAA8yoBH8+0fzkyPLhJd3PLOHi6bLy+dGaIwNMXa6386f5tY
	 E0YdH459rNoUQWjynomQTlcYVC78A0Sp9HysR16kierAl0WHcnSE67PLP+XsHUa5p2
	 wv40/dpwlLBRoDsho6aRrhciiBWsyT4VhJjR7BAACHrWcDcxnx8iNHHb0JPwQR/7Lb
	 FDJl5+VitsFQ/D+7mLXol2I5oik38FJv0W964crQlb/S4Owh7bV2axliJ3QUIYOezG
	 fNxZ7JqbMndeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FE7109C049
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445889359.29283.12826299096271473321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081f3c18ec120d6c8827c17624b36ebf2ddc5b7d2532c6424a8034c4c7472149
Date: Wed, 25 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774458893
