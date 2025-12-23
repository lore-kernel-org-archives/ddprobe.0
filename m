Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2522C028B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766487234; cv=none; b=jhFzGfHUNLQ1W2iwiJTH/yizU/zgmj3Zhxj5IanXjU/MY2RUMa+gSUbIgNDV79Jpafy1S04Sm/UiEOOSDbIpSyglwGCWkTGZI0jmU9oDDUQkpN+wc9VTnlGHsAPF9eety69QuJFChmy/MMi5I0vNd6R0loVutD8WLm2Skf90tQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766487234; c=relaxed/simple;
	bh=zb2280vREyXw/XbK4hvA25t2s2jPJnND0izceDsJ4SU=;
	h=To:Subject:From:Message-Id:Date; b=auBEIAYrDtIWSLE+rt1Tl8sJNeogOHox2w9R88nT2c61L2zTwUnTqWyBQsTEslDRar5zAOruPbJNrhGeaB//xEfKiWQR1LISt32sCAXykoJ71ETOPEE0sb5BCCnOpVDqJRmPn1wljhsiqfaPw8ZT8ogyEATt/CI1oEvIdo8ZTno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8rV9xsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8rV9xsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF4BC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766487233;
	bh=zb2280vREyXw/XbK4hvA25t2s2jPJnND0izceDsJ4SU=;
	h=To:Subject:From:Date:From;
	b=E8rV9xsHx6eVn1TVVbSv0PL4FMx2bQVvt7BJF7cilKM07VMZKQRWXB3C25kFueoSJ
	 POBNWBRaE6sGjwCQ/5Pb8B9Fs2VkYzwMmwAiGCTcU5ZItujncs4oq7j7jPG1qzw3Ze
	 YnPqjaemR3adXs6ubhErYtf4za/wK1UIxOwQ48Xe+ekGXzu4ZUBHn2kkonigEgOcwB
	 wCTci/W/rRGBV0S6rlll0fHaTs11bAXWKt61sjm6fDR4B9YyDYnF7Zs8eik0sRWTBv
	 DP5xgW5rtFaq/V0KhtkahlUtijarKtTjn8gv0jLCkX9HCsWHXF+uanBdpqHK8rZ5Vg
	 Uqjik8deCgiZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C03E6F079
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648723358.23293.3398578100803869311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64634e3e8e74b7aaadb3df27428b139f500e85ff704a9c565fcc53cdd825ce76
Date: Tue, 23 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766487233
