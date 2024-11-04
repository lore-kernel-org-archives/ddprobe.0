Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B333C6BA
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730762754; cv=none; b=oFk19awUDlO4dTP5rW8RSHhkKxxwESuLEv3ofMaWRsTS6Z6S3rlhKeZE0vkgfjGjvHbh4rOnKHv0YXLrBWNG0TeqT3OQ1e20KSMCzjDZVR7g6RW5NVUYafQXQfagmUUVKUXfRxLE6Ns0DQ3CtKH9ZSPWyF6tk6WOnwE8NpPF9/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730762754; c=relaxed/simple;
	bh=IYgnBHvWDRl5EN2yP0sCIWWduWQZhBP4RyApA2Hvv3A=;
	h=To:Subject:From:Message-Id:Date; b=Kfse2HiJ0hrqz3JeBt25BDWq0f8OdvbVFsxnxv6vu+tBCXmBJA+PnMvny0wi6RWuJ9kAjVAa7EWlB8NCTgxuY4aGcUuYRbNCkZZsLUpHMSfO+gFtLRMBPZ35iRWgD8ZB2mVAH02cHlmWHcxSibwdYXVN0q8SWgGuWaPvzszIg1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCQZHIeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCQZHIeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05B3C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730762753;
	bh=IYgnBHvWDRl5EN2yP0sCIWWduWQZhBP4RyApA2Hvv3A=;
	h=To:Subject:From:Date:From;
	b=SCQZHIeVT+I/xzSXqliyq6r5GgZc+F3RsYQUpHqwuOIH49GzBzQ7tqSFJ/KzMeYBR
	 yGXN91YUzbIfGz7l0l85kbSF39hzVO5c39d1GyKknKiYBC+RxP6hOAL0Xm2xu2lX43
	 DiqEBf+yJPE55ge6MDrPg1Hvv3pLk9BhAlJwIuJGM8BjxANVGK24SBhxQ6yYg4laZD
	 km6LmtSm/QAwqtmsQ/EV0OGAsv+mRY5PecLUhw29G2q8Hg9GYm7fF8jz8FiI7w5dYv
	 NTK9Ty2ar/eBf7TLLHbFiomUnmU1GQhKvPOK7u5+z5V6ppJk8JXAlINd52uv1ogEBT
	 laB0vrgwO2iVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9372D1CA09
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173076275364.9808.12073689882337982250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd52b923262ba09b61d3fb52405fc536e024f011b4f64d3c050df7af272f22e
Date: Mon, 04 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730762753
