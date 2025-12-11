Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2440C315D27
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765477374; cv=none; b=DsRuzbVOVIF45nK7DeAKX+o49NYoubLOuQqooEpZNSnkcm8tjklYaY2GJWrHKuP7/wWB+llTsxLcfW31SAbZ0qFM1/Wdf1enMc+R8oARpgShPoADPeaQZT1/8Z6ID/2WDCOomq59Xq2sm03aiXkQfuV87T7t8y90ix2gKsndY+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765477374; c=relaxed/simple;
	bh=1ib6G5PNKhhzxDw0/KKRxlzPxfcelV0BpAalPo1Rr4Y=;
	h=To:Subject:From:Message-Id:Date; b=MZaUer0aGzsi7dvJsDYFr6Vp2MIfxY8aTOJjoWedlhPREZ4KgsoM/Hbkiw99iJ+wBISuSoO4mzKVr/zmYSNvwsNBJbADRrpr715ggN4OuY0AKuhsoMNAHhUgDpGHtV1id2nld/AZlU9JxcoYoVi+E5jWCyTXuy1yZ7VPT9qM8AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8UeOG9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8UeOG9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE37EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765477373;
	bh=1ib6G5PNKhhzxDw0/KKRxlzPxfcelV0BpAalPo1Rr4Y=;
	h=To:Subject:From:Date:From;
	b=f8UeOG9biE5WCR8Gy+ouQXoYT2XZ8S/rTCi3UrURrFEhve4vSGBmI1BSliw/fzM/U
	 xNJe1AIvadBWo9iWJkYeVpKsx7GQd3DzvghrdPiUcgHFY/sQHe/m726RkHJlGOcxwy
	 /Sz74arDtL4lWKbYaCxlfBYJ7L4pUcoLteL0MRA/qoc/aJJrC8NBDmwnnUlBC/YeyM
	 n5CtGcbkUEJwNtIWg15mcxgvfqcnbBSQqYOaiuHaNarKq2NdOIvtDzD+rjSFFxWbdv
	 rI/Wsmid8SZq3x1cVKxDa/oW+/BZt/nnJWPo7LPxtoUcS8DstNUK9SoyEW9vZ/v7om
	 SrjztVbP26qGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEABD41D7E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547737362.17406.284867514397784509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ec7a342ed9f6f4258d14631ca6d766025feec9fc71bbea6592959d9f7e5ff7
Date: Thu, 11 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765477373
