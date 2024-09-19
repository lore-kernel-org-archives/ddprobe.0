Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105623B1B5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726763754; cv=none; b=gqzERS1XIv+Ng3BnJWMUG2p4vyTz6A9e5A8NmZCoD/0UX7ghhtFgiUWbXpp1OJSJzk1FbvzJ4UA0MaAjbfIlg/J4GSDplHHzrWFCA8wylYE3fdjYE5GUlIVkK99Xe9zude15BYTcWVDI6qNXFXiT/KzLLjE1HnQcpiTPOMZWgi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726763754; c=relaxed/simple;
	bh=VxGWhMJvW76Jugv2J1gosPpucQzpSNPHxNo3+daWmvI=;
	h=To:Subject:From:Message-Id:Date; b=iOFkU7o14WEgCSZWiwzc4IRNHCMKVQMrITDlGKbd0E66afK1B9PGIyYSEvD+itDPa7Yurwq+IiyIBf/dWOPx16oWmw7Vq2RNvGfrrcte2HJcP8oiHRh5/2RbHVT60HW3byv8epfEeaBfUnyE5xoyJhdDfIEOuLKLnDWlOhI01ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/EnFWv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/EnFWv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB0C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726763753;
	bh=VxGWhMJvW76Jugv2J1gosPpucQzpSNPHxNo3+daWmvI=;
	h=To:Subject:From:Date:From;
	b=H/EnFWv4TPN6u8y3dpNLGOaTF4IKIoBT6I7WqU3alPJGwVQNe1QY8imBuKk4lzMA4
	 wwmiEfkRJm2zVN03RruG/Y14zNfA6TH/NHnLUQnFVRukOjndq+LjWM2CPmIzo2AWku
	 fR0VBVgQBEwcoRk2ShC9hAqCo2J6A8Xdw9xwoBKJL5HdczlkBEI2+QEsVsUp0HtgGL
	 kWRVW5VwZPIel7d2brqx6lKWyhTvKABSv+wVuHWwQvPP736Eov7dlxgpUgQF9sbX3T
	 WinfyTBtaQw9HcBdci7WpUXNTVlO6cs1BI0g8n4CNOhvWpBIP7sAkoJ4FjJLGdqivl
	 Fv4r1PMrxNjmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95998CF3962
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676375360.8077.9275341058547863365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c1b64fbbc3412d7c43150524f1cdae64e1867ea63d3de2b1c55c7fe85683d8
Date: Thu, 19 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726763753
