Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2355FE573
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749359994; cv=none; b=ETPismfqoPSnLoKNoG1R3XxkJuDUHBm6ZhQYQt3UNYCwYQwtWX/F/H8uzqrf6zKICdfXnEbqiHXFoHlF52QUYOUnVnwswPtagmTpfTwdEasLs1bmhFxiOs+xDbBhdxlDNYN9JtEnMxnFN+05PUo9X08TZE2gPLnT2Nzp3os/Yo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749359994; c=relaxed/simple;
	bh=DdxK9VrkPGteaazKql2cUJdvHMTvYE7XfV1z6ntt5hY=;
	h=To:Subject:From:Message-Id:Date; b=KZvS+ASQA8Utqblv7fLLDZu8D1w8DtCFffhT+bvKxxUicy8P0CBK0dhWD/4iF2eVp1YThHKvNiBksx5txqBoLRW8MclMmK2k4DyHsxvgDtb8yUMQd83r0Kvv/K6c+D4Bd9hVDhAYzao48HD5Pq+zdgC3e+R6+aIPTs9GBZniMZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucAo3Eh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucAo3Eh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53CFC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749359993;
	bh=DdxK9VrkPGteaazKql2cUJdvHMTvYE7XfV1z6ntt5hY=;
	h=To:Subject:From:Date:From;
	b=ucAo3Eh8sdNOpfIu4VcHZ9nHwEN2QjO3znOE/j38Hqy/k6znHGNBjo7piAuTEp8Sx
	 pVXi8vNqhhm/p40beAFzmoDYLnRvnqRfKXBEb5JLFyEVB6xWqKmoP8elgC1GU7f5yp
	 otCaXabWYn6/lX+xUF9A8pOpm6p/6FS5svQibEPY0umS71jvvoIb2FsyzOMRut7Lso
	 es5QQs0FrSxyE9Cl7J5YQLxKILe2oHTuOQf6YfcLnKyAfRfVEBJwkvuWzGG78cRYmp
	 aYTFGcuQRfQe+I1TR9/akF3cIJUSNG2zsTjqcHyXLs4Mko4GUAubRx9n6t2BBtp/0L
	 jwWuZBRsZXYLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93867C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935999357.18561.11160524944053288405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c705e9bfb9f615eb52aca68e8f6a4bd7509cd2be0bbd20262bba0770b9e01a
Date: Sun, 08 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749359993
