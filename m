Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6C37E585
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709116696; cv=none; b=oaXeDe4yhfoOSp6R2iA74wjjNK5ZFPCbtQr9FevGYctgomp2mqR39H+MnVqELfZ0zgbxfSe3BDC7Ay2BKLaGbHnnbC47CzfEPsdAdzLHvDRR+1URgZSRxkzZdsDb9+VwbDNLGZaGW79/3ywzgF4FkRtAblP451MOOo9shy7JqrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709116696; c=relaxed/simple;
	bh=Wk/sVq7SOv6PEdXHevIA4jhPlUkaJFDREH2MRFQACfU=;
	h=To:Subject:From:Message-Id:Date; b=Ehrgqbk0oWNUf8DVLD1Wrva4/moKbldSDHPcJ9RmPClw2KuRTGku5RjWZemJi8evMo+32Wsiw+nTxZfiQEQI83fnNdpJ4sXUnpRbelJ4pf+GCLyBc+MChk1JY45YsZZY6xR6XKYL/0gwMb9sV9Folsm4bcRkQQbqQ+s5cyOU0Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCeCVltF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCeCVltF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5CFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709116696;
	bh=Wk/sVq7SOv6PEdXHevIA4jhPlUkaJFDREH2MRFQACfU=;
	h=To:Subject:From:Date:From;
	b=DCeCVltF/DJ/Lq9sxbJDnfCMjFAk7pPZAzoOvStJNxqDfkY6CpGVkW5QJnzxEp+XA
	 rCcfL/32sa01sl876YbZWQmrhAoxx9VHyEF0D7SAWdmU9H2yE8Wwz9JRktW4i1yQsH
	 VLSyDHC2UqH4qcRSMx3M/g6UFSpNef1zKE/rywBApRVm859YF7ZGHZri92za8tEtg3
	 mIHkW1lgoPbw+sI2GTDnMVr0Js9I8CveC5pxClDYqvARKEto8pvRTVqvFvmCdIKE7G
	 OL9A+7UjazprWD46vos5ZUlMFxY96tOSlrWYsh3lZxAdsPOhdf9fNQShgI9B4Lo1ap
	 +btjDGRmyHcUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60861C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170911669636.4466.7216953024738107917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe467029fe79c2cb002d064c538dc30fe16f2588ec08a2d470134d696d89fcc
Date: Wed, 28 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709116696
