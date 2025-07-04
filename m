Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207A229B790
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751623196; cv=none; b=T3YcUpdcCmlvHogjLF0tLdXcSZVm/KZr3EeRH+Ir5J559Wlel7nrAHz0gIq3ekLj+PLDk40MRPX/ZI14h21oLyOZ2QqY+4aJ/6jxWqSy5V8fx5bc2JdbKofpf0TzK46uvn9EGEUg0NK2OUid6x3VxQlPSM9+GGNNWpT3S6PEb1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751623196; c=relaxed/simple;
	bh=eFVZPi7FzBDnxvCmoz5iZzXWRyvcKHatuHt3Vuf5rwU=;
	h=To:Subject:From:Message-Id:Date; b=RdxfnVld+3H/0XAH1W+BJ5gsSatjv3jL3c0LTec3G9NBzrJJWWeUxocpCSEGePZFf3VMATmvTcOjCRdcjAdY2L40ACi8nvbb0XTRwFnrH2e6LhPvzKYnh+TrYaPTLzUXZIPb5wbdAOeEu6eyuTFFviSD/6q9y0lyA1j70bXSaFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aicxTYzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aicxTYzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E380C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751623193;
	bh=eFVZPi7FzBDnxvCmoz5iZzXWRyvcKHatuHt3Vuf5rwU=;
	h=To:Subject:From:Date:From;
	b=aicxTYzzc2Gzg9jgcbunCtDdXTC5mBMo080TtVSROkKQw6ICjBXv0p3hvHckp3RKr
	 CJrJJnojNAcqeVgRqebrJLldponQB7U2YXUswBcUsqdE1TsF6OCgg4TurHNp1GAinj
	 Kz0Nz9L2/NLhIT98xXrBdc57EcpeDpxDcw0839YDuBUC/fPvJnqJYUc2pSLx/LhUcu
	 B6ZvepXj+v165bfPkfL/+F/QzfH8NkH23YXg4f1H9ZCm8dK15jT9T7M5IWAYodrCIg
	 MdPhpzqOz/owaCeX+YVmDF2YCw0iWJ+ooVHvfWQEudtgiypfZZc8ruV9Q6w0OpOnJD
	 mcv/T2dQAmkeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D85C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162319357.4195.7009763634669270586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ac7bbd0a13b0de6a492116225f72af00c7436a42d6a70883c54daf8c2fdc52
Date: Fri, 04 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751623193
