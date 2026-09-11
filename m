Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EA710F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789167634; cv=none; b=ONQEHOhGwL8u3Gb03Py62yxg3vdQfj9LHR+p/KbFRiZtgrwvZLvwxA3qacSnv0m0MWnq/KaJH9K0S28GcQmbYoCENhKfub9vB1W09T5AkR/VyVV7bjswJIGnowifeuMPItCZbZ1ZgjKWo2DEY03vX2zt0ImC9QeV/jc14fZ2IVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789167634; c=relaxed/simple;
	bh=AE2U5cSulAJ9xR8HpJut/bQ7Dl7LVO281g59UqkHczI=;
	h=To:Subject:From:Message-Id:Date; b=lEBjibhBRvCYKpsnVmaj+QNf4u9bQ5jzuED0YuM5gecm84J9/i5pL3XUA3KACqgCZJVJvqoJeR6sAb2hIv9phRdDJhizg65C9H175KNltA+cwuNKGCGYQ1PMUQMzvLYxpVfieA8+6cfYuaFqUi77G5wRwk3kBXz1M8pzy0lI5z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZvL+u3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZvL+u3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FDCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789167633;
	bh=AE2U5cSulAJ9xR8HpJut/bQ7Dl7LVO281g59UqkHczI=;
	h=To:Subject:From:Date:From;
	b=JZvL+u3UKERHL9YQ8b8JFs1oPgPa2n/edLazyKbgCMGhxlkO3oFOjX1Nj1DtB0l8Q
	 pRNo38cbj/tR+oTFaZr/q9Nc0xUpq10xcbKzFl2mQTXI4QzUd9K4BViwMee841IuGY
	 O1dkx90E8nT4TyfC+kEvszKIbJp4MXzJj/Jpubg8QLG93B3hfgeh/rH9IX51mZbFBn
	 Iqeke2kC8Ap2n4323OcWUEaj0h7/cuKpVxOuTSp8x7a0A+Tqw4om6qZ3SFpfz4FXEq
	 FRrlaC8UZT4c5NL3bWGChJ9qGzRV1oHq92v1S1F43hxNL6QaLh87T9Aj2Pez3DQXP+
	 vWWj1e5HWt9jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC70FC88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916763369.32689.12266628082185122294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fb14805e4245ed6ad391b461c37e4dedd945af6303ebe2e18b216e10382a9c
Date: Fri, 11 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789167633
