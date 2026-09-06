Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E2E1D7E5C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788701434; cv=none; b=HxFMTV6b7fS0TaN5BzME6oM/H0g72Q+EWZ6Myp6WLWU4JugU0+9ODKZHh4WqILd66AuUwjKBagBbqXYzV2MK0C+Pr5Wznm0dJ9El9BDxq0bqOgV/T9LsPyobAjNMj2W+uMwFzluHKrbaL2NOgakjQExOSCq5CKvee1b+cWBGy4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788701434; c=relaxed/simple;
	bh=Y2fOoLEHKWE+M4Cay85ghhBmPuR7872H6x0M6IfxgKQ=;
	h=To:Subject:From:Message-Id:Date; b=oqX0dwi8wx5+HguhnSOr6F51NFkQfM5v8qC9khVvIkwG225tlH7wWN3J88xZsyeYxdYj7buOvIJbNi/Vqy552TgSq8dcfAYYrVyRiT88whkdYPV09LbTg/kli8VIrg8Widqnclo7Wvzb1Kbrq3EvpwLTybjniSDrKt3qQ/krPXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzjqLdAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzjqLdAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F0FC2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788701433;
	bh=Y2fOoLEHKWE+M4Cay85ghhBmPuR7872H6x0M6IfxgKQ=;
	h=To:Subject:From:Date:From;
	b=DzjqLdAkIbwBgDz5R4wrJtgUpYOtiXOsu4NK/VCpEIx/izwXbpbKRQ8xdc5WaL65T
	 F7QOrZR9ESDwhD+KuRQkUDNHW4vC3iI96Pis33kjEG8cLW1jNFBNfhRwShefgTdYMt
	 eMAm5EqdUENUBX+/mNyGOMGpfSBD+29GoXvsdlj6dc7D7C/VAZXC93b3RBCowHe6uD
	 bMq2VM7HNgeIh8bNMCMtAJOwvvoxySxRResrh7Ehp7UeMpZoJY7OzfuYRO5q3QAONT
	 TVGL2WrcgLFmIoV3TbR9IBmd8DAcDBhhjFi2nQdI/R3W78KA+LerV3r23KsxZOBNme
	 ZOHmWG8Tmr4NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF81FC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870143370.32489.1314643354379814268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824ac3d94f42d35a9275415b2a2cde1c70f14347402fcdfe1a8eee34bcd149ad
Date: Sun, 06 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788701433
