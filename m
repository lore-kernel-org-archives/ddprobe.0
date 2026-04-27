Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2DF75809
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777252654; cv=none; b=nOmkLovO144XdkmJnzFmhZxa27LwclpciCcY9CbBYG6MzH/qaBnzPNxRAN3D16FM7hpmGaCko1TalVWTmZ/FumPQV8UMtpCrmqlmsxaKrZYqMKceGaXXRRA2G7Q2DoDDPm05wFTjUa3Lt8mgmU5gw82VKlG82F8Tiih1SnVmw2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777252654; c=relaxed/simple;
	bh=OrP0/mISQIJOK06FF5t3A5UsBoYpu0PBWWOsgqqEFMY=;
	h=To:Subject:From:Message-Id:Date; b=e04hTHfmKeKFsN9q+yYZ0SuGtzGctlty5SO49fF1qAS2mm2oTFcgRkVX1vP8Zm961X+3GNnGcO2uf0QClZUvioubCpkadLshFh6EKDiMKfwTY8JROCgJR50WBWpMDBc8Etbq6TAN9qMOOin44TxX29sHAQLPRlXDFCbcIg0p1oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaG8iSLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaG8iSLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E2EC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777252653;
	bh=OrP0/mISQIJOK06FF5t3A5UsBoYpu0PBWWOsgqqEFMY=;
	h=To:Subject:From:Date:From;
	b=IaG8iSLQyuUBVM1qzLk1uX6SxFtpFiIIdTXsK3tj2mmauF/Cd3DRRzVlZ6FhCaUFy
	 j41WOQwKg2581xbYFr/C4ciOq3JkqWX9rU23VwS83MIvmTd/je6Y3UgVhpAmJQATnc
	 Lv1wWYwRoV9m2Bc9wh0Q80gUiw9foR9n2bnA3CVFddysjL5IknaVjQKUw0mlTIzFAz
	 lHfeDlYUNh4hwuf8zMeBFM05VSBEYFQ/mz9PkGt6IKHuaX634iM3pVW/dwi/aM1SLi
	 /7MpFas0DLVY/spfHeH//HwGfF5LahFbscv6HmKLEkL0S5KDisolUDdG5sxpPhM16c
	 7JewFgmchQSsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC954FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725265368.7790.7770073270950104040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544ebdad830e0b4d25ae08c64e070865c46ed50856c999b9107c250faa634f40
Date: Mon, 27 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777252653
