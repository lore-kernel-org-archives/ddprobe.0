Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0F9230BD5
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764058374; cv=none; b=mkNA6KHwjXDOIaxOcVsN4g5BRf3YYgbYOnu2oABTIiMHIMQ3ae5igOBNU51VaU7g7cMdgW5oDoBqieAmz7ZfKYyiGfHbZ5hF7M1qkiD+k5tEnbly486WDejxhYsxYyHTeJlYuv20gfh5bImcq/ogR0joIYNKTZChr+nfjwpsA4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764058374; c=relaxed/simple;
	bh=EQ0J6LdnbS6FNNNIaZCUM/sAMHQP079OVHkuIrTztFc=;
	h=To:Subject:From:Message-Id:Date; b=kptSPFC9kv3irmgnzb025jrny5FVCMTswPxo0PhxzGPimhAWTRSIPxFgR9uA5T1REPIbksdjb9bya5sU9OEBlONbylH+btufZrGleswUx40gS2pTFR23j8zD1hIIWsZLgnYRbroc6wfA5RkhQvVyd1N2U0GiB2Avq19dR4OpIB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TorkCnJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TorkCnJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DABC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764058373;
	bh=EQ0J6LdnbS6FNNNIaZCUM/sAMHQP079OVHkuIrTztFc=;
	h=To:Subject:From:Date:From;
	b=TorkCnJhUacgGTUsf+pkEWEauLNtvJflZx6rxV6ZGQZIZ3tQP5xguzaSHgfkr5NNr
	 oHzQNLLzeoZm2KJIMAt3XHPole8y8GuvyUDrh+LX6uneuBe3Iodt2SQILArgXYaSEj
	 KTycU0XkniOLOg6EUnUUaMTZJxEBKAHNE7IF2xt+va/8zMIdwMbCMdUsnLZw9Gy6BL
	 JdeX1vdcZRnlBHL5KqpQ7ZawA3LdA5xu3z4OsLMbxE60LMi7jYG3hWRTIcCtQz30ke
	 cMXOYPXO8e2XIE7G8kR8eo1Z+aCYH8feaprwf7vQSBJPd+XpAhbxItIpTkyL1FqldA
	 Exvv/NQ6j03iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93367CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405837359.20704.1359593184914191144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2244f4bb63f20ed1c980677964e48f0931e39eb8b0cd9fed1794447450ca71d
Date: Tue, 25 Nov 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764058373
