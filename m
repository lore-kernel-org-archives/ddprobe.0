Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190CB28466E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756809594; cv=none; b=GTldMqZTJfJExxybNIuuc5DoH5pMdJsc0MG2nGqUSGmgbnpC6Co9l4KWz/JNTRhtRBJdysQFsCLhRgyn+kZDTS2VZRqv1xH4TT+gCnRC4Mh29Wsne7pU6WdqUePpvIIFGCjuRLZetPJokm/Wvm5ggqTxLtBQbHRcIxmp30yKf88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756809594; c=relaxed/simple;
	bh=MUp0mVOhPus3+gJDbwqOLHOcgBzxzA5wNMalkVyAM6E=;
	h=To:Subject:From:Message-Id:Date; b=dJfOqqAUsld6RO76I8spi9IaTjyTcv1f8Ulsb7a2XjSXJ2umGTpMdG3W/kTga/SOgIbqL7dA5gE+NdHjJTOrrfoGczQNmtHrQRE/7dyBSHL2alkt1OZkRoRwO8ThEGtvJ3Bs60AHQNKDn+4sHJdd/FdX0W8EtiBgUfyMUbp3CnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXr/hlEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXr/hlEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD50C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756809593;
	bh=MUp0mVOhPus3+gJDbwqOLHOcgBzxzA5wNMalkVyAM6E=;
	h=To:Subject:From:Date:From;
	b=pXr/hlEBZ4H9uyq4/84m9GUNTAcuszYS8dtTP8Di650B/mEF5Bfld+h2hDBVhA3gZ
	 jfb15K8S9oFKBb2GHuRxdBoBijS9ossNQg+vWb1lYLUwfk7IkWf3FciponzVQUxNj8
	 Rd4JfmPAjL09Y3UtGeyl4w9q4gjV/cWK+x2S5dTMPq0onBZRv1bZpXsdnb4m/VoV1S
	 vEOMh2mD5DHkRPNqvphGFYiyJ71E9Epitkm2x5Di1KCFhlYYxCax1g/5ktrKq6O3BC
	 Qss1jPaQNdIMP3cyT89xirJsOx8bof5Qt7pVhyXLJ92eZNRiM0Kqijn0FK4TinHzMz
	 SajrkIgHbPgBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC18CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680959357.8011.7361164402850337299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d03849c0d98aab6165ce11961a44524538c8658b4a57f85e2d766eabdce4d5
Date: Tue, 02 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756809593
