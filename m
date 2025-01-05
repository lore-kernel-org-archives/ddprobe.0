Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442A47DA95
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736102154; cv=none; b=op98uR3PgeTKWryUU6dU76ffR/WBkDhI5LP6Rhi8KR8yxH8iYqvyhhMat7jo+X5SikIoXIBsSeS8oWDStT47eqX3fnZnbG5W3Kb9saGyPQrCPgqI/wQWpwUKnniZrQxqagAx4n+Z0QiVh4Q+zfFi4emuqTqsxNIOtznfWzvssv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736102154; c=relaxed/simple;
	bh=abQ8n93TsT9qnrPJv1w3/xEAQn+VeHfmsF/YXIvQD5k=;
	h=To:Subject:From:Message-Id:Date; b=L+KjyIixilN2VSWVvateCvMtDJ7AMfiT4TdxrL1NvAA64jT4MAGFgSW/NOGZ/tFRyVSybPaKJpXLUsx2FikNZ6bdFUP0tskR1FZl1mvLNChv+SiaLWAj6CZx/D4reXXiFkbRDhz/Q2eKeTAL2zfXaJKQR7SHWd2AACRSbViELQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BThBcOFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BThBcOFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ADAC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736102153;
	bh=abQ8n93TsT9qnrPJv1w3/xEAQn+VeHfmsF/YXIvQD5k=;
	h=To:Subject:From:Date:From;
	b=BThBcOFQGGYIVM0+0xR6LNq69E5Ym/iwJC/PQ27LrAFsMNQCw5cqL3zoQOwDPAJy+
	 60Ber8oYzNRHvnj5vne4G46sUskUgSVF9yubWAWuezxG3vOwQeNsD2BhgDVITWcYRm
	 sOJIY0EXSB0XYGVQ0nj8eyqRmryh4m1R+TxR8rjAhq31CZSnbe8FtFwf4jBMhZ+/sC
	 58GB2wae3sYID+p86bzqezhP9LyRJYSEyqSfRm1IP1jLLtrC1dNqsXucVqvPeLOkqF
	 nuWwU0IH1pywPzJfEqvkeRKV/38PnsB+GjBgzSYtoABOojAwILpT7aP61xWe0P/Xo+
	 jc5JY8aU+4sZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98928E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610215358.9213.14277580263042613166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafde330e55239b2f13e6ade527c0a8ef7281e5ce0d6df4fa1ae7d24880e6121
Date: Sun, 05 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736102153
