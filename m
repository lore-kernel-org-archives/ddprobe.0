Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9962DF15D
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756795194; cv=none; b=dANBRsEwNwf2yvHgNLdMFBioJ/1fbkezDDuVnmG8NWpax1hCG436zMOkFw9korDue4e668aqRHtEW+8ntkF7nLCOxhJGQGonG4iTpGWuhHJO8bowrrbEPvrt3NH++GZpJqyi8YJ9/KUFzXEToEiynnbiyIHlYwvln23XhKgcqsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756795194; c=relaxed/simple;
	bh=H5Ru2cMT9HB255Zz51STc2bZnQ5/WBQ2GJxs5qXLNj0=;
	h=To:Subject:From:Message-Id:Date; b=rgq1mmt8fO2xiHnAmAlBqTTe6YjraWK5Bf2ZXPdJTdoCM0xud/FAbr3GKLQ/EdWO7ESHgZRXbcK2XELnBnls8pZ8FoyMNMOVnnn7Qbsx4LrIpHuG9hiECKW1+ZpeaIMeGtG8vCm9qtD7zwgVHPD+eslGaFI4jjRHO6pzaMKMagQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNFd1+vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNFd1+vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0696C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756795193;
	bh=H5Ru2cMT9HB255Zz51STc2bZnQ5/WBQ2GJxs5qXLNj0=;
	h=To:Subject:From:Date:From;
	b=SNFd1+vlCQKalNXYBx8PPJQczCUIp1Mv4O5mBldOC6FZQ2PUiMBrXqUgzWrJBenS0
	 l6kHToL1DIduAsdS5YAPpX9ShEsv05173SdLwWOpiknvrWIcEDNFjttez8PQFIdCGj
	 mbVPSBypIi4Ct3uyl37VsPpZDCnneKDZXbtDJjLaBCzfKk+wvrUlIIFc4Y8lRfPEEG
	 KloyDRwlSaxqYi8XyzdKO+lret7TPxjF3ji0IP7S78HpSfwXg2yqzFpvlp/Pb22nrg
	 GcJqVihOzaR1HgoHQOvrnFoiGy6OiYVm2i0DEbwsJCPYOyI2K0toPL8F/cPr2VVfv9
	 J4f3WatqfNmVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA2CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679519357.11785.18277018451317390992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf29655db4faa3175118de2e33ea8b4ab262e53fc566dc136578aa0c253b76bc
Date: Tue, 02 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756795193
