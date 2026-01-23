Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB87E2EA72A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769173433; cv=none; b=hQMyHFK13kKdJBPYuwcGXZQYSnF5KCxwwOsJoojFDXWy1MHiFegMmMRtv03AjAiTA2+X7dSRy0XSOSC6VriYqW9IssFF8detkBpMjcaLkWEpPnbhWp/pG0FF3SC+Mm3gm68sUPZS7ZCgtqAeVt1DvsOz3d99c/PL8V+0ONb2N8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769173433; c=relaxed/simple;
	bh=b6Sr3LwYAKhpgTTcO1fmwywc6T6/rMyGLo2kuNc2sKg=;
	h=To:Subject:From:Message-Id:Date; b=G5XtiIKQMfGOXb4LktUiV0g2k374ugsrRhxkGlPBfU3MBjMcKZqcQel6O/VCarLUVagtmKSJiX5Phv6TqgdLHL7ckXM6/jL1mfFjS+5/EMIdKRorlHjanZGpR5wa3+3ih1s7teSITXrnFfXuQLY2xZgIVmD9/MAUh5TR36ASUeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNcNvog/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNcNvog/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDBDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769173433;
	bh=b6Sr3LwYAKhpgTTcO1fmwywc6T6/rMyGLo2kuNc2sKg=;
	h=To:Subject:From:Date:From;
	b=lNcNvog/zgg+XiNMTpoc+2gKMqZWebJnh2gH5P8Q/wCCdivG75uQ2LOwWBrFg2pMc
	 HcyIz2L50zEs9kJbVyt7jt5a+/WpbOu2m7q188kArgVfVcpty0yXTDn+tMgtZR7PU4
	 gytq3Zsa/Zbz1KW/iY/+wYvZkiHBwdCef2epLa7lhPcg/KdLvoEO4Pm9X0r0XD5nP1
	 eMuUY4KYbLEh3OhYkPTR5aO6RXQLDaHebNUOh1zB4blPtkmswOTDYBCIwsHrGBFTxn
	 8KnxeQ5jMBdOpWt05tSf0LTlXopY+mkrmbrjC7ru2FTyo4LnxHPim5GYsqlsDNqmws
	 sSUbbWO7jzNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC32D74EC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917343358.31375.12404083552432050817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e6fa866c78264211949008acbf8e19f4e0b190c6ef7ee07f1249c1e9312d22
Date: Fri, 23 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769173433
