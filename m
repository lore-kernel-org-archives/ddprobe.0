Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6C4763E7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718693363; cv=none; b=qk3TkIr6hJcbIlXOqDb7LF7L9qyMhriqwRA77JNQ5mIpxrP+TH56e5Lk4F6PLFJoJ4SQ23icyuhUsrymakDbR20ZjWVJJxHNH92wMiQswM3pKrVY5xaWHnWOB1dIUj7PLcPx30OXhYCaO2oEkHWfrqkWYyMmRtEnnQukIhwva/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718693363; c=relaxed/simple;
	bh=PVQpfBQMUJJqnZNq3CwsKyb5K37xXMJOt4CD4+fDQnE=;
	h=To:Subject:From:Message-Id:Date; b=JyxHNHODdAzITUFGRdw5VVZEvwKiVHBxoMKOi91YSCTMVFQfxigHzMgUoIyX6tIdnlInoxe0sCv0v/n92k5JuaGimQxye4+qINJiw8P4WK00Rn03pW09Wp959SvCAGkirb8VqzmNu1OffSItyUZRQVmdnwfnLsR8bfvWXOW8ims=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP57tmNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP57tmNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF65AC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718693362;
	bh=PVQpfBQMUJJqnZNq3CwsKyb5K37xXMJOt4CD4+fDQnE=;
	h=To:Subject:From:Date:From;
	b=lP57tmNKgjJS8RhGI7uT+i1nZyZf1BwcVYyKeETsXY5upkFXSM5Il1J5F7pR5z150
	 qxjSJLHF5kPDgiJ5c9nPo9qgjvRqIG0SI+DUdyT4piqmVz0Dp4smB8uzD3jFlaBkxz
	 WYA+wZATemyL2vETMHvF7ERNJsSvgorC5nMsdkF9lWdKKrXoPGOsjxBPesSG2jMOQq
	 H8PkF3VCi+WOM+i1LDkIYjsTljAcgCiK6qqTxg67KQGfl2jWnp1TN+l+B6ogOZra9/
	 g3c0Dph1A0nphv9xgxJufQv3YhANIuXUgZ/i8Uv5tHByvJXdSGaOk/KVaq5KrbaOeV
	 j/4U01IoxY0Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9D3C2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869336276.23788.11272296034683501844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7a6a4f2dfab6b71f6aeecdefafea231e51f4181192a5aecce6577feef27fea
Date: Tue, 18 Jun 2024 06:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718693362
