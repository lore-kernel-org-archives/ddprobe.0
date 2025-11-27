Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD73321B9F5
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764277373; cv=none; b=j9hACs77P+elVKz2Sd1tynp4OyCLY+iOGYRP3Nua8T7U5uY8OF5FUmX+lvkomhvQQhEPQ0noHlciP9iAoHBzw+sMJmH/xDdvMgB2ErdA08C1Wg6fCjTqMJRoAThIBG4nANiB++xNwrapCQIRMSH19oIZpFvIq2VZKapj6TrWHo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764277373; c=relaxed/simple;
	bh=hU3oTLXgauqR6jFFxQxiA2zuEqANSGLkGzsKBA48IJg=;
	h=To:Subject:From:Message-Id:Date; b=iKZvqHoEdDp5PUBLcaU1H4sJEnYDVM3h9xm3UiDu6YnBF9CS3GAQJgOENqtbuP71hSzJlWZt8LXBUiD+57O7DFaYIwlwqnGcLvNzIl3hPz6d+iMLnHwuNrVFPMpZOr8NPPVPTdicisQ0i0F2lKMJLI4URBEZmMxFYslIFdhkhLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQXYt1eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQXYt1eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC042C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764277373;
	bh=hU3oTLXgauqR6jFFxQxiA2zuEqANSGLkGzsKBA48IJg=;
	h=To:Subject:From:Date:From;
	b=aQXYt1eogUgouQl9W7fS+aC6q/Ak14SKy+VPs7ayE8eDSvWrpQlHaQdGi/uRM23A9
	 b7ckGdfJggZivkBL4RoftiIpomKUf64NlpCH0RsLvjPFbigaEvmSLEH1YAEkAgDUky
	 hfWIpJFLIn8E2SyggGe7QACQ3gqDCKDetd6w9H2EdiuWN0PLv6uEX7alEidbvjSyrr
	 b1wf7dGwNUVXttK36kEULICTfcMHuPlse3QtXmR74M/Uum4nvjN+aszFB3PptdA/Yd
	 Jv/WKL+8CPGsQBlCvtRZ9NtlAWwOO2FTcOwmurK5Z7F+hBhjjPWC2bZMwAfKnJlNKe
	 Mba0CQ9JWIAiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98768D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427737361.27481.1025772366318907968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285a8f61a368889acca2d5d78366592b88691f63a510877c4bd420a413c903a5
Date: Thu, 27 Nov 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764277373
