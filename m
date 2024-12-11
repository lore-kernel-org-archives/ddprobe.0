Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D2C1C3022
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733951154; cv=none; b=VXyFkuBAO3Cmq2NVNlVQG8aA+9r1bfzcmU9xb2UHUMYHlpxLmLfNF5jCltCTGhbTrIaqOBLTlhrKT7O/JR7yfCi9LtYqaQwvzrW9D/boovtWaIZepwfltJhZnO0l8n8ZcgY6n7upqQOiA4XIMsMSYwP6A7sUzBxRZlDskqvPdoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733951154; c=relaxed/simple;
	bh=I/FnqDn2R/PSe0oFs1fuE3Q6Dwax734tWCVgpxKdNHY=;
	h=To:Subject:From:Message-Id:Date; b=ZqbHeqK03khxsF8qx6G9+1Ack00tbknZq4GJCOyV4O+rNUbrMC2Izp4kzdGGw06lQOUuguUUXRi9J0d2MsHZLXneQiu0HCtj3n7aZEBHf00bxOZBV81kaK9wqyczXcBSKEJwUpFCzPQARrMpId5ztxzALITilHOy02+rhZd4OuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S80QuZkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S80QuZkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B498EC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733951153;
	bh=I/FnqDn2R/PSe0oFs1fuE3Q6Dwax734tWCVgpxKdNHY=;
	h=To:Subject:From:Date:From;
	b=S80QuZkj5RC8NBZoZqfrsrd4TtElGAnYTYOVkDEaMylX4WYcU0fktXawbPM0xyonx
	 5aA1Gqjsmqo530ExB9kXtVy1PbKjobp32/t4oUZec6cfqLzaOHqeo4mYuxbQdtxT1R
	 Ty5wfiBX/V6BJHt0+R/iqKIFZ7Wd6IqAEdpAqFi4WLmkMr2XBe6PuikkrMg2OQDKT5
	 mkRo/GTe2kQramRX140tun1hJoygM20G0P3tu9ndEidixRuD527lo1T/RJzZQWZU25
	 BX6gHcg+kxXiApvknDLcriN+5v+PN97ngkUHM3Mlr3F02sMT2fjsohVs2I/setQJGf
	 EbQlPsf0UZoJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FC9E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395115360.18809.17821403355434646201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ce989caa2e00ff9aba4ebd0992a589e2a56237df1f6aaaed467a4249ddb301
Date: Wed, 11 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733951153
