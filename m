Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3593723BE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748913594; cv=none; b=sd7KqkEH4crDk2imUKUR7rm/ZWpDmsVLYvxvo/eZo0tE0IoMqyh9rhNfiyprnT8AeadMTPrB7QSn74xLJYCFYc22IPZDPe+fMt6yOtBWe22rEpNikWE0EGsygsORGXLUp9MQX7mKeywWDP2iwz8cld1Zr4Dc1SsQ00ks91XyTno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748913594; c=relaxed/simple;
	bh=fqkluHapPyEFLVNkLW/mZe7xpUq7/FLBgL+ELt3pmEs=;
	h=To:Subject:From:Message-Id:Date; b=hGo4XW17s1gtggkg5O4Y6SlGMwRTWfRZupivBlxyGieN63GHf9vSQper0zWO0bP++U0MpXotFIXzKtHx8+wp+TKuMMr8olkHqCdFGeh084yIsTjG3Gro0Cva6YFqE3USfKTU5+eotcG6aSRHTPE+LVBcKbTQZmUad1WfvpkyumQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neY9+S33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neY9+S33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748913593;
	bh=fqkluHapPyEFLVNkLW/mZe7xpUq7/FLBgL+ELt3pmEs=;
	h=To:Subject:From:Date:From;
	b=neY9+S33ceXRTUIsHKG0QpGUaY83M9ZwU+/82ifBrWJZP9DJcBktaTyQVxCKlFt33
	 pABoFCFDDOZIV94qfpPDrhQmdFnfRXXawa7JGg2LYwVvgDnTAUEGfQqBp4uo8weFVI
	 bqp5BXgyW0pIwfJ2MmQLlvoMrkS8kzA/+h3E3EHt1RU6+6MCtFuUTr0FrxicTbYnkn
	 mOtcjLLiCmjaTBHI5+AYoTIKRqUhJX+l5G4eroQM1KbBr7T6tHHIUYi23q4YHEAkgj
	 BcdFk+Jw6O896PPZc2mUJ2yWKR+kqzufztAitqoQtLidlA5dWC7QsDcYxOV953Nis1
	 zV/AEqoksgU8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEEC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891359357.16439.8925577873305217775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08de956ad34a80650d5527c999734f4f57e711167056a45eba1837fc4ba13d3d
Date: Tue, 03 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748913593
