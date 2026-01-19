Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31384352F83
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768814034; cv=none; b=PI0e5YhtvnIdtv1oDAGxi8ksVfb69nfb862b/G7Xr79UVaH9xDBsAOi6TYdA1TYx3TCxsJDXRLTXNx21yFLEoHAUVrMClbR5veDSo6nUdm+TRJnAHYFckNIjIlXuaNkX6t44cZTBYqFe/x4svANnrCrGGud4f2bHBmS5LwyY6mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768814034; c=relaxed/simple;
	bh=rjmnwqC4PuVhQidGr/SRPJEd9pQ+PhZ8WRcfSYV56bU=;
	h=To:Subject:From:Message-Id:Date; b=jNtRjsCWI78iJ7EIHVSwIMVJb8iY26GK5ZlDmxahXWVGe5Gq+q8Dy6KBoTGbXVyfV3gj7BdC3kA8lgVs3mUORVcdDtiVNC9izHWyttZ08jS+ss78jVx7IdUV+1gzOj8GrG2pXw5pMQoZSc28oTd/W1rtuIN8K/xxS/apNAOBxfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrvX6P7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrvX6P7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAB7C19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768814033;
	bh=rjmnwqC4PuVhQidGr/SRPJEd9pQ+PhZ8WRcfSYV56bU=;
	h=To:Subject:From:Date:From;
	b=OrvX6P7+N/pUC78OdQUYSVvH/XK21h4mFpWdyy9clOZx5SBqPmHtNtBurTvVE45KH
	 lIb4J3quxFIVcXbTh7wQE4hV6k9gjYqiDtg8HV3UuCYFLUPji6plDiqlmQyI4oFbua
	 WAPdMyAM5n7XaZVwMcMlmDVGl1Z7lq6jyYE0Q+ZoIbaJKk8w5Q+3ITw2cJFVuPYFTb
	 f4K21/JT+TwcqVXYRK6AYzBm1FWgl/xJY9i9ewsG80ntRystsCNm1X0Ro5fixp8JZU
	 jWWxkQWTS3+r1ZtUy+map/3YeJvDQP9ST87oLc8KEa6Zqi0TxEM773XEiTVHw3+uX7
	 LaIzpi5oOhk1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908FACCF2CF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881403358.5374.7053203923235010460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab804f293ebfaf5c8bf7bcd56ca54ba99671b03fa9af20a801c807b23835f88
Date: Mon, 19 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768814033
