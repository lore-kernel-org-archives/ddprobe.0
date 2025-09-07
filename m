Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307BF7082F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757264394; cv=none; b=O9x62QcujSAv0F3FMSYFUa2T3bJ1kDBpKQfC21AlKpZoy5sxl9eehyCDHDOMFCnptNOXT2xZ0hvP6XXhzg1Dqa43A9Uq7aHTmI3Wx2ZdxmD/NYL93SAg+WTDH2NeSAwHhn65ZVEKvqdqgwW1x4ijheg9CTJXjx79OBc2x9vhGos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757264394; c=relaxed/simple;
	bh=0aN5Y7R3MVEGBkIKsgSbFLYa7PQJ9/VX49PAHs4jRuQ=;
	h=To:Subject:From:Message-Id:Date; b=AfuJLtc7AjWb2Py+A4mObbCwxNRWveVgIIdecA+aFsrIw2Fc6LNJ2prhXWhksDosyt7SlaUWYXh0ANfkVLZyFWHUZLy3/EdzWIGykWoyQXoUferNgQ3WN0jBWfmoQ+FQjtnWKHOXN8ksnq/ZMWyxnIhXBFtaH4+rxIqKYuwZqb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBwOfPn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBwOfPn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1210C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757264393;
	bh=0aN5Y7R3MVEGBkIKsgSbFLYa7PQJ9/VX49PAHs4jRuQ=;
	h=To:Subject:From:Date:From;
	b=cBwOfPn1dqrSUNhYyhxZIFZBiUXOoGo/7UhEP4LR8gV1mfRS2hcUGc56TGyfyMUJW
	 /WFOxp8YMEMLISYL/015J0JVWz6Gf38HenRnV8kfzZT6IBVlZZBHRptDX92mPRpVf5
	 XTusPBhwFhQJIY9YFqm2r6XnLNZH1JlGJG/K6DtshB/iirhNWRwygtG0vDPR9huSqk
	 sHoIYSp4ozB/OAAAXg8U/8WIdqNy5CN5gYTUc2szd4qz/fZvF6PTt6etV5pBYFeueO
	 6orJUbH5uSfhF76rNHfv0PqHxeKOqCX/96PBoNPd1Zvk5lPBl2NUrXnjvtSifLfXqp
	 hOjSr/6+ZmnwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1FCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726439357.7143.8269617205308582423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de245e5fdb08713cedf72f2c4563e4cceee1aeb270b59126ef6c5752fe7c0ea9
Date: Sun, 07 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757264393
