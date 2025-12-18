Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DF7213254
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766100234; cv=none; b=MQWwnopg9VobAJyEzY4aR8ha7qXnT5AcfRBQ2sCMhTQfq4TaZZfKEipowFM6dNTFNAqeRmVoSAjPbZ1NgxKBPgCLew+UkrcfEhzIZm2btTH6tv6ZhH14ijjcemlSiUq3DOLDlWU2E7A8sKL65xmR/3J5FdsisjNIgsM4suEvEv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766100234; c=relaxed/simple;
	bh=naaq94kZ2YJQYXe26hmwwMgcscG1ZnPMvwcBNVKfbK8=;
	h=To:Subject:From:Message-Id:Date; b=gCccSf5r6vIV7ZhN/6ZxAT4ce/z0R2YFpxq3+KOI2arUuKxFJ7sg61yNUezP65hc4yof+YjeUh1UjomXfbLhqnO0aJfaeghV39a3cw4QTTp4q8r1RxJDL4C7TGFO7Y4chP2UzSw1/hJuc0AvbsRWOWSurU+5w6VU8v6tlf1hOB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW0pBuW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW0pBuW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E8AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766100233;
	bh=naaq94kZ2YJQYXe26hmwwMgcscG1ZnPMvwcBNVKfbK8=;
	h=To:Subject:From:Date:From;
	b=hW0pBuW3d5pHn28ccWai26/lOqe66m/bYbOfW4GWZFvUbEBrnXzafh/ell4jKudLz
	 fhsjSMwU6/e+d3Z4gwvcYPh8oyExHquks3VprTwuxbXLHcTJViYA7ACrnZZDiU1Y3o
	 QHOPxZ7wZ7n7CI/E5C0/u1VrsakrvpbcLkLVBzGQSqLiWc6G4TlVtVmd0TJuN0puzr
	 p5xEiosesNSujzEGliUfvLfuF6fYc3BTocLcKXewJRuF5HHuVxN/Iv3ugh+TTx4wsR
	 ulhszITWk3FyTnhoAmRqVcGUu6y1ANVHTXqBp25tjsa4c9IZBdNsbGZc5YPQiBasu5
	 j62Ephbj2hiQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032BD711CE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610023358.24573.1577503023559317934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6792376860a1cdf91bf682795465bfb2de81f55d37deb72a06fdd8e2ca001f14
Date: Thu, 18 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766100233
