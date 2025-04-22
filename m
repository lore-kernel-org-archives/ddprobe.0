Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B28221287
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745344194; cv=none; b=sfO8PcNHR7HnfGBI4T89UhzLguWzQjkVsHf7FmPNNXT+lvLOUSMmWe4cumzu6maL/rFxC31rvNh4avId8hMxXFXcS0e3xt4mONHkZJF2oa4fm7LO6Rr0Ncr00P3eDFzHOmJF1RzSXsT1gf0jaZX+GMiEnUv7e0RZ+UPXb+0EYIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745344194; c=relaxed/simple;
	bh=YjczFYob21lq4JgmuP6/yaBdqPqdqSYq+GZzuJ0VadM=;
	h=To:Subject:From:Message-Id:Date; b=ioECPs5sq3FBFDScRfKB84Q0BgeSDAgUW4dM4ilUg83iTSBjOdXMN0R59bYLRCRhfDErNR/8B4Cup9w0q4hy2vsdhaih4m02+YKtlJ5ZyZ+mlTLHKY6KDwzffJUIv/+HcAxhQ11X3PDjwCPGnVxU7ewhTSkxA3NNc+UKE05faHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me+fsX3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me+fsX3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6812C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745344193;
	bh=YjczFYob21lq4JgmuP6/yaBdqPqdqSYq+GZzuJ0VadM=;
	h=To:Subject:From:Date:From;
	b=Me+fsX3kgW5wc50TsknVB11q0dXth8tb/IEucCp9VkVvpd7qloskMVpdqQYyBYCqm
	 fmDvuGC03QYpflXUNrAg0jEQHocG/3sQ8xWwLspoMw8mL+TmTwl4Kri1sria/XsKim
	 Tsn1WGrTc4hfv9Q6m1ZHYREAEeVxmsUDnZ95N4uzDS27o7X4ZqQTYUIhDZE+bV2/yO
	 WgEXXC4NloX2zFmXjB7ieZZs3gyRQ6xzakMKixRJY6/lJw9wW7ZhIG+x0EkdRCgP9w
	 eicf9m7yMo32FWOo3YRKNTQWzlWJWF0Y91MekqiG7iefoCYNf/73cyVmQTKFurVuSX
	 HoENOJdwC7oLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB1C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534419360.18781.5320887150777787927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027ff8e8cfb43a0f0bf9ba5f76dba614e8a565819d4578d0df8e71716cc4a12f
Date: Tue, 22 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745344193
