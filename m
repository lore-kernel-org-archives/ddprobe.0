Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAD6234984
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752507594; cv=none; b=SduNR7jdkA50Pg3/co95NiJ/2/yE4rI/c2F+6Ku5SaG+XxxltRVbTZ2BeuK8bsJrqhn52pducgFCtKoVbvZ2bthxL/lwynaHGItkhww63HCLqPosmjq+0wLjI1ZQdntkSqnxOptoYaO1eCsx6kOv6zCN+CxpSMhUyRCbHmEUCr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752507594; c=relaxed/simple;
	bh=ZstaHx9quE28pBdEr2OX0/dZYpbVRqWGu9AlZW6VfYU=;
	h=To:Subject:From:Message-Id:Date; b=pRdg0Vk4S//oUisAQOU/1v/5p+tSvZKzRaJFzUxQkFVF7955I53uHT8zVWc7kwRis4916lEU1Az6B1QsgvmTvi0MDfjPJv3fUzVMrHxKjENgFY3dBPGEXdRyI+C74dK+JLxy2LxUhSJq4cJZv7OMB0R/9Ef0oFxhV4OeCWCio3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFeL4e/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFeL4e/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B346C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752507593;
	bh=ZstaHx9quE28pBdEr2OX0/dZYpbVRqWGu9AlZW6VfYU=;
	h=To:Subject:From:Date:From;
	b=dFeL4e/5ysFKDCp0/gRZwRwo/37dj7ImPOlCB4/yAsMllkE4we6BypPquyLK/wprZ
	 qS3daNT7tuTfuP1o/4yZtBWT7B72okl9MbVKk3g19NjVLfdjmOMjGtiYYNm2HL/OgA
	 VWO6ZcL9rYzIzpiAO9gEg5YQIxW750D8WzJvvKzaFTeMBHGmYmjTeFeyIcygOZII4E
	 IKvGP8q6taJ1Ohgv9JZ11caQs8KYZOIEzGJHhCKPQf5Eke6sHjPoEjqVXvKP6nEeVf
	 ZY7wcFhUBSqUx/y6x24KITgq+1RLfCD9++X0L/ftR4z1QxtPhX2zsejEUNR4++Lpo3
	 qeWtfYQ5fXlFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FEC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250759358.9000.16108982682377687035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91fdb3de76f7d5870a11e05f6be5641336fdf7513d52b08e08f88603658c298
Date: Mon, 14 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752507593
