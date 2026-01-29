Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D9313959D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769711634; cv=none; b=qNP17RVE+QNUu4w7Gr/JPm1scZckWp5ASH8lvMhSDlxGoNX4YHS+am1sjLJNnSXktCNgeay+JelybTH5ZLlg6KJf4Ep++l8thLF/jpEvmVDXthSXEs5slSyWPeoGcpslngFs/PlKF4Dh05J1hmXhFGyD5z57M+2y9/qnfHQXOlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769711634; c=relaxed/simple;
	bh=zrsw08mfAQnK/N643ztokpazHKBIzK01/qSTXpNC5rg=;
	h=To:Subject:From:Message-Id:Date; b=EQTDh3Sel+1N3b14UelIES2rzbVabAW3dB/7Q9ER+ObIUPfkrM21B7XW24YT5iM2WXwX/aXC66Enk5b28AeOaU/Bpto104fN8vAHYAPVDdE1C+J/OLgCgRDFOuAvKwMz4keDftCiuLisdptDoAu1qsc0RRs3eHMsYkmgUW1Wuhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+5D+cVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+5D+cVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4018C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769711633;
	bh=zrsw08mfAQnK/N643ztokpazHKBIzK01/qSTXpNC5rg=;
	h=To:Subject:From:Date:From;
	b=M+5D+cVJbBNyhbFf5rBb6TFDAqFG2pQRH/IRCFIMfRiBNQfaB2lPG9eHKs3eFvvCF
	 VGxzPVPbqaU6fHMaHNfGRQ/iN/h69+QWskDG3OSP4jDvespVP0ccqpr+z75jkfWnYS
	 iqXfqJlh864EOo52I2VZ54INotkDhQQDC/o0d5vIZbA98eGhJDrKBNBVAJul+RKhm2
	 Q+oqudNaHKDk5qc9Vb1JKNWuNZ/7IPYbq/AriOo0d+zFuXMMosh6BqZXrW2t1FX13N
	 V+hr8JvlwuWe3F2CFJ67kOlBnWReljFdkXO9ORFFCqYfGWmwqubdDSQG3Pq2wHUP9z
	 4tFScvwuc32wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95893D73E80
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971163358.1505.8699925104498360036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a33243e69bf1f7a57f46d574c655227d8252e30ba4ca7b39c7635bdf114258
Date: Thu, 29 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769711633
