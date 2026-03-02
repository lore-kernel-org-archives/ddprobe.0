Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3827B3CC9EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772459694; cv=none; b=KpLkBT8tA4za1hllnvYLd/9+3SRA5FwuMXQFurM55KM0C9R+ZB2AiotF6KXTqv24+lPSj/nkqDdfWqGmigcbXOSW8L2x87NaWfA+9DRZylAmmme2lrOmPMBXa/8iTQ0Ba8eSV2Y0jycs7/ILSavHO1UtnHpor91+Bk0f8BsRm9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772459694; c=relaxed/simple;
	bh=lksCXzEC6j6cKLfVtVgEz8M7sG7kt+WgZII1wgMxyvo=;
	h=To:Subject:From:Message-Id:Date; b=hpVuiZWNvbAY6aQWjXesReRs1+XxHlif1vw8W5U3XnNzLQtbQO7kb7DfMAKmziD+RP6EBDjmm04ASzqeogtYKnimJlAGLVrcI1ioasR3XJ5apAmR1aB6xqOeTgmjjLgI9iZlP2r2VCPwsdoYmmHUdApLoCkjMFGrDdIgQBrbCHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh5LwqKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh5LwqKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1870C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772459693;
	bh=lksCXzEC6j6cKLfVtVgEz8M7sG7kt+WgZII1wgMxyvo=;
	h=To:Subject:From:Date:From;
	b=sh5LwqKZqzIshAjal0d+dnB24afp4fWEmPwRkTWc6cQJyVgQlXSyBJ+RMmVzW1tD5
	 N5V3H5Arm/DUUqWDy6PQ0zvmZGZlbjahwZZhxqQI5PaGZe+sxHqB3Ty8trpltlVNVp
	 01E/YZ2ND7ubupRO9u/X25Iy7j5570NTVy2O1Fdc0cEWfSfzqIIPBIOunt4erDHUNy
	 qeJQZTdaVXHsesJOrwXLYJryniO0VTV71eS6FG5h69OS0/ESE0HGZ4zGRaw4SVRJr4
	 Ox43i47adLSJtmPnSrcG7RpAt1P9UnNMt+u+UDZSAdp7gw9ZpFXQeHOcWu+MQklJk5
	 zNFtmBbrT30gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F83EA4E06
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245969360.16155.9480718001559714956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92173aef9202fa660d50ed2f064b0146d08569522f9482c2219da64558be3676
Date: Mon, 02 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772459693
