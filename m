Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2704523DEB6
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765556574; cv=none; b=exwSx7ngufLbjmMo6urn/XCqnreVjw6hJyFgi/KVRxZUFwM+gJVCq0c/D1wKR2lm9BbBIV/CxmpMEAkiECMi3wN2Qy1oRdf9W1Gh7noensB61b1xnK83K/lZsR0OJ2asK7Ro0k605H5PkOduAzlQj1/p1oA8RRgyTzGzwqzOCRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765556574; c=relaxed/simple;
	bh=GCPjWBDMQFMm3DJ2z7a0DITvGL8qS2Id3QmUCyMLyKQ=;
	h=To:Subject:From:Message-Id:Date; b=JzXSRpH967DlzLKupz8n8fL4BXvBmM2fQxGDwhqoa2FBPZvbRV91dAXYQ+tsjWKJleEOz5bsTL+FqjQ3IPuT5nhfJBqsZgwCg0Q8+JpFiYJ0AdEUL8004D7SVfT0y78qvqHoF67CToe8PD1maXjrUAsiUW26gOOIAj46umblE2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMHf0CmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMHf0CmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C0BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765556573;
	bh=GCPjWBDMQFMm3DJ2z7a0DITvGL8qS2Id3QmUCyMLyKQ=;
	h=To:Subject:From:Date:From;
	b=uMHf0CmAWigznKesazhJAG5YHwMEoUAIy3X1mL1JKcubTYTStCvhe2OVRlzCPqNWe
	 wxeMznsg4MjUINOU0YYNWMRhQJO8w9NmaMHKOdQCVlesYqAfW/zw9aOn5NjA/SS9o5
	 D2zNtNk2qEw2m8GWujMCSToZG21XBivImu+A7JJLER2VrXKySzABZewPEc6NVK3TMm
	 vjQJZ9WIg1GvGgyr55MI7t94lByW90okVfzobb5AjD1yP14bxOs+A1/CRvfCLZWOEK
	 A9/K7anzjoBnloDCl5cRkbcZROHzejP8qXbwQBTOUnyHIz0OPotyLCBxmKM87G7SP9
	 kNbU6AjArPi9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462FD59D6F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555657359.7798.11181392918307321900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c6eb6c27bdeae4c85315bda95af1118e45ece0e0c8a5b05f8938b29a51d6b0
Date: Fri, 12 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765556573
