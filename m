Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5277529BDB5
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786747834; cv=none; b=bCsQ504WgwSqhNiuXDaqmQuV5Sv5DPc7swEOlmDhe8o1zIoFYGnrBCppnaVGEEudlye7vY9sh++eA6FZV45TKv4bqvJlP6jNdoNakBPXCBvjgX2hEs8enoInmu+LnA1b7J86HyjajTNNZcA1xYFj+SImkL5G02DreMk6To+kftk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786747834; c=relaxed/simple;
	bh=PcmMl7ZIUgj4B2xOnDzSEb1WL1kIULmVKwS/LW9yTOY=;
	h=To:Subject:From:Message-Id:Date; b=PK+CT8Epm3iAbwPJmVzUKlr4uUJQnXuBzHLRkZpJqdZUD3sK/XK0F6GOPIxDVD6DLJaXO0nYBac9KiNsbQ82V62C02eXhSba1jM/S9rwnyPz5KEk16hibUwnPqLJ8t2NLx2GYkeKNo7H/PSRHvporwaJDvzkFrPkTY+NXS81TOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bivJ38NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bivJ38NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AB3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786747833;
	bh=PcmMl7ZIUgj4B2xOnDzSEb1WL1kIULmVKwS/LW9yTOY=;
	h=To:Subject:From:Date:From;
	b=bivJ38NRnXRtbsGQ2hdQ33Ev+NOfpFb9dQB/ZFmR1JbXaRGaAiQ3FVGRovpV21MjP
	 1+cpOkApB5SmgI+nqUqg/2zVH8XKQ2Q9ZSjMiud9YUuA1f+cSO7Cj7QOttsFYoeho7
	 44Mi3DTo1KHhuy0tWZxg8oFdxkfzuH7aUvRtTMD08aMXgmaGRZ143G6curPPrASLN5
	 EtYw4WLcJ5KFBhxOOx7hyyGTuL0CZt5jdbXJhDiLewbN90YsrNLgZa99DgVD7jV3SH
	 LyJk1t6Y1znMDhz7VLKO9T9PD0C4rTvGh/l39HegKGzMiwnUg6NTnZF3JnCOwBF/3k
	 ZJsaUFQeWQmwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD52AC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674783368.6560.3658324024500240247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdba4132810b9deab336a268a403d5d238118a33b7e14c4b55b617e7e9fcc303
Date: Fri, 14 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786747833
