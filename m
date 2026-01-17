Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E8A3054EE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768649634; cv=none; b=imIXtmJuWwJ07oa+pHFFscEVPyzkg90YougALJd0vys8Oi8C+cz2P027B6OzIfQW3rq2lPJH6cyYaPGBe9OGieHHKJiiNZg3q1w7qceIDOMW/N1fqVdzhXH+C1Izc7vPIfTTnV0YMvSHggK2z7teQGaJIJmYChJL56UyrNmmp1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768649634; c=relaxed/simple;
	bh=ohYzanudtyt/w5z1M9dLEIp+pGP6bjL4ZG7x87Eg1yA=;
	h=To:Subject:From:Message-Id:Date; b=PRs1Y48f/R2HXahl50XdNUmau0lq6MnqUJInQbf5+kCAdIIYkTyEwEuOg7DYufVQ7gtbKim37r8xzgfYXhef1rgTD9lmtP7ECpkehzhpTcoMsONmzoVMxOhNBf7hmFm1QA+2Hedq1DCCpLBLpsI06V7Y5LNVTOyZd7CV34F5IVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY1E4z1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY1E4z1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86ADC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768649633;
	bh=ohYzanudtyt/w5z1M9dLEIp+pGP6bjL4ZG7x87Eg1yA=;
	h=To:Subject:From:Date:From;
	b=LY1E4z1xzhrKhwvs8BYw5d0FBvUQmsueUnFP4c5GeC9Wn3r0N35FeZDkXaqNa4QK4
	 JYfvoVzxj24Y19yLBF1QVePS3/tvG+6b3JPeFEGxfj04a3+ce70towa8U5KnluLY8c
	 yKFevoZhVNd8TJmYxSHGtk03izKX6k/1kUtXbUgGz5u4+Ol1kaJ6wa8jyNN70LtKPm
	 VOm/OJRu26Y4DKm1gfsDQDgdfjEmYvgrua71yhEMBVvzniZrvxcSW3UovynKsnpb5q
	 vhIipppM7O/zYwaw8CNOvKvG2jwZNAZ+INTBkURRiiEhKiuh7PFIvthKF+AOkrfkCg
	 6666Xgb91FADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941A2C98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864963358.31470.2711993632475033456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318add3e03c4bdb0e26ebe515a1d7165f25ef8495eafb114aedc1fbb941c70eb
Date: Sat, 17 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768649633
