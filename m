Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0612B72
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721928955; cv=none; b=R/401D5ieAExDURmiHW7RJxGWlmAuozPzBUKqE9X2Cr+JT7npHB7MYFJbHjfy1iMHDwpDgqvBUW3Ml9xY6jy/xeWsRHbusV77H2qrKDkFz3/4BWDk4v/PyL2ebIEWGb405AsumN3aQTZWiE2fOITIL+5H5DYcebrq+hY36Grnjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721928955; c=relaxed/simple;
	bh=dK/F+CPoBSeMYj6h+B0cE5UQ5hd6jgUErL/wNl+IpCk=;
	h=To:Subject:From:Message-Id:Date; b=XLAL8IQ1G9a9dLvrRq7GuXGHiy/M1GjDGDBxk0akM0Ps93dvxnovzd+QipPhXjGoHFcgCzVGAerSrL7bcpW5MTQRYinvqw4bCq0CwDLk/Y0AKnLrAKuGDEqaQlG4lb58BbkPewQrFh6fPz+QSxKkIZjLmm9G8WBYp1jA74a9vwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe0MKJ/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe0MKJ/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C986EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721928954;
	bh=dK/F+CPoBSeMYj6h+B0cE5UQ5hd6jgUErL/wNl+IpCk=;
	h=To:Subject:From:Date:From;
	b=qe0MKJ/vOOwjXzTshiwpY5WttJvFXI2VRcjh92f4zvX92hH1kIE98WHSs/ki7RXd0
	 JcSe2rbjWYnM5TUe41CC7FwnbvyyAKCiWX3z2abNSnbgLnQMZzNo7cHeN8WUq0mxVJ
	 abm47sCDMXRCuZJsFoUuh7sUIziEigSYTDnDC0UvOe5MjvW+MZqZba85qWWtI9mM3V
	 KxjBjX0ROT1iVK8CdMwgrnpnlCiQpiE9b9e+r7fVz6O2ODUpyJxqocBWE9On4obatJ
	 AoQhq+K23MxBOa7OuPG0YIYZ/we6tLDdjXq+261xpt3LU3zBBqVl/1cohNm4z5JEW1
	 5nyjciHiPs9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B531DC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172192895372.10138.3651329119429531937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d67691adfceec33391352d1639de0d76e2a2bc776bb95fb8955384e91a06cb
Date: Thu, 25 Jul 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721928953
