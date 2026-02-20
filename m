Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA56C329E62
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771605894; cv=none; b=mdiIxT8lKnxkzigkn9U2sYC0ftaOVC13P+pwk1KOs9n6+YioInppOHWhHNjYldsxK7zT1/0zVNVolbbw20KITNW4/eCK+xdgBYtTx5yIAJx4VJsxgWeFEl9ySJL6t4kReD3VPUahWzNm2LceUKVbao0Ku08xnVM2V8I4Z9vpwYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771605894; c=relaxed/simple;
	bh=79uAPWzvtkFquz4PvcoiDEgKn636VPQPcbwuXNCw4rk=;
	h=To:Subject:From:Message-Id:Date; b=h8DDYJ+yFEFLtmuR+abUf6CKclwCpm+RGNoqH55XRavu9A3YG1ckRrxWYQ/F707N6251rOW/RPlpLoqNiml9mnALA0BzEEkRF05c06NImgb495vh7nAjUd7oMQXmDRUY6XwUUUAs0oJvvomIZA5eGBhs148nvPnDeY7heREp/bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/YlvbIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/YlvbIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771605893;
	bh=79uAPWzvtkFquz4PvcoiDEgKn636VPQPcbwuXNCw4rk=;
	h=To:Subject:From:Date:From;
	b=g/YlvbIPXC/YoPeYRXS/7jDN01UUyHN8euMfUcPXnetyYQ5xGn0y203T7M0pW7thl
	 nUe7tnjxrh34rbvtUlalBbAFQ7KRU4RpXlk1Vmlrx/rE184pZS/71W6nyAxz+Uyqoh
	 AnCualfLK9saksZY42O0S431auSoA4DhEAMV/TwpmTbpKXAZWjaAiiY4KTEBqQ8mH/
	 xBBoXyRElJT1+cBZYvx86FJ7k9uFlkh3BX13bKJIZbOGNFucSKjER57/xXlgWmqsmu
	 svMfh4MupTWqX7wyHgIrUWnTNwX9ITGfSiONvGileAPOJBQo5/6CPcn9pAMuE5/7sB
	 MNOsSzid3D4og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC8C5ACC1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160589358.12374.9077419692479730361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233d64ce0177f8e08d964a8789a278fb818a8a4def3a940edcabe0d60acd0837
Date: Fri, 20 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771605893
