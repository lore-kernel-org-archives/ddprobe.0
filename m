Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9D61D68B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705445297; cv=none; b=Rp+FvZrccKJY4y0Wpy8ffMqvE/LiZR3qH4+Z7xbA72U91ngGpBatjvKVtNwhlp44gR9IVHskxbqY4pKUlBnEVcRMKazf5XhlZ2sx8uDkmGpp+ifVp8xlaZbpaPYiuwvDM1yr+cwSkOlb7KHDFKTcMWaq5nZVHhxSxGHR0b2uDO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705445297; c=relaxed/simple;
	bh=Z/hz4JJb6zb4Tums7EAIbKk+yC9Sij4VjL/XFHlw4yA=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=ejlYuuQegRhoF3xge0lJaHuDw5wcDRjQ+6dfNPo5OMp4uiRUNRmUSHjc2cWHiEd6mDp8p/n0LQfQBWr2HEYxg52pixD/3r+tJNNbVgxUz+MNWFWLqYbagNYGn89/PEZPWGcEYHD3sAjxsnZ8Rlvq1598ZQ98fqJr72C957qnC6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgV0VpjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgV0VpjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846E5C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705445296;
	bh=Z/hz4JJb6zb4Tums7EAIbKk+yC9Sij4VjL/XFHlw4yA=;
	h=To:Subject:From:Date:From;
	b=tgV0VpjY5wZzyzyk+8wzxwgR44ZvqWKwIKWbaxC8E9LbHGlBv//ZTtU4ybwzO2SCL
	 iH82RrjDnlPL4zpW0BqohZ4tN8fwnX4OS5pz68E7XMeg8ex4l1gsf+rSnobd/h7dCu
	 qtZKZoep5QTnpPSfhbhhxxwVsRVoAdOmHNFIiFMPbJSeEnUspYuWcuNmshl7U857XU
	 zzR6oCRhCjRx/tIDV6edEaF8UgB8Jh2qXMISKkZFFhQ0lpO2omJtEJDFdjs3AAK6aS
	 0XOK0CeGxD/BfzGiDSlF2bwsQk9EsWjcUlQbae7xixNBVbZ2uurpjasoFQD8hcH3Wz
	 bXnbAdk3/+mCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62164C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544529638.25896.1809926741551069473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eaeaede0b5722368485ddcaf1cc6175754dbf1765bdd4a9d44afaef9498eb5a
Date: Tue, 16 Jan 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705445296
