Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD624A01
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759080594; cv=none; b=Q+hSXvssHgNnQFie04yR7YzZjHqX0B9GUsuKeCfvLlwhXFyTfUlDbY9qw7NzeTk+cpw12smbO0PtU9cfcZ5Vby8MhCRXyMl1xStcqkgTQPyLx6+4Jn4NhsWWGjt/m1WC9u2bKih+kIRwCE+aLtlrT7KIESNpaDdFNyjwHrBDjoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759080594; c=relaxed/simple;
	bh=sGOTA8U8d3RmEQL+M66Zp81FDz/XPJ4qtfT/McgjFO4=;
	h=To:Subject:From:Message-Id:Date; b=PGasYyA6GhP+W+F8cj4EIRqfndC2XdeouJcWZgR+nZ8sIcZJ0hP1ILvULRpnGY/5C6l2zhJjCXJrIfdNjc/fOV8BDESpdWXdAYOPuc6J8Fw+ZyvK4q+EMWNn6+GTJ48Ea8P3w2oG4xkal7dYZIvbOzmWPzfX8NsrxzfW927g2RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubfIijdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubfIijdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6745C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759080593;
	bh=sGOTA8U8d3RmEQL+M66Zp81FDz/XPJ4qtfT/McgjFO4=;
	h=To:Subject:From:Date:From;
	b=ubfIijdornstvRpNpfsAonV6Blz/MSpLg4givGzYqDZ+k9Rcnwp7muYZapyIaeUqz
	 35GfhtHEreXoi5e9Gc8CspI4hQwJD2+z3G14bvA0P9Yb8FVNQ/m1dGuGCWcW0EInxT
	 CnOw2Pih4z31LKkig8I5pCxm6u8iHI73T4PV2hVJnVAqFMym0PNkRL5aM3RLTjBR2d
	 wIIthdFrFr4QON9nK7OSWqfid02TMwjVqNJB6KLabzVoquOT3lo57POgE6aEcaGtOE
	 OXtkYGrV9vpC+B69M+dxSl3SHwKi0RH6a0BDbIM5PkHp0hoeCOchHN8jt1NgG6bTpF
	 zOSqUh2K1jPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93424CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908059358.21244.17430774815120922419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0663cd59321de03b6fe2c001e4b8822890ffb7a27a51b8a227982deb89dd33ed
Date: Sun, 28 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759080593
