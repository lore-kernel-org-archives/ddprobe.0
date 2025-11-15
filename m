Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43353194AD7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763199594; cv=none; b=a1M6ICGD7QuvVQmeFkB3ABFqhK5tO45VDUa0Aih0vX9TZm41o9b0Mtx/bRuf5RSee/RtH/DaOx/KUWKRHNluGzn4CFh2LylYYnoVLXUTgBSAwkR8kg6HV4BkNBHUP0xKGI9T8OxD7uCt6lOYXq7FEpvm7PM5Oov2fGG2AFh2Jrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763199594; c=relaxed/simple;
	bh=NrM0xtN0JYWFHEkbt1wxfy7y6Yec4bqmUCzXxxoWRQw=;
	h=To:Subject:From:Message-Id:Date; b=XZAuBz/4qCP2uhkKOZ3GRO8H3bU24u5rkokEaABWvaBMk5GrDx4sPMQw1IIiEvDOl7E0ih/zy69fK0JiztXQ9PcsMw3fokTssVHAX27IV+a7vhy9T/tD41gqWfl9h0WRbhYYQ/EVv8eEIsLIu/MH0Dk9+bMLtmUtAA3ZR3lR6LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyDusrWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyDusrWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D0BC113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763199593;
	bh=NrM0xtN0JYWFHEkbt1wxfy7y6Yec4bqmUCzXxxoWRQw=;
	h=To:Subject:From:Date:From;
	b=lyDusrWr8WMLFikt5OOHBC/yjeUL3rbra8RztEHDAak7/o3uE0Op99y5KMNzdFeLI
	 p3vAQg4szBuOe97wfVOujOMwHj81UGmUG3pzaJdColhYt+CHDYwhKfxi/YfD6ng3Px
	 jDHj/deRj93bsCUPAEQcs9qOr4coxCG/G0pyR61WlAJ6puebtljlvEm2LVvXOaswk/
	 INtzhgshkSKmG/WQFfRSZyy0SIkUJuwgZm0d4rsYIoQ/bqO1yWPNayibBK+VPxP0s0
	 xxUJsCXXq951RnT92ERB3iz/Y36Vgaaq0N2xFFaha8KGjWUjtRh2DTgCUa7aPQVFzj
	 FT1lv5VLoA8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC63CEB2C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319959362.3996.17844895722837687555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684646cb7d1008b68e01508ed8528e3d3068a5551152f347dfbd8edd881abbef
Date: Sat, 15 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763199593
