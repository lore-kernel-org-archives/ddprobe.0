Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAC6389
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714336343; cv=none; b=KviRzIR3xxRzhg4xRhfKoB4f2KCOw/3F/Vqk8JpiRFXOqJdxEAtzvanRxQ0VNJb5lfwQdqXNBXTnBNkfffiyfq75BdOR7zOSQrQDyJi43zZQxNQbsL5yC2jb3AWzASFuOXzDf61WXtyy6Ehx+PAYAfskbjTjIkvpVgGQ/UPf0is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714336343; c=relaxed/simple;
	bh=q+iIZ/2Ch9AK/caKXi+V8IVYEkn6MgjdR3YKe39Zwlk=;
	h=To:Subject:From:Message-Id:Date; b=j+F8V+0jFIz9A1D9fRo6eDZNhfLsz64jECEFFW7k5i2KytDVViAuB1UnXgwFgE8NGhv0ZbZ91u6/OZEWwUFBEP8MmL4C8w33VGBcDGQMmj2RZJe0fzbgHzqqKY0nQlXn5nkG83RhufsVCV1HAR73AAVp/4J5YYBoXqVmCB72vC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCb3Iw3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCb3Iw3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6386C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714336342;
	bh=q+iIZ/2Ch9AK/caKXi+V8IVYEkn6MgjdR3YKe39Zwlk=;
	h=To:Subject:From:Date:From;
	b=mCb3Iw3xSk/+bNFYdbhnW8TvkDpjGUvux+sUQmFX807vr6FYox6l/ub7tAxKx/NRL
	 lefmiCqpiYX+H91SA1tIgw1GgqF6G1NnBoYGfzAW+khTf3UIGg7YK2C0yDZ4RZP79o
	 gk2ZI7R30aFLtqgW8zO2vpw+30nU8tYiVWSS2GKPAoHgbgqa85PJbUw/tqwoJqVCGk
	 cFpx2ncn4n5gERdoShLU+6v16WaAN4fQJ8t2wKptCmeRkbYvFB7vTGfOPc8tuoCVMP
	 xJuEtcxDYdKFfpvECo5I9KayolkPsa14dxFjpimZF9mmer21Nh+XaBW5u894qQg5sg
	 a7VupbE6/VWjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE84EC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433634275.17580.11206508504510326500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c21b251b65b7bcfdcae1018a5aa4c2f941a33812fb31de77a2bd4c4b89fe278
Date: Sun, 28 Apr 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714336342
