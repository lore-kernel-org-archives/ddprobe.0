Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2B51FCF7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760395794; cv=none; b=kFYpsUP4XJZw+io8wQ65bNMa+aBLKmOHE0CqUi32AfL12yuU7//su8TDlDr+shAeK9BWhfFtL3vjWGyKiPaHNQdjbHpeMd1xTlBHIXDEk0txsjxjpVYnRyMQvsFRVbA77u6KR4yYCfsriL1MavG49XAP7TxIvKa2kQ9qnkihezg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760395794; c=relaxed/simple;
	bh=Hog+reCEZVyt8F1G03t1D+fIFJH5MnQsDt7FZ1Yi4Z4=;
	h=To:Subject:From:Message-Id:Date; b=b6p/MEuqcsT5M5GRGZcdjcbMG/qkZh1v/BheSexAEW5/NESoj5IoodWkpJMfaWfX5d0oKBYKxsKf6lBSsFJdIFsiK/IKGcyhg7p+uK9bKehxaQ2gKHQmGuaX5JEGTiYYbv4aHwiEjTMy39PC2FsjqTx/fJ2jIUudzjSXtKV3LJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8LWYCLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8LWYCLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0F6C113D0
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760395793;
	bh=Hog+reCEZVyt8F1G03t1D+fIFJH5MnQsDt7FZ1Yi4Z4=;
	h=To:Subject:From:Date:From;
	b=a8LWYCLVgkx7+fLwj9LqaD6FyVPpsZJlDBT36s8B/hHQdDXtPbZ6KTTtnBRPAIO18
	 th7HCHGZls586JWj8uwOgzZKkSajookWBI7WH9bK9X2OmaDPC8n8Q/daHN0LGS+Dcf
	 9y6BaRSUfhQIxpuaaQozJEFaM1mC8avFHCkAZ/cUB+NWZbtNBs9GC1rEWUTuvBhcRJ
	 yzLSgo/QqeylLPeOfQAoel2dd7yF6+Dm0+dLHaauDpcbIuRw45rgwI0L13doFWdi7F
	 jmB0V6KT+vsl1gJeWZtqf/UoaXx5JQNQgQFWynKqklTVj11OfLIuZuLmCGFEp0a4BM
	 Z005SQjcvLWzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC4CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039579357.4158.17920676278577469994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4440cc4f5da1b40a1f07a337e13b86bfdf665babd94f0ce877bf47afbad7508f
Date: Mon, 13 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760395793
