Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EAB379998
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787341834; cv=none; b=pEP87fI9Kt2LpuKhinJBv5Qz5UQCjzVjYp2SbGseqMp+vyL9+QijjaviU5/+ji60+g14zDF/d8Vp/YTH3mw0Oukmax/oWsSAzwFrBzRy7N4vZR8VcvcH0iAkR8uCuJ5QR8J3/K6De+tygsE5ue3BLqiUWtmMcb2ipcm+j5y9AF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787341834; c=relaxed/simple;
	bh=MnKAjNDvfVJe5YzOFJjdRKdQ4jF/H5c14V3j026Fgwo=;
	h=To:Subject:From:Message-Id:Date; b=CXkXP2feGiqBhN5evG+X7zCFIo4LqGgTx7JlAMvT5cro4jRZJ4ZdndAb+TSTJ+5KUZk2IdTerx1i0FC9yxCG6Or1WE8VEwj3qDCq7qYWCDLal+B57rlu4rTGk05/M7eCEVMnhKENE4SdXI35zGQ5dvCUWhYclGBk7vMYg1GqI4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYodaHWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYodaHWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF587C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787341833;
	bh=MnKAjNDvfVJe5YzOFJjdRKdQ4jF/H5c14V3j026Fgwo=;
	h=To:Subject:From:Date:From;
	b=UYodaHWexkJhxwSaWapcPAXg8fZ6YtVDHdiAK+wZRX6iHGA/3lEj15FX6H/P+WIcW
	 Dc9tDjNdIy2rouVAnjtt0lCHEU3DSw9y9yrbgmkV8X2FAeMipRUKvH5W5v8GXFQOHL
	 +K8bIgGmu95K4RAaNavSaaphhWWIWJYcVXGkt+4Xmu4Mjo8MTznR5P8y03gCebdEBc
	 W5Us/M0dVAstycVqCyrwJHYM2trnDx/HhBcTN569prBMcHkgLCvd7RSfTnmBA9JWIU
	 vTRJwXtH5S6+ivOP6URhlXRg4P3e8zXX6aIdUZ9ir6lnonHQ8j/yxCD0IWikv70khs
	 ecsuFhlXoTAdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA58FC5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734183368.30416.800525892451129205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6d72db2b7e09a46b13541923b098b6b7c6a7dd86bd151e0210787953830363
Date: Fri, 21 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787341833
