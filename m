Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2524229D291
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789089034; cv=none; b=InPl7sPUQ98Vs2Bqsq7j9LgLBZo8qby3K+cC1edLwgL8T0z9yMZfJbaZY/rHLxG3+S629QZmvDP70IF8tk+aaYqB4hjDydkgj6NblnC/g/DpEZ2kR0rqSAH9L1tabveeo5wf8dDr07XfdGukQgucMwhb/LZjsObSiZ1HGnj+L84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789089034; c=relaxed/simple;
	bh=JpY/wx9p4mexxNc/jForNcG6pBF84by0J/IdPl0I/ZI=;
	h=To:Subject:From:Message-Id:Date; b=rS1R+NDNiXz/G6SIXKJjxgQGVFkiLO8D4jj4w5n9+jG0ef4YwvU3DD5PpXhyo/muCf2jYQQgL3kwiYTNWo6vuDvy77L89vTuk5sRBx1TdiFY+GjVER2YsFHi5+64CEjhY39e/kzl1di4g9jJZfs/E0Hah3rCTD8ffROnkhY1CiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrAztgmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrAztgmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA4EC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789089033;
	bh=JpY/wx9p4mexxNc/jForNcG6pBF84by0J/IdPl0I/ZI=;
	h=To:Subject:From:Date:From;
	b=FrAztgmP14bSvLMTRUlnCwDXR8+Y2d7AmH+PYkQASXq8O+G6V12/s7zlUUUC+FSL9
	 nB/dEQdbY6U6YVxkIdVYTyGaG85l6GiNZFgUqnvsSr4IkIx6JPRtKhtrumbWRuI+js
	 DIcAlCrWbnByzIHYda2n76oCHY27kTs8B/8yRmkq/kSTO+4MPq0TLo/qwx48YoY+qe
	 GlhwkgM195ni8jpSd3A/XQL3zZoc1eg/kSc1HVLZGDFQqR4z7QovXaToshOLWgi35P
	 PPEjdUnk6waAAGX/4cRSEHjzuYPoUOkm/EQ+ke3uTOL8T6O6EYwm4XbGBpGX8TT8rT
	 jSlv96f9jlyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8FC88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908903368.18151.16370028542461666403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d431435809745aed403d44948f0ca908594e0b96c2335ba6715b4c05fd2d4f9e
Date: Fri, 11 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789089033
