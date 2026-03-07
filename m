Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB3D17BED0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772905494; cv=none; b=OWljEMnXnxSEY0VyQ/8ssLMVRXdhWSNprMtq7aEUHcLZwDdX045fll6AG4YrhHWuINEQHazjInLHxrXdu9avFv+NIBCSdK3+/FRcbUdzJjvw0h7hGuczEDgC0qhonyplR6v4lVtY+dH6pGuR732ncWqwawaVzzBlUczbPYpLJ3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772905494; c=relaxed/simple;
	bh=tKZyMLrHsLu4dQKxfp34VxqF5OBbPEVHQKHf4Tp0yB8=;
	h=To:Subject:From:Message-Id:Date; b=LJr4U6iLX3HXlmZGHDydeZ4n6vHKY/50G7BiRLL4LRbb86jJyKsJC71LlzQrcBYEHedUpKvxg9E34TPoy7GF9AQ5pbhovtQW9hU9YEGnp8cscXlx7f/VGu6dn6sPFC9w7HI5vGPp100azYmdvf/dw5286MzSMimjUjNXGWHWfmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3uLI7UY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3uLI7UY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D88C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772905493;
	bh=tKZyMLrHsLu4dQKxfp34VxqF5OBbPEVHQKHf4Tp0yB8=;
	h=To:Subject:From:Date:From;
	b=I3uLI7UYm9Lo0rUgrpboi5U0oOaVjFfxWDreTg6GPwwcWDP1iMqsoPTV7azal0gt/
	 HPnnxaUoxDncK40UNic1YmWFIQcgL75y55xLWUmGw9P9ogeBoL5YGwZQF7TK5URi04
	 B+4yH5S4KgOSuh131ANQYE15tyF5SPYm5LYihPAe1sue6N5Vr587KM2wCw6TEy/Crv
	 o6pm5JA/o+LTRmxyY/7LojKJ4Lcrczx5Gkc5M8LepP3HeqnWEr1N4dIpjzFt5XqvNY
	 XQW+5lMgD/oymhZI7s3bvcf4Dbhz/XSA2Y5h8kkfGeDBjCIf1mMKKrsXs5pH7cJ0fG
	 DTp85XeS36R+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94502F55103
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290549358.32348.17715819071803389361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba9673e85d84e97e5e8e636e148804afa5e6d1d5c4bb97170ba84bcd97add8a
Date: Sat, 07 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772905493
