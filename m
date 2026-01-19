Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B47D6BB5B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768782834; cv=none; b=eBTQ4awt/r64xpw1dV0/37BER5g9MTeoc8XcFWnm29QO3RWRuPK0tCDDkl0GpwWKpy7XbTpyUt86ZDeFrmMbxL7t1lyA6eOtWQ5K5xXK30S6nsnDjon/zdbnetqYz2Ugye40x5OqbuZdvAk0S+N/dR601yVaDd0YgYvJiz+zdfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768782834; c=relaxed/simple;
	bh=vlxkHjfn7mv2+G3EPn6lZ9MNJInfD2jz7MqgNJa1UFU=;
	h=To:Subject:From:Message-Id:Date; b=pnrHC4+evaG9FRawO+6fbMuU6bhmroJRaN5jCh4pP8bQB8YJK7zNlFeBw5uqxIY5wkHWhFY9zouDuFePdwyrJT2HwoL/DuyYXqL3kwJaNIQ0B9MRyHwCesWEcjIZVL1MNbMbYxdd96pkurgxRj3K3pKj/dGGe7VkT1IfeP3sAhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dD9RinHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dD9RinHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE69BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768782833;
	bh=vlxkHjfn7mv2+G3EPn6lZ9MNJInfD2jz7MqgNJa1UFU=;
	h=To:Subject:From:Date:From;
	b=dD9RinHkBI/5U8vRlxGbE9BtgpYU/TiSksuttmVNOqZA+av6WYp89R2a1CqK/2lFK
	 SeZvIFnafHwudZJKH5Kmd3TCSw7mu861F183G6kH0QS/1fKjYrXH9f+vr6LmILxYd5
	 A+UmQqG26gaaeQCXF/OmlLG2C62RAOthz91+/3xQ67Hu6NQpfeZ2l8LgWmu16sE0y2
	 W+JKjiNH8hMVzpJ9pbIFh4H7UWK9/hLvcmHQ0OV9zpbc0CJpHERwv4XEIywK5+Zlyq
	 3wsvIPCxEFLu3LKsGYJJQdDccVbZLhfsGOalm9Blnqjvmwo3HDIF3M05bvLtCukzjw
	 r+rvjcLAdKK9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E03C9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878283360.22473.9303745378312546256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3757a6dbfee4d6ba41bd062435f4f6c6f5ee411369e8c520e9bc2ef30fab88
Date: Mon, 19 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768782833
