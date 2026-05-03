Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD1D57C9F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777776454; cv=none; b=RtApYW3uXko1w90f1MEyws+DNx3zdiXetmX2pX1bOQEkHDhXPxMQ3wodpxeBFktR6jQhb7fMwGjTkIKlpr0UKpEYqsa1JxWfksF/+mIlII2JvcwGBUWRph+qRtFhOOkfauwgX/paemyCQ3VMqI3XAtcF5xghtwdmD6PzVjh44Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777776454; c=relaxed/simple;
	bh=pQ8thM2lOrG9tqpwkIUIfeytsfUEtBNLt7RIBOY6ePs=;
	h=To:Subject:From:Message-Id:Date; b=twJ3uJIKPT9szoFvwZL35GQ3zgpbXU/HjhqPW5EMKb5dXiuxeWI5BR+eOyFX2nQJJp1nOoPIutX7GUKHy7PaNYqdwwqWq+4sHGCo2B7rB669vpyXc5h3WL1uRUZ1XptcQjW9soUSCuw0E4T/muUHdppTl1ZeCm23qVILfCCcUWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4Ee1g4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4Ee1g4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00B6C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777776453;
	bh=pQ8thM2lOrG9tqpwkIUIfeytsfUEtBNLt7RIBOY6ePs=;
	h=To:Subject:From:Date:From;
	b=s4Ee1g4XRIX9FmAkaC49Y+eOVQ+QV/oxmD5LAgZJhofPp/BI0WDXepwelDK4evz8Z
	 OxGqSZoT8CTy7iTXBekD32a827leFOyXb5BBOeWieQy5VnDkp22pEyKJG3npou2UEh
	 VviGmzlkeKoQfl4VVBlXFYLt6wfHsr3pbgS8tuwafOvjHxTwEFrPinujjt5PyJDYhF
	 rwlkKcx1u/ZRNfKKD0GgdXrZ/eWKZSP/SR4ojFcG0srC/8KCOQXP+4YpLiKsPJ7cBW
	 cIGutVHaCfL1aYITxj0rWv49yp83hhwRt7pl2SUrK/W12e5uZLA3bSWrJfPuRqltAk
	 u6iAyWlHdMEMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4F7CD3423
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777645368.7719.14975335155809375051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6f1812b03972ecea519d3866ccc47f4d51e42ea5f35ffb87e3fe175cd527ae
Date: Sun, 03 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777776453
