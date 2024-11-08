Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1531F1E32B6
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063954; cv=none; b=d6IKTOCgtDtUp401k7ooopoYc+GDau5HK9IuR3rR5fhXQ/dH0mWlGECN5b7y+S87ROxfwZ5zhUTiAGfaJLr/sWIv80MdNMIRj28MC7/dHKcj6m7C4qWP7YaxYqIFhfcm5wU+xOgvSAph+iUXvCT4mTikPg7Xc7d/zlTNwA1cAj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063954; c=relaxed/simple;
	bh=JNr/45IzYge/MjLvi/9SfJ77TFZRwhyinTX/zYb36Ys=;
	h=To:Subject:From:Message-Id:Date; b=LdK27+ZY7YFwT77HPRlbtrWl+jLmoAGwdYNOKG61PXl5d6Q7EiMM8V1mavs/t/uuCxNIaWSG360ZYjLsoQVttBYIe7q7A7bsnAX9rYOQggGd4BB0E2gbkz0KvzGfqz/5VnQLOmxuJ3nvBfYhNmIvtIJ4hnkMSRjrnYS3jR0oI/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrHvND9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrHvND9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A410CC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731063953;
	bh=JNr/45IzYge/MjLvi/9SfJ77TFZRwhyinTX/zYb36Ys=;
	h=To:Subject:From:Date:From;
	b=nrHvND9STUMCLkegAGjsaPIAE0WjWPBUJit6zQUeH3tG5vHg2diYlPdm/Nnq2RJvY
	 ZTGSIEzlymIInz2EuTTHaIIov57CeYx0FAKhzXjrUhdGZeafdphM1XAje+oDaAxpM7
	 ML5omsMdIg7jMPGSUf9s0PHUwx313wRtXgtmZfGAJXeEDzOElt6fTI4B6lbjDKAGEA
	 pANhw0akanJj9Sl+LeAqqO/j/Oj0r6hTrZg0moW0vK42p0fTLz0xwV2hEA3wDEPQii
	 xiu0ZCS+uFxnKBC1ixG8JHv6lIYZXnAqexnoEG0ugUY3VKFKWkIHbM8U2dUWpBfEDk
	 1MAUwPkRWoc2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932AED5E15A
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173106395359.15504.8660555830576671249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af60ba63ab663b863245c2877f0bfda94b6ae831284af60e505608d49c9b67a1
Date: Fri, 08 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731063953
