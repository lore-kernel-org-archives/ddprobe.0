Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283A6320C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724652354; cv=none; b=NOAC+iqMFxUYPh1LJv9HmeUrUlBzpBAQgrvkjZrQDD07tvgtE+ctDFu+bT9YAgceB1R5kNt4YKK5dZ3xb2e+qAOlj4u9tyizjIo6wB0+BNW+grqUpuPKhs2W4b8H1KwRGkRkcPHgeroZ8ydmFpB6kSCVo+cOzvgURcRji6WPpeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724652354; c=relaxed/simple;
	bh=CwsCZxuQzYl0jFNvzXiryVS2xkZ3Crz2Zfqtv9wTHzA=;
	h=To:Subject:From:Message-Id:Date; b=eb2kZc97So1lyVSuTcJjRFAX6pyHt/2umv4Rq+qrcKaUcbrgGu45g7N7rpAcXhevSOfYTqszJbrIDdvfV/qjTyjYUvHDOWIxCKzUSmxPY+kOahJuzxMbZ7yNQEH3w8FfMYDwFqYTgWzqQ4r7y0hmrtGFkR0ESR9mAX3o1ymIOvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDSZro75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDSZro75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7652C4FEB3
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724652353;
	bh=CwsCZxuQzYl0jFNvzXiryVS2xkZ3Crz2Zfqtv9wTHzA=;
	h=To:Subject:From:Date:From;
	b=NDSZro75GN/l3Kv/wIKRlZY0KuViBHSZepZ+gpb1Z5SS1M4WsNVhUdzg1/Gn6HORr
	 5e/bF8siAcpGBuxYOV+JcuJGjDE7fnjPE50zw4aybWSLkA8VgYOphapZlYk7wSvzw5
	 vepLQSp/2W4xMR1mRvtitDECnzJJkuWRDdEylE6WBnGzPhzik86CZr8Q3p6FqU6hYw
	 kCVA3UtpgAeacuKoWMJLZikAce3WY9zWZ9sf1RMt7zXJsn7oQTliXmzLEbvYHPc5Wk
	 7uKPlUpK1weXd50agjgv4hC9S68IlzuI/nkxWWcrUe3Wh9khTMzbzYON0UoEFiiYA7
	 PqCxdu6BJ4V8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF4C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172465235358.22595.9158050478736265619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836e265f313e0fbe5796b3cc4f944cbfa3908952257455b9061c246f2ee6f688
Date: Mon, 26 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724652353
