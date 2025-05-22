Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8D213BAF1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747943393; cv=none; b=Qgm79IhcTQ4TQ1d65JjuQrWhra/Yyi6Ek1MjEOldSA+78fCv+OjXrJyC+No4AISgVqoPH5xJnNKxZsgXWlZwJV2+nyEZFM3idBlPEthKjoxmGAwoszjDNgmEaDcLb8z5tGthisneuNKkCq4X/NNPFiqmmppCIB3B4u5GVa9iXW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747943393; c=relaxed/simple;
	bh=aWLaxt4yeooS6esgcNRvJHG32E7i7+1Rm9LTyCaLBfQ=;
	h=To:Subject:From:Message-Id:Date; b=aavnwcTKaVvMGajejEN9GEztxS9yahuYtf44MuHujdS6f6CdsdkyMZWMmQZ8p/p6imMJjIavNbVbl3Qgl7H3jpvYtGCGKImTANDcW2S3cpBLHcyvZArl6NtGKq2JEqQWgKz0cOSZ8+9NxI+vecPAI3eSpLoc6dWsuDQw8Z2pn18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDEuLwQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDEuLwQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F2C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747943393;
	bh=aWLaxt4yeooS6esgcNRvJHG32E7i7+1Rm9LTyCaLBfQ=;
	h=To:Subject:From:Date:From;
	b=LDEuLwQdreuT5c70bPn/g6er8VUoh3JYZGpfyKGQw8MLoATEKbQ6CNI0kpKSHveo5
	 nzpfb2yi6YdWgU/XYM3U++nhfJiDhrwroAy68DSTo7ypSwL+kjoTdXmtniN8JUGEu8
	 Ng8Ua4VMJHWBFJBlJdKVih9AV7Ve5zBvTRnJagfJ00ZDZ/x+OUIooY1d4b368eYZpO
	 brNjEoj3DkRWBtLH3SgD26YIwV+HOVCUFVqfGUrRsLLIX+YtjWi1C7SdhCwlsMgQYM
	 QycNHuCUf7zqh8C+ikn8JOpeMjucP9ryoD5ywX4WwriWU7o/p6VmPQD1noZ4ef05NH
	 M2xP4QejvXxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9523FC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794339357.2596.2515372555008523842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6209571f1fa959a12b56ed4477624207ddaaa772c4af84343d8b1326d987dfdd
Date: Thu, 22 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747943393
