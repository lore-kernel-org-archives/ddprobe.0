Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256E62D7DEC
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760519394; cv=none; b=m/ZmsR7Ih9wrHwWJmeYhr3LB0GGnhxlp+NbJyjv4rTwPcKukaGLOv8iK4hZ5O1AbUSpw4KU4ZY1n+W81NI8CSvDVojP+39UMs44X9XI20Ng29bMg+u2Vf+jKeyzV6+HXgernjz6qzPMUEz9Q7W5X27FT9HhJhMmllepetUacKYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760519394; c=relaxed/simple;
	bh=coa6HyAeAf0qSGgs6Mnl7vJ527E3FoRzNXG90BqVpCc=;
	h=To:Subject:From:Message-Id:Date; b=OPQLkasmBHAS2LJ+9XJHRiyI1qb3tOr790eYqSV/O2f9mdXCMTBU8RTDdRS9neD70T1uL8SyR+44/ibdOu2wxL6UoceJ5d+t7GyHLkWNWEAFB/cLmLLDzPf6cVldYs8EpOs9V1u55bYTzl2Y2OdfrOQBjvHzeTcwUIs/Vvt8fQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deRu8fbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deRu8fbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7BC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760519393;
	bh=coa6HyAeAf0qSGgs6Mnl7vJ527E3FoRzNXG90BqVpCc=;
	h=To:Subject:From:Date:From;
	b=deRu8fbIahPy1PHyrkU75XXwoUed8ZqItjhl1wXyeQgY7ajCmA6Sh+iCGKpAL3rSY
	 D1xa4DrFgxdG1KKK1fEbR1qekfzlDs36srTlKYQOnyOoxn8TxYEdD6pUMeuDs9Gbm7
	 hrBmSjDuF/f0JBE/OoXXhlzoZgHhTgPu5mvVld7AuBWo/IQ9Zk/LjBFooOr8SHtoEN
	 UiJghAnCzzcwJgytY+aglcfdI23H6SNOxTNpiGX+qht/Lu3ZrDVkR4fL98eiBxTgn2
	 yVYu4rjyQKfGRnUsHLNYLQ8RfEfzGI2E1+0bQ4EqSc1D/nxkZpSKbWi54ZOUuc3neR
	 5zzFuE1bnjwkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F5CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051939357.31953.12936604288363469655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be1556d7961774321f47953fe9d5d98395c7820326bf64a0cf9a6744561cfd7
Date: Wed, 15 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760519393
