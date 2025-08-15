Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC972FCBEC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755251994; cv=none; b=P0p5T6ROCiKd5Y9VDF57zTm0lMdehCM82Ay/39nenyHDSON/8tw+PFB374Pq0ec+wdNFqm/MyIHxkq5xh5w+WYd0pLUHjSMqJB5oobc7GDJewL7JL2ov1/nddXtnIWw1NDLiVO84494YXNElDQHDFB03v41eRu503vXikW2b7vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755251994; c=relaxed/simple;
	bh=Xvr0ng6CqB+HZJAURfMR5q1o789nxZbLqDpLo/cXSVU=;
	h=To:Subject:From:Message-Id:Date; b=gHbZ57lIqtCCaHJoJONUHp4s15QnO3I+u97RyWCsIPdLp33TzMN8ZGCdi1JiZy/81IugPNcq+ost5a5Trp9gzgRi/SI/1WwuS/gJOiUWBrludYJCBv3hqmeE+cgq7+Hf/I22YKLMDXAPA6eo9o6Om9sfXY/8esdz+/LBbmYgzT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtTpNFnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtTpNFnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AEAC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755251993;
	bh=Xvr0ng6CqB+HZJAURfMR5q1o789nxZbLqDpLo/cXSVU=;
	h=To:Subject:From:Date:From;
	b=GtTpNFncF/tZRCWACgqrQTugfduKAEzHlTccljzcjPpj0YY24xVA8MZffcR3u3IaD
	 b2zAy79MVJJDxIil43gjFeYOo/qHQm7Ii/0zSsMH2/FCH5y8UxmvM6nlFszR+rXxPN
	 egz5QnoWw2f1vkbYmyV3kxLG9vjbaWzo5SQ7BBcu/jvuqlgPBefOJNYhK5jDRsKDPS
	 r4e8EChDVKjp8Vzeo31v6IvnYZDxcodfluN+rsWn4085uaKwGU4tE6/wOsBySo1+aw
	 o+q+gcW5aOU1DB26YSTCmq8mLYxOR2jLaSmvpjgMq1KAGyt7dr65ibQCXZQ2Ps2UFD
	 Td87YCVpcufkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D769CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525199363.8537.13401106180606372049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3a323643b0ffb7bb6563b060889cf1fe3a4f10d8bb488d087773eed752a58a
Date: Fri, 15 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755251993
