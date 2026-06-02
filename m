Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EADD30C368
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780431274; cv=none; b=oFeg4Mt7MF/14eGnoh5HVbhyNsyfCI2LAlb8Kfim/qnqnGWBekWBkL2SWTliJXv+CESYRWOFok0gcyTwGn3wD+uIAe1pxHU2GG5MAOqMHoNcPxIpY+AJoE4g7ur3opv62f83KdbzMWP1k50qz7Z/FJCr1RBpLxVu8agT/1/b5J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780431274; c=relaxed/simple;
	bh=GsIc9qpEMC8jfJvuKgHfc/l4l06q4UwjWIFcxnAyXnY=;
	h=To:Subject:From:Message-Id:Date; b=eC9rHly0PeMPy8Ggs4RmPSRJrJGv1LaEvHos2PGSb81ZKlcFLQjYDVrOGs45FzqxzQr1q3jVN1Buc6Q3brvOe4yXvpanUvJTCBKAFBC2+GAtyF9y8RpEsdDVXbjHSjvZsfntaPWoqqH6DmO0TUNCMOjE2TAZsb2ANtlAx6J4pcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNPVp3rZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNPVp3rZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B0BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780431273;
	bh=GsIc9qpEMC8jfJvuKgHfc/l4l06q4UwjWIFcxnAyXnY=;
	h=To:Subject:From:Date:From;
	b=JNPVp3rZWixfmyU1WgQFWsB5YTawObUyQ0p6caizf9RYiacUmzKRBam2z5mbRrBiC
	 QkeOm18r6Ta2e+NeRTfb4l90RFd5DCPkLpH0xx+75tey11j90MXedOw1NOQVEcS8y0
	 5xEsi7yvB3N3tGZigJYwyhdYAWj6/Eu1Ns+KP2RSR7/eM4n3HBGRWdIOH5JSvP1XUD
	 twy1SXmeDFFZQrtd4gnYk90RXmQk1M+cU5u8/wZkPGZToluzxBS894Ex16kYjCFJnO
	 jJuKwyLCnZktDUJQYRHSY8S8vG9IpiRC42QwJ5PRR5MLLgplj93HmMgWGB4Bdc+u2J
	 X7ycnLuidISpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D39CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043127368.15897.12010214577271636780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ad68f9473dd8d23a6d247436142293974c4aef794112219a1dee44c41ad78a
Date: Tue, 02 Jun 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780431273
