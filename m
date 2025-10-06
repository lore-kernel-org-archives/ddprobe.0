Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BB1E98F3
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759768794; cv=none; b=HNFal3piPo0CQfE40WG91DESSyZO5YBt5OP0FE0eTBX1nx85X2AtDbAE2th3HKCV5eeYsmjdTPjWCxeLp187kojJsi9iOfSEwmIA4h1+SoOy+7Q5gyK9d/Aco1KWXotoJIrLhe9eSI1ASFDavZBsMLBErVWYYAs9muer4lXrVrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759768794; c=relaxed/simple;
	bh=lplPkNnWo7S45MrwEZgcGMGnzuvCHVaIj5L/dxTmScI=;
	h=To:Subject:From:Message-Id:Date; b=oa1tJVb8VY0GDYbhdtYJ6CXoyJS/mLPnqjrsRtd5R0f49gUbsWMPJKnpdGHpu/JxJslVixR9vVSr1ZQg6f9nRc0Wga+/FLIpHwZmJ5bWnsy9ySt2uLldlQr60fRFRwN5nZ6l2LrcuAFQRDk433B2wk5G8M57N7yS2PpUQAbsJMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLWWWdFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLWWWdFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9BDC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759768793;
	bh=lplPkNnWo7S45MrwEZgcGMGnzuvCHVaIj5L/dxTmScI=;
	h=To:Subject:From:Date:From;
	b=FLWWWdFX49JixvGn5A34T/5T9i7CGTpfKAcpWBrkKEetybvnin22qKa3mnBQMj8CY
	 hzeJT3zP3Qhx4cFRKMp+kfPwl4z5Wkpo2I8VACdOxHY272XGVZn740iS/FExDenoxO
	 UD8iMSF7WUJdtP6hJkS8As1k1AFcC5w3L4OfhI2MXqkg6mRJLjb9kx2l1MprV99v46
	 8yitnki5Jq2ZeSEMLuW4bFNJDC1WlYzAMXtp2rANmjD6rfGgO8q9nkAkcEZQRAzDaw
	 Wlb1rkpNN1qYmhHTD5VzfAXRRtNip3qp1U6Gx8sLJoT6NDNBqq1i9hHo9BzYfYFutU
	 N70A5LOiF7qXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA37CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976879362.30582.9875429169181378583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6f910c6a49e3a6380b6298cdaecdbb4caf4e563e250f4ae8e55f93bcbef371
Date: Mon, 06 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759768793
