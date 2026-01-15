Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F166A32860B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768463634; cv=none; b=P/DM/olHdUvSq/5jVectziRjJlwdOjS35TEmRB7kx6+38W5Farzoz2g4KjKyfr6o9sfrjQpx7jCNtcMLE19q684VAPPkcXEHe4eq8HvluGJHwTio9n4E/4rxWT2xTWKCbFewlUuxtWBwx3oG83CgB5HL4uc4Eyl3GdIO6PnkTng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768463634; c=relaxed/simple;
	bh=i95Bc4yp+n436kK7TINe+EczoH2cPQyi8VRcEpyBbSo=;
	h=To:Subject:From:Message-Id:Date; b=LoJh83CfMjfLFMm6uyaevpsEOGzhouOmc0u2g8Ov2LOScTgsZq9Eb0Ho6XviSwC9HWFoODS7chFJUIpdXmQilV7FSK46SRkd/fyLfDV+MSTkGHUMIK8ymDcdJR05NcwuQsOviqtpG/cWQbY8YrsyfRcRP/2whA9ZTckGV8QOPRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lY6H2QlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lY6H2QlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC02C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768463633;
	bh=i95Bc4yp+n436kK7TINe+EczoH2cPQyi8VRcEpyBbSo=;
	h=To:Subject:From:Date:From;
	b=lY6H2QlAzhQCYCB4MEa+mcnKmNXzWWPEJeNCRWP5qhLvG26bZ1/TSrmOofVE67aU1
	 FlH9XLFwtjFnleNBnmFFw+UYk5BDAZeoSNIUsZm7HBMBs4rqs7uywZ+TLM4KbxNeyb
	 necBeq8JJBi0b8J1p67ZFnbXss8PmxW1EcvhJELvS9fH2I05Om79hAttV+Ae30VjcP
	 /YTPs1bmJAsXJInfAsS0xTBhttntA8fgkRQUraheqU7C00MJFeO2OILvLl95Fr2qxk
	 dsGY+kKEnmw9Vx8aLXdqC5xbBgM61SkR17H69UszPlcfE8oTBvkxSuDyl9S1VQbV1v
	 DrChZNcqB0/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF42D3CCBF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846363357.22414.8890477567182204734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db2b819ad42bfdea91f3c91f403d3e8e8650657a6627df1f8559ba05a959502
Date: Thu, 15 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768463633
