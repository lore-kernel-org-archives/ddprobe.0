Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140341F6687
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737100554; cv=none; b=U6qqVYwzim4d/eFVASttGD4+wluCY7vZAfrWf6oyyvR7KudGwMvTEJbS6Xt1yAarv22OUCWIMcgHgp/iB341oCTgm/qQ60KDX+ifnXZwpyNPgzdHksX+aPaFEyd0SKKCzpcgGdpFe64pcewL4axLRojyKHBxPBydppGwlR0xyGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737100554; c=relaxed/simple;
	bh=QgGX4jp8LDT2AYHuU6fC89jGyVVoM7nY2EUDonuTur8=;
	h=To:Subject:From:Message-Id:Date; b=eSAarnu/HKdGh65Sql3LIjZyFbJYiTsW3YQWJkSmAK4PtV+fxyYycbXk4CHMn4F1PLSinbDPsB9nwxQildhq9F94AIrq6qgSTzQ2IYPi99LPm/pZ7Kklciya4/T0rODklH7I06OpVzndbl8xSAsVFrkpcUhCT/zFr3V706Aiyqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4YOdSfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4YOdSfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A111EC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737100553;
	bh=QgGX4jp8LDT2AYHuU6fC89jGyVVoM7nY2EUDonuTur8=;
	h=To:Subject:From:Date:From;
	b=F4YOdSfdurvZX0m4bW9zbSyyjGCHbokypZAQavkSoX1A515lhI2uD9xTR/UzNg4SB
	 GbrqpnKFzxOXWyioK0RvWHKdVtWusfYN5oRXnetV5Qq1hbWc9NHhqPZvZmR1Fg8XKo
	 pZruEyhQQHzjptNM95KBRIHEOtx3uxIK9GAqGedfO/ju7n0O4xRpyaEu3zWCbWlVjZ
	 HxNitV/EiXuiv95mW7z0cpDbadt7x0eRqks3JFRa86kviPHDn/7UUo2pEe9ML78Q59
	 4Rm2rOp/V2OaBWrRKMbnIUikt2cRqYeIPqBK+fxVwg82UjxOqOFSHTZ/TSwRtjVXMw
	 ApB1PDuDzD5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF3C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710055358.29451.10240693624318005063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b612c1d1edecd6fa8ac256cf5b6f0cf134044c2803d6731bb8addbb1f32539f
Date: Fri, 17 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737100553
