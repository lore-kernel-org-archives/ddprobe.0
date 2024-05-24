Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A5012E1DF
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716569003; cv=none; b=bjhYx+n3dRWsCwCzuFHxf6GP05nUPNaP4fNPy3oEb1oQz47XEtlcrVeTqXC9GFN3+uXOcmcdYnCmBnDgigZYICZ+DJlAf4Rwkh0pfvtYb7xsBIcy7zCClIVop0I9cuxrKSR1Lac2nvapUrK//8m7CFcTPwXeDGfWnScgSaRmJsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716569003; c=relaxed/simple;
	bh=FKas/avrWAsGMUi8wNf3Hv3PPj5q07MbI3hzUNt9j7I=;
	h=To:Subject:From:Message-Id:Date; b=dG9tFnxQxbnSBw1kZbi3EIGA38BcIJ0RJg9KG917NwEedSrArQT3ERjoFHFPZAD5D5+6fL0kJ26L+blnaP/lZ4pCXPc66CiGtOKzENF35C+Imprdxv11TxDh/ehUzO2j7PF41fzbNE61BM+D/aeSxdN/sxygbUAkjyGFrUB38RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBrf7gje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBrf7gje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE72C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716569002;
	bh=FKas/avrWAsGMUi8wNf3Hv3PPj5q07MbI3hzUNt9j7I=;
	h=To:Subject:From:Date:From;
	b=mBrf7gje7DQnm5O1gf9Wrk0AYQYFsrqO2lZkTJNuLM1PYD35T95bTdeJ3KuF9cJsW
	 TS8qehteGGjH1hxAJqFPbgBBokDPJ0wJXWjBKAHnGgjTGau+y3XGkpLi8RRo4PHDQD
	 SSb/8T+KERyIgcjrlFU0Y6uyxNFMV/ayUHyTG1bgi0Cxq6eV2h51lW2PNgcM/FCFyp
	 MSzImjFLWDOK+KtENuuD8/qMdwHSL9fuCD24UOlRBaa/2fJf/uGXGkIS0hTqVZYv1x
	 CiWH0Hu4MIOwuT5DxGVJXWsoAIJgfw2LJDS6TTqkH5jnF26kP1G5nioesQefpzScez
	 3tp+E7M1itZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA72CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656900278.18385.13970911608352323578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4fe3c5141dca7c012611bf151b128d817c0beee7c8bdb36efea28bb2d13090
Date: Fri, 24 May 2024 16:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716569002
