Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE776FC5
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742869794; cv=none; b=S8CTp5rsTIr4WVlpI56y3uIS+bMLh7cp0rJKZrsSdU6rZrS5FVhD6jK1gbFuCKIb/B97YW21WFGR38JBADXoBQf0E79/wwE2OoptrRdNp4wpBT0oWW9pWU7VCKRqHFAEPFEqSVUwZjUlLM60rkIHnz92UQDfx6LM+NzCNoZIHEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742869794; c=relaxed/simple;
	bh=CoeZVur0lQvpj7W6kfNQ9MdxTpBWN2U88U/5T9NWaMs=;
	h=To:Subject:From:Message-Id:Date; b=QiYlfVM5craC1cDW9dLRTxoUUahPgFqGIPzAksvPIGp6K4d228sujSKwaDfb+UEDK+mAPZLDbk06OlW9Om+EJMZGc/1fCJO4f5V37Cvh8UepcyMXWzOO7cPgC5LcqlyibBJ5AM+IZnR/6gymzYJTbo21xjITMqPoxkRRahLKDT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBWpPD6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBWpPD6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64ECC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742869793;
	bh=CoeZVur0lQvpj7W6kfNQ9MdxTpBWN2U88U/5T9NWaMs=;
	h=To:Subject:From:Date:From;
	b=qBWpPD6Fd4VbFbZx4SPQXSkaFi+5TAsyiT4IItu19zmOM2EgNk+woZXDNZnYZ02p9
	 a4d7hri1a+i22YDNa9qHYyByo4acg4Bt04xFqg8Is21C1rXRAGcsv4+2X4m25E51jD
	 9foHmGQE8rj4xWLQeaer0AM8L4q5auOeBbDPDxlia6zJpjf0Lz5BBpUVhYW9QUxJGY
	 8doVnLV9Ly41erCF26SAjPj256luna3p3rc2NKcb34+AdubQ4VK09fcuunSAfj4ehc
	 htIEcufWDVsyNbTONNNLcjsUqLOK5Gimy+viEJLRSxq17K5NQIhCxLUayIX3L4ix2c
	 ePi+nXN63KhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B670FC36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286979373.2560.16053067235796720602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60f88acffc20b51185ceffde35c829de46a619de29a09c3dce12c5619cb7461
Date: Tue, 25 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742869793
