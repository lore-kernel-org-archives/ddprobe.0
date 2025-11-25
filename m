Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7C717A586
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764038574; cv=none; b=HCPGQ5DDniU3qpyumJN+uGrMPgC2eB+BIlRMz6Li3on9bYCs1TP3MQ5i5+00ED/tXYaoxm6HmLbvVs051xNDpF/96x5VAv/GYXVscJ7X5qVM8u/N1z9bamspbKCUC1Jhl3XIARCEG2eIuHRNQQQ3zjpHN/16uec8qRAySs95WOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764038574; c=relaxed/simple;
	bh=lsK4j1PhxE0Fsuyr/v6petuBaGBl53ojRPYd2SXde+Y=;
	h=To:Subject:From:Message-Id:Date; b=OPPW13q3TujrjUCXyETEmkZO5JGZneoF9ca7h2Bfoaa1rQMxy7Tjt8feqHNHNxCAnU1X7XIL5XU2XlZcx7aRLpiKcjWhQcNAtZ/EdRQT8+dxiBuZregnfD6ixXPZzjimZ1diORaKG+l207hcrm4nWHJ1dElQUIlLRQYPHRHE7PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7gahaE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7gahaE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD16DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764038573;
	bh=lsK4j1PhxE0Fsuyr/v6petuBaGBl53ojRPYd2SXde+Y=;
	h=To:Subject:From:Date:From;
	b=n7gahaE9LTnIojtCpfp5D9We4eDpuBFjpwOjZwhViDErOoxN7IsCDp9GvhjTie6a/
	 kgFQ3vSZFn6UvZ2TC5Hj/arE6SMpR3jSSo1VlpiM5YGlD37dn4G+g7WKqg6TxbjGfA
	 h79X6oTUxxIo9diY9dTYT5E71zdJkJetn9SEYh9CO7HDBbbuGAvd3WqfJPkxeSR+dL
	 LKIJtDZ1joIWZdTxsLnudoj948o/JHxHVGC1MP9ASJQRFN1ZoQ/TD6KbUTkPHjMtob
	 WLDlWJjSNa7ct5vPUpoVPovjepjYfvTZ8MWlYA02awG6Z2hPQ1rwCoJtpSis9cQ57h
	 2FwWk2emT9Fvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D04ACFD374
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403857360.31042.18383836970101700456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f28c934d633f52c191ee150d7778ef894e45d16dc569cc4258a0637a1a76aea
Date: Tue, 25 Nov 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764038573
