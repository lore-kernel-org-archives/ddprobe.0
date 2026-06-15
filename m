Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470163F8ED2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781533594; cv=none; b=nTgnWLlD8CPKo3f08swVAk4OaB0DSEnJvmZLVhQHYrEj79lxRt0RR46+z3Oc1vKNhUzV6O9pQynjVbaWTg7aURyEHkjYbqEo43o9Ssvuo0STmUTt89ndMohBaEdCTNOPCctVRU87gGSMW8neodhszWMyaFtxNz6ph5maC3ojsiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781533594; c=relaxed/simple;
	bh=H+gw1+ELrXx9rC/3iIMw1Uurngi3CiYxN3u2WONtieY=;
	h=To:Subject:From:Message-Id:Date; b=exPd8kpl+iDVo3tQimHoruXRbAKSq+8kItT0UO3uttfvJbFt8OMoUPDmc4Tf7ABobhVs0nOw1h/oDiW8oOStW+LB/uclvBWcdWiNE0CfP5HY9eRCdlX9m7I9Fb12QieRQv7cdMDLjwCM08dJMmvkQeTHbwb/hBMP6L2bIEmRwEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxXfa95u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxXfa95u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53EEC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781533593;
	bh=H+gw1+ELrXx9rC/3iIMw1Uurngi3CiYxN3u2WONtieY=;
	h=To:Subject:From:Date:From;
	b=mxXfa95uMnOcJdlnD8Haa1EL6EgRz95e02x9XrEehl2y6HQgVOMmR+0NF2Yn8sOj7
	 ASkfDOpTieGpToKm9GHn0poiNeYrn0Xfwgn0/dcq5+bvL/VAndGOSwhFSBuqf5Azkv
	 HkNypSoFvX1C7502/L7I5T/em88glgjvXXnqYi5Xbcd16LCud+Y/BErvovkxYLTLSb
	 vr1lA1wNViyKekUyZT6MM8e4HIh7fVTyievcdCIUVW2C0FJ9nR7cJC/XCKiFCWJx5m
	 +gMT4I6YpdJ2nK/id9ZD87idyajrIFWl5IZco/rBC6tQmsvJQf87wMAQxdumN9SRO1
	 dskeaTXTuHRAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC47BCD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153359369.1718.14500884663169083938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197418cad562f4f1460d628553b2280432fa1fe2975d95a2b810a6b1f0ba7462
Date: Mon, 15 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781533593
