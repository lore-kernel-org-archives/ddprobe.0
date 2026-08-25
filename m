Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE32B42F709
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787661034; cv=none; b=jsmKaukgv5VLRjczG6daFiTwZauYURrPyVf+lAxtiiz1KOCKW2T/XCw2V8a69s+LNW3BQqZv2sM+77qODI8rHVHVObIELGJGMuBCfXKKi5w0vbhZfIJl8iFHu4CDZt+2QDTbBtkS3wsQUhEFXh3LIO8baGzKTSwkS5Rfa+iPgrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787661034; c=relaxed/simple;
	bh=WQpUO7TtquTc9MapjC+LSTNi5iI4hSzjdcoKVjQvBgA=;
	h=To:Subject:From:Message-Id:Date; b=V0D4iYIjk2p/4V1xFp354vjAEIdNOG9PkmcJ+VjjFiWbekGisuWrqgS0bxaWa3/Uh6VBLb7gD/RPiO9EKN7IkaHlEE7TQuUtl7od0Xhc3wFiu+JltuY4mgLPxdDgxRJgUCOFuS1yeGp2SuWBpdqeF0pcaAhE1DUBuIIn06Sf36M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJiiBC1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJiiBC1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD012C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787661033;
	bh=WQpUO7TtquTc9MapjC+LSTNi5iI4hSzjdcoKVjQvBgA=;
	h=To:Subject:From:Date:From;
	b=kJiiBC1Xkiw6Zewvv0nFJgwTc4qb4flpEiu6pBOLD/G1C+9OupKZicOfWOPWrucI/
	 IrCi4mYXTQVfuL6puGRAhgWKFgjU9kggcwP0N1WUFDYI0EBYUtMoY/MnbWD7KSK53n
	 /ZSLUzgt2mXXONN+CPuy+vzJYV4dFEoEyhkUzKVHiPsvCg2sUMZyQvOuq7jqtquDvI
	 K2SBJDJ2POSxyEnZzi+t/MDiyT0Hgl+F+r36gQiQdO6xshHIp8Rg6Pc+aI0H4kziP3
	 Ao43zxjcraBjIf8Shn8a00FfulNEN/1eMDT9293q84Mffa7JOB6V8JY2QoV8WmrKRq
	 zogYY+qmAVOyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1B9C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766103368.11347.6233144329342417001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789818087839109bd1a35057bc74f540e78f640af6bfad62d0a6ab0c7e8585b5
Date: Tue, 25 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787661033
