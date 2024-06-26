Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A92418C32A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719436403; cv=none; b=Tfd/KdOd6A9SMsMUER1EFCqVQ5QGej0gNvOEpdPlFw2kFrw9JNShmZYumo9Ceia3NRUlQRbgx26FOnpi/HaIpRoTOYY9QY5G0WBZJUMUWPArxKJpgq79uuUTT7hl0eitBsNRGP7w3tzb68j+qqs/Dqty9HsVGQbeyu93144NU8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719436403; c=relaxed/simple;
	bh=y3aFprMd+PBPcN5osKEVMregEuRQ7POi+WtW3Fup8ys=;
	h=To:Subject:From:Message-Id:Date; b=d/1wQzu2TK0qwnw9LRxitFM7Oq7434EqJtAjeCRtCBceIRLjRCj9uE7M2CXqcCH01AyiERHbij6NFJMTpVDKbJr+i/SeDw3+48i4PXhjlwdrMPLMqWs2y+NQ/jCCf8VsZNRI/PdNgX8MOqYvdHkixilQT7y4FSOuNSTkrPzDXEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVa2cvC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVa2cvC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E166CC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719436402;
	bh=y3aFprMd+PBPcN5osKEVMregEuRQ7POi+WtW3Fup8ys=;
	h=To:Subject:From:Date:From;
	b=YVa2cvC+ASkeg6hBeqQlDqJ6eFOXWtGfGSvMEjiV/qTwdhReEpgQpyUCnOBD92ss8
	 NBro3V57A1aAItDVEgqDPNF3FfAbbclRw23SFs8M5Tb1nMFMxSeIKMl2ikPI3FYVZY
	 EC5PqfBKXu81rEjvMmJIGM9X4Khr011kDG9gJuv6ISK1d2nFobKnLj/OEz9FCNQuoC
	 T5Z2BexnwSin9NrDfsSC7e+MUp2lXe3qtSmkie4FQXsPh+Dq7N8E3a4yA0i9whGYE6
	 de+uyMPV1H0D5PTbQPu6JBjXGXVBvmraesvj6hWQMhVUGfD1miINqY+PZeyzxExblA
	 UYlmciyuyTTdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D67C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943640281.12065.8834731364282931464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888534a51172bae2863eded77f80ba4166dd23298e9c671f0b3b528901f1e99e
Date: Wed, 26 Jun 2024 21:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719436402
