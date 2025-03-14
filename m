Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4DD1F4625
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741948134; cv=none; b=AOazqtZQQsF1sjQriJYjlG7u3bKBqoz23mPSwHAMzqQzdthixQ6ec8YwgMc+JCqWGbCktn+s8ShUT84V3rzpeCVFvR8rC26OMj4ORXFYYbB7xBzLtOk/TvEe64hOJlI/Jw+GvIC0oNCIJzfgYz7MOOCJToTNmR5i1pebABBWIt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741948134; c=relaxed/simple;
	bh=ADLl8WxJuNilHzDwwzEbxJaOj2MfleS1wkB8hI5wcd0=;
	h=To:Subject:From:Message-Id:Date; b=a6FGXYp50JJVTqM87sb5QGUjQcC1ETZuS6AY7FUXwE2S+QcWL2zex3o9J37ottAOlH1vmTF03F7NHb1AoWy7ouB05S0bjIDr9xmV4BytDv/XG5V/HYYyG08Piq3C05IGmAlXbwL5nKvKNuE/J2ZBN8jUnlZZWO6qteVxAcn0uOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL6bxHto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL6bxHto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EB8C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741948133;
	bh=ADLl8WxJuNilHzDwwzEbxJaOj2MfleS1wkB8hI5wcd0=;
	h=To:Subject:From:Date:From;
	b=EL6bxHtoPRxRNFIAp6ifew/AV3+V0IJIy3/F7/tt6Pc5xEfKotcABS5F4dHRBef4j
	 XEj/VbdftY3yCNJIZgDT2zCG7ebs9HvcYu/4k2cN6e3NfUmjdYmwnNQgX2H07VQW9i
	 NIq1QqtvhY3kMCCwcpn5QKMRCVHa6/PSU2CuIcvI9DOpzNBnDR042EhPhJ47SM8uBW
	 EeAWtcOImb5tcehuwoffzXF9Xm9zdYCyx3cziNif3cr7Dj3BRIt2KDPE03CWiP/Kro
	 AD2yxxbX70gXB72pPWczDVzSrqxW4+b8jjOYUPKErnTaysGvt3vPEcnxe8Ak5CC/oC
	 HcbbYEkOJ4QlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8EBC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194813362.20223.14426770573079867164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da3f19218ce283bec7683ca7d8668d9c53973ecdc95dbc5a29a037780b838f4
Date: Fri, 14 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741948133
