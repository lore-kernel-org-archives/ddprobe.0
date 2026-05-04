Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280841A76BB
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777858054; cv=none; b=tvT50pACQDv5LI+ER/ODcsXNAjE4G421RCGmrIobo6YvztE3MR6i32kgbvrjWK8D5ag5xem1qyfM7KTqZbLMFChyZjQcaa/hHuZ472e1QVQeaFdVEcuGogEHUDyKkLqrMyhKSkFW959rt9PAlZ45Tnaqdo5trhe9XXILHy3V3WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777858054; c=relaxed/simple;
	bh=y7OhvaVJZZFPb7ovyu6srVcxqicAJvnEAcmYFQLvxvQ=;
	h=To:Subject:From:Message-Id:Date; b=MCGzryA5/oEQaNSkp+D24PiIjG6nKmDOBHIrqq+MUmuXdKdvZT7vVRthpI3NfC2btPumjjzjtIlrPGxwIU6FlEKCs8raKxvz7gjcBmbZC9CnKS94/SDJXGQQYxZnBvC6379afhx7z8n8Daq6OEpSD40FV8sUsapVIJDdEtjx03U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njZdiEhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njZdiEhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C299DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777858053;
	bh=y7OhvaVJZZFPb7ovyu6srVcxqicAJvnEAcmYFQLvxvQ=;
	h=To:Subject:From:Date:From;
	b=njZdiEhstHPbSpNpigGYiWeO1Wazn/llxV4PTyuvGjBsjjZV6yPsFbJ5pVSSBP0Vp
	 +rhDZodxfn9OZTvmPUO486WeaTmYRx+otSkc081AIUWuxpE0JtvlSQNplhgHHW54Mw
	 fIQPr1g3ieDl4rVy7SdgNpn1qzVhvCTJrlKIHXNZ7iXsY0YupCQkPiLjbY40p+r7Ly
	 6F4t8Adru3TnaQ1eL5cIUMmbsyz0QUg2AOcRf2K7R5GwogZRIpwtWjQI6/YOqfDaIu
	 gHi7xvyadS8B88xNr7Z7Xqc8bLcD95XYuHNJ57A9fxT3RzHBJA2qFRUHU3iw82jtl8
	 He7DQZ2BJ9xxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0063CD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785805368.20745.16268261932020482410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183722e16360edda6ee0b6df58a35dabc2902ead9f2b9c921d24550a9cf240b9
Date: Mon, 04 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777858053
