Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FE826290
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766874234; cv=none; b=oMog6m/Uonqf8VLJGUxZ3jSF0XjX79ngDRil4bb4iDTXL7aCLbNFfszlsiv72vWyHOnxgJr3fol/WbiwlvnfNdXbmZtYgC/oBbBw1wKFNbX0CpCiBmUVnztg9d+yCns6Lixj0XVj3Ft9DnZEUpXl7uCXnLlxCOB3Sy4rovUdolU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766874234; c=relaxed/simple;
	bh=ac8IavecPGKtZCnjZmWIFhpMZdiPjHo596XGsqpZUDg=;
	h=To:Subject:From:Message-Id:Date; b=KzZ2XRONcztNsoOQ5+n6BsXV/ZVYGavDKteS000XaPv9YOE67fI6/XBLVuvd2GkUR7uucs0/ETbxoZojtTvK9JeoJG5MzhOfhfRdtY4RhG9LabQKXszmO/DUzkvlypw6Uq9aB2M00PRZwg/gTFcUUEpa5bJowu4E3iGWAJ0XSOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIN0IR8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIN0IR8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CBFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766874233;
	bh=ac8IavecPGKtZCnjZmWIFhpMZdiPjHo596XGsqpZUDg=;
	h=To:Subject:From:Date:From;
	b=LIN0IR8YCeuLpVkZr0JepOJONvhQx9JqX4fMqS+hbKO4umIIVztM9AjbieXvB4XCo
	 4NePbAvivOvGifc1yHMcQ5q0HAur9BEkctv3RsiDWLtZ46cKej5/iTQJPuvSPKw/wr
	 CjQZDv0GjnhyxG/cJACtjNscS3sUaIwGuwvC+6QUn/e010JQFYT5OfnhaHLzUBCd5c
	 vCamrUO5RQE+AE3zdkGoYpqH1Jfn/7uIZL5qENtq0r4DigNM4TrxD3cPC8cSiGVrLl
	 6Jttxk8oba1vlNgDvkW35joQw/eE6oVUwvohHNW3jWbyj/BMK2c3vkGfNb3ZRACBzG
	 Gyd/fGCbPH/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA05E92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687423362.32291.9334583328093520795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5f17d3f51051297f5083549bce59351027ec24615904ec33b47629aaa0e4b6
Date: Sat, 27 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766874233
