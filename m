Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C6B3033D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784286514; cv=none; b=e8m+a0e5GkuPETmHtmTqZTk6XsLsm7rmyqGhShsxXlxfGaTflt3mcC4aa/qqoMXQdzPWcKFWocL+Y2dH4jmJK+y1Dgv//Cg6n1KbiESo6I2XHppzAwWI7n+xX5e5/1Zupj4zg1HZaunQMG3ygQXhBCt2rmVSCdsZxJo/GSQfzok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784286514; c=relaxed/simple;
	bh=PlI5AWwtCPZQMwZ2vnakPwaojy4K1Ow90M4awpzmOdc=;
	h=To:Subject:From:Message-Id:Date; b=FUaSB7W2GmGvPv1DyOt/InYBHtxtg2NQIvwTx3F0Q0DG6SuJ7kycxAxoFd9FY3dnlVVOLwCV3M0GoZdEAzgrhsxL8EVQGx296662MVuqX18anft537C7Sai2n8oIwB22zmOLYJSqHYaz1e18CQBokukBt2s2HqM6pCQGDJfELw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OulisHk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OulisHk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8B1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784286513;
	bh=PlI5AWwtCPZQMwZ2vnakPwaojy4K1Ow90M4awpzmOdc=;
	h=To:Subject:From:Date:From;
	b=OulisHk4d/iHIW6PPJUtWyedVlFgrnSmZsRZFEa5cmbwrP4WcNDI+maKwk2kNLp4k
	 kY4oJttSuxJ9vIMRpFZ1VQ2enFtjhyzlsgLgjWsdXoQKHa7/W1gUv0Kb4u22naOuyD
	 KhvD4cBu6eOpi6J+byOToFlmjzUBSElj7Uc9wx7kAucNk20SGI6JWiecW8g/1EHUMO
	 lEQZzVCAAn+6hkIreJR/5lFNIrp9mx7oGPtGSZgJcpPEXZcw3FzBp7ialzmAcqhJI8
	 eQ9TkZu3UWSm7iWZ++UQTHbIQTbqqpmSj2INKZGancEQtNn5q+ihouJFVFHw4jVC8I
	 P6LeiSmZ0z0QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB464C44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428651369.13641.9878164851096898023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3091dd5d6641458811df4e002de54be276ac09bcdb15babae32baf6a24f9c2
Date: Fri, 17 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784286513
