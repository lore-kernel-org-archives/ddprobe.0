Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C013288524
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756104594; cv=none; b=snwAh0xKWNj+a8R3+yh0Uoj0QAZAg1XX/T5wkUtaLx9bWuNp62M3YRsOek0qrmHocGAl5DJWLgwLQXwPuJb8yMjzHXmy/nC7jxuMo0vnpnSYMgKr7ZNAJ9wHGqGUOubE0XvxVUcI1uPE4+Nwd+CH5uxUOISY8FXRvu+WkaXoha0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756104594; c=relaxed/simple;
	bh=7VCECl1tTOtNXuNtXn5+7Qlp0K0DWf0+CvDZkm6Xi7I=;
	h=To:Subject:From:Message-Id:Date; b=QtmBycUY9Rd/oq5JadeW2T91zEjEZWMY0VOHlf5NxGqEu5RThgsxtNKrlePbN5a4sRN+MN4Q+I4KoKmckwTLT+wj0gq3xBwwzmwjHXxfai2RUMl9qx2uyEFjR0NsVxgoW3hWsS3Qs5/zuSPaPwhVximzGjkMaV7zNFSNjr0fuRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tdms+ReH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tdms+ReH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B96C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756104593;
	bh=7VCECl1tTOtNXuNtXn5+7Qlp0K0DWf0+CvDZkm6Xi7I=;
	h=To:Subject:From:Date:From;
	b=Tdms+ReHS7xyXpWFPZ+maV9T+lc4yGp2FvsaSeNHw5I0DzxSdw2rdqsVQJBehM6XT
	 IvXkhAO267gVbdydmt22nLU9MMf0ACI0kM0Q0w4O1NW0mYw0WwhyEMiZn8lrPVQmFB
	 Yvu26axHwE4wkH9Hd3+l+rrrFeNbB7FpUZpjYpijhamrqN6CmxIQ+lRNdHayvPjqjX
	 QvPL0hOn+cVs07v61idtON6GX84Zvh538XeP1wecvahw6G+JhjsbmRiDHn9SC+iu0b
	 D3yxJuZcaCZINcYK28HYq9Mr9IIPgUMEi3bOhzznR7M+JsnU4INIP+q4ooqmEA6jA5
	 EF5VO7tnfJTfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E873CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610459357.9692.11457045311753857159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2040f05bd76db3507a5e58164b4de036b7037f7231714b68dea44d4e87639e32
Date: Mon, 25 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756104593
