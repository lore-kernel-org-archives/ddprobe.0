Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D83C2AD2C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766754234; cv=none; b=SomLLhPoA0GgfLr5xrLkrvoTt6m9HBrvgmsvaVlXGy959YtXDy+palkrklQWuc+tAuKxc/CQkX6l9THci0PK7pDOPrGtg94qvBauuMAEVFLnlchTAlM12McJldxnYj/BDWDSj5huWV2jtOD1lcYZ0JOgh6CdoWR4xSGIG0NdC0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766754234; c=relaxed/simple;
	bh=MTr+IdDJ0FmB4jPQDUeSWK4Hwqx88/Rj0cHJbuZuAm0=;
	h=To:Subject:From:Message-Id:Date; b=NDAeaO2JKYWOj5yuzE1UMNKaaIAa0ArrNedJbCw93HRMx0q0zGvrYOo1PpbPqtOY6X5Kuv2jiowA5k3T3hl2ZqRARww5iXo4r4F3OVX1+RtbMAxQbmXu1JY/VoavILmp27g9UUw6RHalVOS1eB5LZbaqtMKRbmtQiBS7dt57DD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b47Ke838; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b47Ke838"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8387C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766754233;
	bh=MTr+IdDJ0FmB4jPQDUeSWK4Hwqx88/Rj0cHJbuZuAm0=;
	h=To:Subject:From:Date:From;
	b=b47Ke838ckIF1FPa4ul4u5VZULM/WP0CBMWPjoAJL39y4v0sJhBKy2cBc/rT+vSCc
	 PvmSMHlxZ7Wus8KdL7Un8l+rdddo8RUUV4P9YH2fMIzw9G9HcoznP+oEFopctGAN+v
	 nbrg2/itvhx2d6PxfqHXeLCcxZaAyppk6kfU7bEy0lPeFM7JF9SHh1LlEMSMHvEIsd
	 n52o+bhCwrPdR/EGb0YEPyBPceUZT/8uSb5e1fr8clLHO3c4KxZaCTyy8EJ61W4svs
	 P+dv41PVy2GqDGOOFTQv8CrXtRGaSJ3Dwjas4EKMtClCimDMQGgw1jhCpJDs0Z2yyy
	 3x8DQc/CmrbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95287E8FDA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675423359.31175.7415072390807097687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afab8b183c395a8e4fb8a032629ea2c3a60ae55baabe4c4796134832647a8bf
Date: Fri, 26 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766754233
