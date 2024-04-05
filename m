Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87C72421D
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712298496; cv=none; b=AhHY5oyhM/I4CeivBnd3FJ9T+qQAW7k5ksrN6S9b359/cXIFnLASU31xIVj03dHZXqqQ7ibO2eSWQs320GAysjHKlGAvHj6D7ZqwZzdLrqEnljSqZTX33V9cqGGjJ6N9B689cfyiJIosa8gLCs+o7voOvvsEycdNU37rrf1Vv0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712298496; c=relaxed/simple;
	bh=GxFTWXVhXocvyXOv9h2Zoy+kphfcOTk4oTS1jkE12Jc=;
	h=To:Subject:From:Message-Id:Date; b=hHuEnc978Gpwfal0dTazZtw7lTO1Zjgx2INqz1iHxYfOzMA4FDCGv25lJ68wPNF0rvKXhCNG7Y1ko1xV6kbpZ3VBcWE+cw31NkpznC3IOBxgX+TXceUmYR4ITU0vBKdRYsVYVXs5ZcLYJNi248yWoFUtlokDHs+Z162+KeLwCso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zc1MdnF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zc1MdnF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751D4C43390
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712298496;
	bh=GxFTWXVhXocvyXOv9h2Zoy+kphfcOTk4oTS1jkE12Jc=;
	h=To:Subject:From:Date:From;
	b=Zc1MdnF0rySpHYay/1QIX0mvwuFjiHJy3rZ8+iarBsKRJd2H+AUAN91P3a+zyE+aR
	 aynnoZmlZaxJ3kahvolYZC1vE7lde9V83On6St0XsdKp+3uyZA8JdG98BJApXHRlw5
	 xeAJRzirkaGSdCMdn/0N8SEgxow9K9WYB4UOWgFB+Xakb7P9EO5mzW6XUM+18Wa42D
	 25HO1RRnzy1Ybcv5Un/8+n/X9bYuE0eTkTxEnT5fPABfrkeeGf8JNLlqWqlgmHmEPd
	 CjsrSqvB9InvGnoPgdMyaXcnL2y/mHp40Ng5if4slBfNaCmXtx2e2dTnj5UGEuHs4o
	 BTg43m0XYTpRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BEDCD1284
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171229849640.31602.17535702942622469043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba98f22bad7b31712cf6867c5ad1c35d05f366fe848d6dbd71df174a1025845
Date: Fri, 05 Apr 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712298496
