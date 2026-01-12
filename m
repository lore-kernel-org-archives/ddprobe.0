Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0430035505A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768221234; cv=none; b=jebyH3JX3mgFhNwh3EmBng9240JNltCtPYIknLtoWa7JyktJ+RA0TIFfSUnhKI1njcbZgvujT5WcZXtBpgd1BvVHB4faia+UeNF7Pgw5/+NP3h7EBm0uehpXo9WrhbAQv6VAvuUHdjyjOpzUAsGWWQd0FQuEqS8mHncUO6EZ0pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768221234; c=relaxed/simple;
	bh=FB7Gk7Q8avxNAvRKDozNRKo/ciTqNjLP3WJ2rlnAo78=;
	h=To:Subject:From:Message-Id:Date; b=tB8HZp+QjzFQSct9MZ4WlpQEplkudFkdTxcVK84R1HdMDst6mDAjJvE+QaytnYe+NZj4AjPqu/tXS15zmv9caySIRoR5bDGRtz7rClOoXiVXVV0DPCY3dca0j22K8EEynlHbxBQwEj7eB90NnpEcC7JqJmoZ0F+9kPWK7Gx8+cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGJTeaF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGJTeaF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97CA5C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768221233;
	bh=FB7Gk7Q8avxNAvRKDozNRKo/ciTqNjLP3WJ2rlnAo78=;
	h=To:Subject:From:Date:From;
	b=vGJTeaF/QQC+o+atYapvyzeIUAk6+G5yGeIKdvw+3yAaFEw4Uq3svYyvlWDPL4TGg
	 UR5XKmUD4jt43hKYWksRB4XVBt7HX/3Jnqa3KwBPBqA47KfJhYTvQgSh9B4TNRg1vs
	 uRqRPJRglCyqtN62zWWfs42NlM0ijY+v0GCn0/QpqKIjYxvogMkQUR/TMMmeR+zsnb
	 jX3ZLCs6pMb/Tvh5eK7vkj/rFrrbIQsUVo+XEkcLbLCAaY4mM58g0qyu1cagPvXMBQ
	 5eGysNwa4u/YSpdwCk2mHtCNuH6O39CTjEIRPJ77bJWJC2xzRvF0+yXvlDeZMNpTWu
	 1GAL5pFNVHSmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65FC9EC7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822123357.4847.17501072211830538693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ef2db44b5b07c359f5908212167d96c775a4cb5aef544baae2bf40e98e30e8
Date: Mon, 12 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768221233
