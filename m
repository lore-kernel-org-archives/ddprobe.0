Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC65224234
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783130314; cv=none; b=HL6QJASF8ahJH/eRcFh04WC1BtkkEzB1OrmswwNVBI5fd3SlF/sNKuMeUJ0VgRIbyPnvF7pY9O70fVoTx5Ag64WAyp0TDCVyVOAK1vAF1xqgAyeGsBcUCfsFvtkaQFw+/xXZCuH+3XxYSwCNNhB26+nZ7TTAvHq+M8gUqbfCzS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783130314; c=relaxed/simple;
	bh=lJfrmt1TYn+DkGNcUY14OXCzN2gUHEiiyLJuKMlEUl8=;
	h=To:Subject:From:Message-Id:Date; b=aDQMCtRgN80m7EZSUZ1Vs+SxYGczyBqNjz5g+o8MulONLXKmahysM6Np3GYrNHUwOS6q1D6/l6z0jiiSz5M47HVKu1i91LDcFH7zHNI/s8m6o+00/3Cb7qP/sAqDRN32wxHQ2SJlTLnRIGYplBtQSwM/ivaW3fT3lixPf5pfwIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJAn6o1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJAn6o1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCD1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783130313;
	bh=lJfrmt1TYn+DkGNcUY14OXCzN2gUHEiiyLJuKMlEUl8=;
	h=To:Subject:From:Date:From;
	b=SJAn6o1h0ODP11GLNsQWcCIWilPVAHEYe9aAseBjZMtgaCRkrKkIPE1WVnxwdFdFs
	 81MPwBgWI7zcsFM20my67svbegVUYBIge/gjM67z2NfEHxrm7QnF3/uYnwGxfZQnT+
	 dfA06MQ0+2fNElbn1dsTpC+W4ZCOnCMX04533XkJvEjBeIM8aZmMU61JN678M91XdB
	 nMY5do79/Ch+4oYwjifI08t5DC/BGTUOIC1cjKJwOV2C7gIWKcc+VetbGCZJ8BUkDS
	 zodUlNXGDVGNmwHLcHjsTCbVOgr/Zf+0cH019+qyB3wlVuFyeT3mulltSJJCFMkSr0
	 bfnCD01suOdlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE282C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313031368.17094.3046188957259061992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3b5de1778079d0ac6102cd4cf306babbba3ae3eb86c3ed78868ecadc028352
Date: Sat, 04 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783130313
