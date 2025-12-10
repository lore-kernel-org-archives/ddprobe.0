Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F58C347DD
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765366374; cv=none; b=VZwpUUB8TyTlkSmCCYQVABbHi1ziGdZEO8Ae6inROD/P9bBIRFUNbAsDzhw3X23+YcuEmOklQ4AU0ckvbyXsrABNGe4Jl+2a5sYe1d06ZIRyJV+g0oRJ424/T9MHsUW1ArMD+3I75voY1B3GzzkwuT9m5VD2mb1wOjRJGdF4xzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765366374; c=relaxed/simple;
	bh=o/Y0/74nrUlBD7OEzb1HHQwUWqh+G1E8yuAc7DLFqms=;
	h=To:Subject:From:Message-Id:Date; b=iowEDMehsnYPzcrJ3tiULsdDp3aKEs38lvVr4z2j8n+/N1EokYTpA05d32plHjGGK2tP752Mx2Z4bsS08vCOqhGq/hl+XM2JAxMsnpENlgNyQz+LmIlQ8YwIOp/MrAI5W70A4qW5OtGGZb7tdkzVCdcny62l5kOVSuzYwZogSU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEncGaS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEncGaS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5423C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765366373;
	bh=o/Y0/74nrUlBD7OEzb1HHQwUWqh+G1E8yuAc7DLFqms=;
	h=To:Subject:From:Date:From;
	b=dEncGaS4752vzAHdD1dLUfEIgLBDdIlV2XzW/o11Z7zETqoeJ/yWqn2C4MiyBu6IC
	 hk0I3gSS9PJaYFDQ9iKcu673lsTrM8HYky61edgV8aGvdoZAtAHg7lEYsm6ioSvPHi
	 F7pFuY2EAe63luR4LydLVWZ7V+Ia6Ovs/6aEjX0fuTSYqaXfmeMwYYk+Pd14MdaUyC
	 GnTHc218PQ8uNVScJc/VJsnyvJswyAd95+AL3NJjpvAmkDLMQPT+V/s8v6P7vn7YiB
	 a4dBwPn6ZG29WnK2wndJwGiyX3x2otdmZB2IsKb5FdeYBCjphxca7OIquc09/U11LP
	 coyveGna5l82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9198FD3C52C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536637358.17824.10005787946978422954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7cb1a74469c15bc3a933833c793f94a3fc1b8b1dd07208e64d96830aaca524
Date: Wed, 10 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765366373
