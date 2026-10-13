Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562FD3859E2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791879034; cv=none; b=eXe41MKtan1mfGhikqx1TCAzVAbb6X0F/WVl8inXmKzj0fLgyIZ+AnJtoce5D8Uxdt14BpZqnI12b534v4xpE/SoNFFP9qIEBiRl39aUVz6Z7uvgQTbxHl0eGxANrMuYvrTfUiIDQrASDm2aV7wfYJtd22TrBUCFE3/781X0Ogo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791879034; c=relaxed/simple;
	bh=X1/sP0C7QzJJsD+uEF/2wRykI2yLS1mYIG3CutGqJxw=;
	h=To:Subject:From:Message-Id:Date; b=IUPxFopXmPn8Ma9nXO1BpDmolTcAlze8O2VJ4rz94lPsr7AMqM5GcmJpG6sbiWjgHbbPFSZ1kuavXYv6YrKk1eBukCTM2hHn9B9Jww7oMev4Wb3oO9+4Z5iAeFHJaVBvzwTLbdPn6MMXCJ67MtveE2hjT59tGZFLEi5AV/Neigg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHfIOmgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHfIOmgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1023C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791879033;
	bh=X1/sP0C7QzJJsD+uEF/2wRykI2yLS1mYIG3CutGqJxw=;
	h=To:Subject:From:Date:From;
	b=PHfIOmgxR8A4ApUaSyQTcGJoMVyfkuxeZNrdCv0A2ZIIeB9WI4BdilpBMUNATQHLU
	 5VKuMQMXPZwUsSF100Nsr8vWCH5CkBvdIeYV4Ov57r8wUFfN0TdoAxdc40+u+9yzsb
	 Tv2RAjlmZnHqMFUDlbqV/SWhPZBfeJw4hkqJ6EzqXgX4Y/UvkbjuKyJbYLsCqFgj0f
	 Vvst/a78S5JxU8DZW4SLoNbdzr9sXtLm7TXIiKpj4XWyMd4+rjEa5qIVfQ9UQG6DTq
	 mSYeEpWDjjL878Pk0URcj6q6iIQwac3OVS/htNihcTYAVZU1JVuHGSa78ChNVWFlFU
	 O44uR0T4lHPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE4CC6B10
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187903368.14414.10458406999334434122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2bc1c8116eea7316d485a47b479a2cc0ec5db6d29ed3758fa3bf1f1fce8b2e
Date: Tue, 13 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791879033
