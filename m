Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D28339B2F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764859374; cv=none; b=urMSgRfqRwak8p22sQsA/rR3NSxWOWbFbazJQqezsXvqyaRC3bJsfyBhcVAwqqb6gTDVs/aLZVkRtcVZRUgWrRyVZy5wQ/0qTDAkSGCIqFdDMU91dK8LkGg54Iq3E7Fz0lu+aKPK3ZuIQlHsjJIXJc+UcBW1DB6YzW5uj8DZOkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764859374; c=relaxed/simple;
	bh=4efYx/NxndEgpB+pe7iPpq5C8dB92/8FbxwqLn3lgpA=;
	h=To:Subject:From:Message-Id:Date; b=mAMPbHQgAEYRR1t6go6TN0QheSmgUD9vo4O+SysdYl1tPJbcdZA42rsy/QhpLARdiRr6/Vdr/ecyK+/uThhGEpsFAgjOkrp/JqLmorVJ1VYNNSM+mCiM8xcqWygfo9jGCwMUZQlrl1bG9WvTEPWTNLMqE5rDSR/myNJUC0BAS4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvKkMn2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvKkMn2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A369CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764859373;
	bh=4efYx/NxndEgpB+pe7iPpq5C8dB92/8FbxwqLn3lgpA=;
	h=To:Subject:From:Date:From;
	b=ZvKkMn2fyG/vLHQ/UDRXpWc7c+L7qV/yiKyLWVqjfdtQg7ahkm4eCEOQqHSl+v7z6
	 SYenWLb8hQwsP4yOhGNet7ngVOA9I2P6yhnenLkUCMwT6eCaY8Wb1CpMGoq9JkLyiT
	 qeC5TM/FuO9KsxrhDToLcIpj9whY02tkIUsszkEMebY1w7zgx77YKe8htreSYOLHm/
	 mfE2jjRdHc+vZjyGXB76ZZV5nb0E/qlhaBGyVRfO0F0vkdEREwMX9b7pef3OdJeHb0
	 nuQm2tzckKlnFNSWRhWMEC8Js6sGmbDhuoO/F0hOFTPpM3ZWCucutrvzErpnfIRkqW
	 Qb/5zUDwd8d5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9358DD206BF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485937359.26741.6499434034861076285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b71e83b5963e784ab78baa25a6f04e50f8c1bef5b48094b1ef49ed4509d1cbcf
Date: Thu, 04 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764859373
