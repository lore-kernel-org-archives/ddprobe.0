Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4F963B9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763230854; cv=none; b=hHWuIoxbfzKJRHQkql28WbIpDotHWYabXmqFleSeqvkn8meKHWdZihJk9P/OY1gVbd3PiAXL+Dk1rPMW4M6cK1kl6eIDWBMsrB9xuzhlnkVuChm88MMXRfGltZ6ZQt98TWwRq4Us2zbIkg2MDZ6flD6ViNu6j9NW9CL3zmD9opk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763230854; c=relaxed/simple;
	bh=ykTK+dCYGI19IBIqZZSItXpusN1I0tG6jzN39LSsGvQ=;
	h=To:Subject:From:Message-Id:Date; b=Wg6d7jw1O004HsjZZ1CkreuRm4zYrb55z2cYF7DMMgaeZoagTIB0BnRmJ3z4bAZT5svCHenst5t+eo36IELrn8v+3KhUqDYGSucxqa0830MaQ7iVuUzaLwMsmM9mGRFh3A2sRsvTp1IQarV7AEfOciIcE6/6IPbaowv4fmLSULo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCAUr9cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCAUr9cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFABC19423
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763230853;
	bh=ykTK+dCYGI19IBIqZZSItXpusN1I0tG6jzN39LSsGvQ=;
	h=To:Subject:From:Date:From;
	b=gCAUr9cqr+OeRns91sEdH7pfwQSoai2aaQ1oXuOB+aJ7gOpG0DkLlQBXYVv4bxJv+
	 6u6Ieqj3CtOPPJkdKd1i/JVB9Oz6+VAfzV9RyNZyuUDcigxntQeRjV5ggPVI5SNAp6
	 E1iWRy8Nc+ChTgTxtVxqlS3pez4hMqVrxLah7C9cpbev96Xx8ztH1gY55MzBU5O2HT
	 oi2VdTxOSIgC3LGct7PDO8NMQ2BlfBnm+I/Y87EzxWO/Yuma8JN+oUEBjquKJ4adOm
	 iLXKIvTBOkFu1NL+shoUK+r9kgSnL0OEzmM3dAR0+dNapfl6GNDEUjJ+6AUoUKdmTg
	 RvQdtIONRvJEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012BCEB2FA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323085358.4134.13275117356694309237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7447eb286401fb042db2bc5aaa325152c2877a13ed48ac9a4685f5681295b4
Date: Sat, 15 Nov 2025 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763230853
