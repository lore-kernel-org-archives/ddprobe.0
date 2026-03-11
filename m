Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F90388E4C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773273295; cv=none; b=WB+mCTEt2ZK8RT3LuAIH1X0bMyYnGsQ2acZMzPks0m8J7+5WSq+pKi0fMn7Y+92PUeXwYqkWYyTXBPFZxqV5gVkF2ZsZIA1aHqeSUMGjgoJpzHq6L7ccd+0DBedt+r7veqk8/xf/Kfe+PUg/vJL20az/roCFChzdpHD2QnnUuV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773273295; c=relaxed/simple;
	bh=tftniSfTJ+rTGZduZ0ShTpg+EXRvZFTIhzir/suVeKQ=;
	h=To:Subject:From:Message-Id:Date; b=a4zufHue3FbGBdz7i7cRrJ9Rq2uzFlzLLgEgCkhXqKzhWqVosgnDPeUdDSUM8P2B2eL4tXw613aMyQjZFhk++r8YMuoAzJwOAMccaANErKjG7saMb5hbasRaNNnfqnKiRgImPb4JNvywrGyDUiU8o8GBEWl9IaDCgQMjyPSb8GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aak18D7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aak18D7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1117C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773273294;
	bh=tftniSfTJ+rTGZduZ0ShTpg+EXRvZFTIhzir/suVeKQ=;
	h=To:Subject:From:Date:From;
	b=Aak18D7Z3YL4nPM1pQUygcfGrbqG6W+StCnchywrmMTD0EkqPeCpVxTBN7hq6KBoH
	 W+d+TYIvUOBZed24BBUmn1WSVuG0Om3Rr9P8c7UAEj+tnu14WAjVBOywkUu/Yx/wM6
	 hBqs9VKlBAMs4ozAL4527pIDyXraep1pen+eHHFHxRlZqYr9aRq4NMY/0FHOITpnJf
	 4FVcdlSWIq77klvPJM12DlK6Fuf3p/oMI2sgffQvCj+8dFQDQ7FKD6ajL1b4bsiC5B
	 b9vpdKVe+lD0Fp6mMWqzEHHdKQryCuqy9PxxubX7y7SgephPokKOz7H8E9q+zncSPe
	 +O7r2CP5HFpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A6103E2F0
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327329358.21580.5154664637958625756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02386181f7e833ad660dd6806bc7f1e23d4a32dba3167b1c00840ed245dedebf
Date: Wed, 11 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773273293
