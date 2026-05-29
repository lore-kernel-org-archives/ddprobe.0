Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD0D3F9F21
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780066954; cv=none; b=UZ2SCNJl3sRbh52pVN9veUXu+oBx2oqo1JWrAKcy116Y3ZjifRAyyvs5GS4P9c+QlE8J+xXtVR8C3BrRo6N5vWb6/5TMdfjQvHWtGKMoOG0mHSbhmLHoUX7TB4XWT6mIewKzwPQb9Gt2+5hqb/6Lr5i99OWzmWGFk6a7gVXNbHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780066954; c=relaxed/simple;
	bh=wJb8d9JdoaoSkDQpOMqffj8kDBXBIvM2LipoVxa6Aw0=;
	h=To:Subject:From:Message-Id:Date; b=fpw+rHud6M0bkq9s4HwcU4D5mY6jEWtuJ9eBnOsQxX4OpAHS1YIxaihN6+wEDLZJpwDekKG5SptIll4NrNIYf/ser7+3wn9Fpouw5DLyw3+8YRoZctobZVSC0nEIdWXTEslvPBrlmebLJa8qyJ/txRVOR/6S7RoQw+8dLSs2cks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFcG0UR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFcG0UR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED34EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780066954;
	bh=wJb8d9JdoaoSkDQpOMqffj8kDBXBIvM2LipoVxa6Aw0=;
	h=To:Subject:From:Date:From;
	b=tFcG0UR+YFfay8UmGkHmKKGXFd/DrPaqpNontfc6ipPFMXg1s6TPYv/fzWKsQm/ou
	 wznacfKK9i6KwjYMJTOKZV28+FZdEEQY58WFGcNKOtJLkdbCX7vuzvCZDPsM1Tj/P/
	 JFBCf4g7p2Mk0DOGhd0WP16H1RojO6PWQE1ugTH5T7EgrxQsexATQhb67exDFutMOy
	 9OIwN8mVBweupn5mDqB3VOl8AUYZLOWSLe7JoyTSnKeSbzyWByG1YK5/Qz8hvK3fTd
	 c7N50vVzsWiyFNCNfAl+zAYn2HelL+1ScF6lFs0DH1N0itptIH36/zifObYinm6T17
	 W+kKOSK9EsffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C932FCD6E51
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006695380.12998.350753209230323237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5fd24afce4e5ea19ad716ca45d0541be6276d4f59544c1b4ed3f421fc2e062
Date: Fri, 29 May 2026 15:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780066953
