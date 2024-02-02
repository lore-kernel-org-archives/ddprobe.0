Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F045F5380
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706835497; cv=none; b=J1CzRVwLEJCOj3DY93v/fbrWGC3j6KAIl8uXOhQfx13kpNsuNfpRT78io3n565BNkrLa8nJDvwUgkwRgDPMDbxk7xtj3OFlRFg/+f/xZLZT+2c4ZwyO9N6QoQYTpFgQEzqhmvgjCCToSuGYaQfnRhG9ij+1ZFt6gvSpdgENrdWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706835497; c=relaxed/simple;
	bh=sRa4ZPWvapsBMluvoYrzAXBAYnHK/+V4BSGdfsqbSKo=;
	h=To:Subject:From:Message-Id:Date; b=NvOiCKMi1VFxw/T3KjY3TrB2aEWpeAZ82v8NtYg8Up65POzVr1UrCNZkwVRLMNQWfZc79biPedQ6pSww/QFdHaS8ei7qth91nBw83VEqV82lAe0ErdRp9YJIrz6oUCDu7Q2G/u2SYKs7loQKVDPCyGh0r7Gs1UAbV/qBGWkdfgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W56JHoTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W56JHoTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805D6C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706835496;
	bh=sRa4ZPWvapsBMluvoYrzAXBAYnHK/+V4BSGdfsqbSKo=;
	h=To:Subject:From:Date:From;
	b=W56JHoTvvS37/zcxRksG4xyPGHgRop7nBBQSYKDb6oWf/AYHEBPddVwlKKkuLx9+U
	 Cv8yJU2juPU1iCRL0g5beqXp8Kl8PfufZpBNXRFgdv2mRrYvFHEO6NVHF86uw7kaqK
	 59DngFfKsmdmuZPJ4buzrk05O4AqssUIAD7/lvoK7O3lAtvkQjKfrZB3gWZ/uPoiK0
	 +gcjnZfPNZ/liaNMRsn3ZOL+QcrMGVuVh9Ww4gXlO02D+NrGHtEERr8CJ9VhHgKKat
	 F7a1xKj6RI6LE9BlNWKGPRLNZSo0VXmXPGMlQ22ySanvyGPNVyLOWHDNcEPYSxSoEZ
	 yA9NWdPfysSow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F18C4828D
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170683549640.9457.3883554658176828833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2130f867641f734e0a01cd6a69db97bb0ef50f6ccb45418f9ec7f994b68b10cf
Date: Fri, 02 Feb 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706835496
