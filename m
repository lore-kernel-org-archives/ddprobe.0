Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3843A1607B9
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723553154; cv=none; b=q3Ve3OflvZhB5YmttxNpqzwUv9QYSu717VvW2mF6AfrgKeoWtHjM22EGi9k3R94nFRpdu/PJ3k8TPWvDRPE4FlRRTMT+42Hr3UBa/P2u83iUMyRhS30Cyxv6W1hqTwJk9g7kLd0ypChKlqLxlrNTkg+mlyGbo7iVEsxISZbF598=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723553154; c=relaxed/simple;
	bh=NJgZGIE0a1p3oOYeNXwYaIQG5U3omsiqN9Ofo7AfuZ4=;
	h=To:Subject:From:Message-Id:Date; b=h+KFzE6JvT6w70QNYwxs3ss3MHY8JWAONNdLBLwTib02jTsF/ZCtUvEBTBRH1WdZzLUH+ZYmZOAvT+Hxq2lhjnO38pTklN3FFLavxSCzQ3/cEINEOp/1xpg5csjJdbJ/ClMF42523vC8FyemTqtNZoGS6Pa9HoHjkZ1Mc513UzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pM9NYXAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pM9NYXAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2225C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723553153;
	bh=NJgZGIE0a1p3oOYeNXwYaIQG5U3omsiqN9Ofo7AfuZ4=;
	h=To:Subject:From:Date:From;
	b=pM9NYXAfHNWi32LZXjySsCIrrBmaCEVQvRdFiCm5ku7+g/bFOPqF1If6rI2tq81sw
	 2Ip/0W4zB0nB7neIdnx+XX3KJxMf9oius6IGz9eMpt4vgVOFoRJYUglzUzeVq/KkPa
	 grJ4HKf99S9XACScA+4Vem7bMtK0llt7WYAmLyDZQdE2gGABVIua4wY+AzV80Reasg
	 8Oeplx9GwH/+pa4OS3YeTS75Pyp1NqxnYVAwW6/FJjgLnCm+rQx2eiqwHNbP0fOSy5
	 supwu9MUozAbLYCD/85tru2iygGMaX2OV65uO/U1V1BLiCU9FAxAmLemJHAg+QzCmQ
	 OdcaB+kzAVWCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0E8C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355315362.4679.17667290137785022549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3546715feebdc5a857069c3ec8754346bfa8b20569da1706fd700400b07d4478
Date: Tue, 13 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723553153
