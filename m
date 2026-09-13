Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C472D7DC8
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789272634; cv=none; b=o0s0+gVh7BD/qGpj/XpdGOoxceyO9u7r3neC2bCxRnj14aXzxM3O7TS1zmbZ92AsUnpX69rmuyLv4uF7Tn7f35fNBuZKie6wK8sfnUwtIaA6CN8petQVpGzmNZWuuvtdqOKCukh3uTV/yEZMtJzPQ9CBaDSRNmYWJVIabDvKbB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789272634; c=relaxed/simple;
	bh=FO/fS58+jOq/pnTXQY/xedcsuhJfle6mJleo5nhXIYQ=;
	h=To:Subject:From:Message-Id:Date; b=VpgFx1UvqgevM3kbUaUfZMko/fQRU+iyJfpbdoz4ESZkKm7WR/0d8s4Q6ECoxEUXhwss1XXy2nALHIr4YVa5xveMcTmiN7/yaatwy1tmXc23CAxLWIv+k0wkcnijJkJlS97xZsSG2igw3ROuy5ykyIiaMyQDk6AzyhUyEYEHKPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvWcYf/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvWcYf/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BADC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789272633;
	bh=FO/fS58+jOq/pnTXQY/xedcsuhJfle6mJleo5nhXIYQ=;
	h=To:Subject:From:Date:From;
	b=gvWcYf/W/G001F1Qru2qGYtZusPWqYhUqOuGK9fNETOUWqGelePOC+rpAT7q9ZgBW
	 5JQDIp57yMS3kbL+p/rg8Cv2csT/O2KW1PnzTBVooCZV+0biKRvUuTSA2CEFkry9GP
	 dR3pUlnxGa3F5h8+PDpTYcNEXc5l9kekKYo8Mes9rgZkN/0TnskB9f9sMMuvxlyPKX
	 TqE8rns64C8Q4xNq44F7FSXfImjWJVvweodDrTMU/IKbqggKI+b/wC9JJ1cJpvg3iT
	 qWl5OmUsQ8HA+M0yDBzPSri3GUPsNaHBYqWPyqMLrc74l8tbSqaGklkFV/xKOMa4Gf
	 ffbq1ii7dBVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6DEC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927263368.26481.15704059712823901997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402032fc67331f56d7e4fbc6a84f83d94e5066de34428b1b666510d39aa3666f
Date: Sun, 13 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789272633
