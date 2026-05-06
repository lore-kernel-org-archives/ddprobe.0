Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48122214A84
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778108854; cv=none; b=r4gO7BTkDAR5WHla+5qJLYrcocGmn6Q3vP45iHu91MNt91LrJkQOAVe+ugkH/uchglbw3VDiqI36MKx6v923OrbkKbE6CnrnqeFLzGmh+XeSH4z6rX1ZnMIvWGSZPhC31SdOcikA92RJFsWSJt4kxXkQyyKd72DzM699QwV+WlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778108854; c=relaxed/simple;
	bh=DWOOm8qe4MxNf1ROwg86pc8c5H5O1CG8MMFOCvTFDbo=;
	h=To:Subject:From:Message-Id:Date; b=KTChGTvQbbTwODQ9l53TNBqXniYuurEWQTPoNN1e6aTe9uu1eEGchReky73T7YTjedn6hiaHiD+REtWb+3j+C7uVZJDXT1jKjTLuUESig1tWV6MhCWj3TYCPgiZYRkOuTcnjl4qn2kKbcvxVmB4yu7gTYvQGT7fuGVLHAJoyJ4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwMdmgfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwMdmgfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10B8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778108853;
	bh=DWOOm8qe4MxNf1ROwg86pc8c5H5O1CG8MMFOCvTFDbo=;
	h=To:Subject:From:Date:From;
	b=HwMdmgfgwxA4xTCT3IkPGPDQbXCGVELGiBMw08PfKWsMyAUXhfMOr6xdqNLKHZry/
	 Lz9Saregyi+TklDAFe5qDMVv9W/sF2MVcpwOuuF+/GDK586w4A19QSvEdoaU4xW/OE
	 ZiAO2fTxcjGJlor7Zo+Ip9zfMqrJdjMVdnMbBmwPjM2cvsEd5byLHrm2KwmqinJrvt
	 ABi20Arxx0DyDNziDUs9ntH6kVTw8tZjHFfWAFjWq3sZL0HVm7CaypFQ5viZymixEh
	 PUPBRqY/nCYskve0bk/qqdRZsV4myD6InKFu++vVAv6I0Jtq6eWX9VkZm2Dck1MXwl
	 pcI1N3CNVtpsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4DBCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810885369.8798.7132724755132582492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb9497a7a85084629ace018b36b734efd7f8c4ae06b17778ff8695a51e17d70
Date: Wed, 06 May 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778108853
