Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9A036A367
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786611036; cv=none; b=HBFNOm72I3TBfn+Q+tk3JDPcY3xq4Ei9f+2VlspiKNo/wekcCT/URXQHh5UgvhtR8zaNxo3NYBKE9Ml9mX2lQmQl+DCUYPhcq0B3ghMQhszzNhw9bUUD//CfLfZwyyE7RFZAN/U841tnaFo5a7O9tJPDreEsawd7yfobwc21sdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786611036; c=relaxed/simple;
	bh=Hj9PaD7ZQkN+gqLIPuK137J1OpcC+YbCFZDr4380t7s=;
	h=To:Subject:From:Message-Id:Date; b=ayI+x5AyxZgYZtoq1wugxC/TmDPnZrqFTtdtVhKJ19Dtd4/RvMLf1Gjhk75Lh9ZHgHjs0Sx7mKeC9/7z76tnJTlZx+eREt2/wKtK+C0NzQysyHz+cXK3qv4N3xsyQB3NWZDXgMgfsV1bCoMjwQ+vuqIzN5hyNhecop4HnuXfK3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AerEXPk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AerEXPk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB00EC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786611033;
	bh=Hj9PaD7ZQkN+gqLIPuK137J1OpcC+YbCFZDr4380t7s=;
	h=To:Subject:From:Date:From;
	b=AerEXPk3tphHO1CpItiDGX7VJ89tMIJiSt7E5/V1f7w2zgtaI0CM9hJbr6Jh0MN9Z
	 E5GXUdq16I5mu37tAFf7Ri8GAaxA87gmPskLvpyrcKUpZImzxgnIfqFh24WCO0OrIC
	 rQC5a3XE4tyVGmLTShIv8QdpgPic7POYqm79C/MTF4jc9nBG0RMygnegpXdeJYvup+
	 P7olX6a9S97CPjN+bIYwWbgZ03bEeArVLk0H/1SwXstNYuxahCW4ou663D4gHct8MF
	 lyBIf4v76cSxR9dv7lWom83RvLqkY4dYm7jxBfJfdgtbhOZiY/AGN9z0N5rNnjllJD
	 NShyCIq+SXQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8281C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661103368.8704.14783932068780260501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdf11ae5fca255623a3ab1373fe3099afcb63b63ddb7e7851638c1bd69b0d40
Date: Thu, 13 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786611033
