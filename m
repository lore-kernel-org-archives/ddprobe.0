Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AE6183CD9
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742689196; cv=none; b=nHR/ftaFMUevxNmehTk40X2o5wykQlXlFTcboMokKsWOX9ldA2N+Wg2avVdfX6oG+EW+x9cW0MhjitiwRNJGwLSVoW9GeQFIJWbNEL24JevNMJEFXL9Rmx08AF+96n6bea/zln07gBpNbYmutEDbWAdDXmNOluUePjkpuehkZ88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742689196; c=relaxed/simple;
	bh=cn1bNzyIjgoMK/fGSdaKx2QQWdw1KYlCgXh1ri698Yw=;
	h=To:Subject:From:Message-Id:Date; b=NecigjnCbeFyUgoQKmNdzIvzPBdC4Tm8M6qIltRHwWg1Et0g7NmDPC6YsT6AVv2VaWtpipdzDHtP34ySzYU9CSAu9nUPwDbszFFDax6tC8VVHIgZZMZn9et9mPrtYIphOopXaNlJMdEg1TBDLve6m7c3M+dAR4ODpjCct6A3DbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXMyRIpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXMyRIpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD3CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742689193;
	bh=cn1bNzyIjgoMK/fGSdaKx2QQWdw1KYlCgXh1ri698Yw=;
	h=To:Subject:From:Date:From;
	b=EXMyRIpHiPtcYy/1TVA+Gw54jwJrY1E8dNasApA6lz8HP9tgF1/1A+wjfFY09uH6o
	 3NgpJFPgT0EsKFx7QcrfNC9/wysXm42hVdo5LjnFL5EFNOUGUiYjfpFw/swDZE13fp
	 btiMpJI/+YU895phJqeQFjgbORypxJcrr3CDs8RZWa9/eqP0lKJQUiTtcXlWkqzv0n
	 gXSbyu8srcYCDeFfjI/WyM8tL3nyY1NWIvjPKcszXKuU3umGGP4THKqu6MQeNHlfaO
	 Jtd3+G+YjPZ+R0J/lrwXU001F2L1my8YdaXXFx8KMbRgorUumsdFCGiUDiLfa8ep6k
	 dOSLl3pkBxk2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EF5C35FFC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268919365.4512.4336274196635345967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b80ddb9041c19997864ce76c4e3d018891b66df3cb7f8ca5fcbc8d0bc554573
Date: Sun, 23 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742689193
