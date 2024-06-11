Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650226116
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718087303; cv=none; b=Di25Ad6buCehWH9s26oXNlp4Z3roNlTiQu3awKjmQmNN25LO2j9+87cYya8RxT+IKDKy27tymUO+9MM1QFDtBK7Syrp6C1Eo09R5e2lAEXzHqD/Fh/86337414rcFSJ4+WC2yTd9BQ70z1H0jqX+/lugVVTVDn0zsGE9M3dZ/KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718087303; c=relaxed/simple;
	bh=PstxhNdyrqhDYhpxGupEibkRcWg+oh36NCJ64Ua88gQ=;
	h=To:Subject:From:Message-Id:Date; b=ZxLDN42XJKGn23hrW7wtIPDsY1gVRWsv24mGLHnIYLJcDlGLJ9TgU+PQeyK+EaGuaolVw/8dz5feDoEQB76aK8b5joIQ48jczXSvGd0ifq1pFxXmhA+Rl4/AuPy/Ucnpj3RBD+gf9ilNqS9O/MMwPwaha2LmDOIQ8LnQLVWiKRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZCCVID4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZCCVID4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9E7C32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718087302;
	bh=PstxhNdyrqhDYhpxGupEibkRcWg+oh36NCJ64Ua88gQ=;
	h=To:Subject:From:Date:From;
	b=QZCCVID4noi6UZfHKQvJxaCcLT3S2TntkIH1NyZgJonz/ybpega2rH1udkNXI03Bj
	 88QtyNOTsj63E3GCqMMqYy9poXvFodxmAA8f9mIc4E+Gdc9WndFej7BSVXQ0jy1PJO
	 TFKiw7yNVM5BOKXSs87ysHHzwvOcZ277LZAZENdPFpHOVoyG/Rdg81tc7d5o8myCsU
	 SpYKSDOpAgLCAM0dGAln9lr7peRnR8Xo3JmwXTIrccUD3IWm/Afj/hOrdVJscAJxJx
	 GS+8doGoKK0Jy8v8TosycWss6MRPx77wSatLu50EI8IDFlLxePceo7F7MBfMaCaZFw
	 RrahrM84M7kNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6145C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808730276.25855.13215567864495151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4972ee0fee4bddbf96da570a6c784a69defec881cab0c72fe0774006cb5fbcc9
Date: Tue, 11 Jun 2024 06:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718087302
