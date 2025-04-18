Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433FE433C4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744992594; cv=none; b=ZJGaCJCRH6GJx7sH3fh58RL2qKTa0XGgs91M+YvFMmEa7GR42rRAyQERWRXx1jCeltqKOecCXfr1QZub6gIjv5+BWRLUHLFXMwxenPc3KjvE+fQAGTS8TUcNVQACOHWhT4gnzlq8RKQ1mfV20UFXMKNOscfnfGmrhQUoNwtHJpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744992594; c=relaxed/simple;
	bh=RP0/k2d76CWzPOZVSoGrkM2sT8NSup4HsAAWm3AsYT0=;
	h=To:Subject:From:Message-Id:Date; b=L5Mc/eGsB5FpHrG9rwA99T9SgXh0slEPfcheER33ZhJO8os8ZJV9sSJH79HCaKLpEzXfsCZqrcVZa9ROnK6aybKXWiItQSb4cd+X7V85UXdrmdn72781p6nfMEJlSaGZFtpUNu5DDOaoMyr5Q5SELfVxdhum6WFUMiBcsRQPjMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfPrVcRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfPrVcRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5B1C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744992593;
	bh=RP0/k2d76CWzPOZVSoGrkM2sT8NSup4HsAAWm3AsYT0=;
	h=To:Subject:From:Date:From;
	b=SfPrVcRL8qnDrrpIV90qrr3n8Mg/5mUVo4NUozLomyvpV++cbBIOXa4XcGpVOR8fE
	 V/uVU0W4uXGxa27EVM57Hw3JAY8B4thiEpWw8wT5VyloicGOihUBNj230mjQNQYQMr
	 oJ+0N3kO3Z4PNXwIfISQsWI/ePUD+8Q6KaEqNEeXYyBGkG52/ZBQH/fh8AN2/pyXUU
	 6SKvmSvRq3dWezyyT5Ij+r7jNGVyidu1HFzBSniqg1pfLDqsJKTBTk3mkKDUqzOjXV
	 2DQwbwn6B6t+9BQCTz6ruOuHow0srtOjpNO+suEfIPKODgbQeOPtuVmerULXdDlO8x
	 NtYv+FKdSFXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97651C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499259358.12684.17749127165412686680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd830a64e0ab41e6d1f3ce6e166e97df2b2be0da58a43478ff98a93995f399d7
Date: Fri, 18 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744992593
