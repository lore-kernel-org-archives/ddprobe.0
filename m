Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A60290F
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736382954; cv=none; b=qXJHSMD8s9DoM14EEj/slrgTsXmSwhR9fHxX3P8JjEusncOR/70eNIMBVlOeOFmIp2MMvGiHZMMgJTcAN0n7BouV8T9nc0iSVXH/rMksxHmpaTUcrx4ccNrcLlYrkpaD6YLcZ2VPsWgdE9Xb2DfggxzUxpf2n20laBe/njlE6lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736382954; c=relaxed/simple;
	bh=QZ+I9x7IZrqxTd6QqMS03fjioaJ8zjgFhJCDdqAorHk=;
	h=To:Subject:From:Message-Id:Date; b=doXlcgQNBdJMhXPBdkaJlRrn1vGH7FdDMKBl1tNHvS98IwH+V02s/l8lipyZgl7z7WjILNit2i1Lkfuo8qKVV9RRyFXDQKKUO1aq96beVdCso8B3jwMeyfkSSurU4ALl6W92af/p/xuy4dzD4vn6nJAiF6Mt1Okb7YWFczhOCw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3AypCQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3AypCQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ED7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736382953;
	bh=QZ+I9x7IZrqxTd6QqMS03fjioaJ8zjgFhJCDdqAorHk=;
	h=To:Subject:From:Date:From;
	b=m3AypCQEazsx7p2dE5VvDtdsIdY5VkAHrw9uA2P1xwlpyp5GpJJoxbH5bf3Gccw4n
	 y7nH1aVOiqUncrNqyl/m2/iDKYhDg1v/K7xJWbVNih8R9LF5n9+E9mVwe2MWPBlvZi
	 hAfT68pfvD4ukx22bQDYySeD7hzoc63tTsT8CPoaHnqqxWuNsQ6OHok2wLtdKma4eL
	 RQNNHE0WCChtfZbXeEXrpSK2xtfdlkECYIf4qJYFNIOo+hR7S0V/TokNfiLjAjRTMo
	 7fTvgTyoRl8Uzn2aAtnCxFr5kwm3g59ESoNpj41PUg49EqK+WRIdbn3L3qorqLE/9+
	 NNYtmOv11PIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F1FE77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638295359.28756.481283027111812618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34e0f5bb2f88c33f4633c91f4e45a65201c1be6dafb20cdc46628e2a972c299
Date: Thu, 09 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736382953
