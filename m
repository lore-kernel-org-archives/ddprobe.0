Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8DD21883E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780619674; cv=none; b=AYTbRHcpb0MVGb2T9YIRDTCLuVHevNtUdF2uZ8K7ae7oyx1QW6BihkgQzVNbS7HQ4PTQW0mHNf9TpLV+p8iW5BfKF1ObcnwT048K4ILqurkRY9Vyj2jNU9NcOWblIP54WJ64fiWV478RkfLeA4w5lntl6CW5j4HzKlTn0hvOFhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780619674; c=relaxed/simple;
	bh=cTKpejzW5fWzzNXKj5nWQOwxUnG/Ez0yL95d7qzD89E=;
	h=To:Subject:From:Message-Id:Date; b=FoM4imG+QXkCT3aOZ0KaMQS6GZQmxjWex+SsGChRcfQoF6o4D+AMVffERgYhadloiGHxFWqmWQIwnjyMCV2pmOzFJwGojvmnM5wJQFIqJsg/5r7wrehy6nyXZTWdfNL+MDbr07+3Zb/suavcG6lDEZAnMgOvqWXC0puKvvb7stg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvl2gZ0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvl2gZ0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59D9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780619673;
	bh=cTKpejzW5fWzzNXKj5nWQOwxUnG/Ez0yL95d7qzD89E=;
	h=To:Subject:From:Date:From;
	b=kvl2gZ0ZDZ1Nnti7BnO8eSAwOQOs5tATkdkNACh1f/9q7oxGuXYQXBSuOEAYXXPpi
	 RCv8Ems1k7tW/DPPvx8yI/DFlTJTc6Kq35vK0PVY7zL7rcdV2xR8Rpe76V7gna07Y2
	 NH/JlBkp7onFul22YLYhyL7U1dvIceB3msngQL8o5dpwgxvPW3FW9intf2+UPhH57V
	 qEOmksmEwWYkCRz8BtmkwdY1u2fqhCl5uTRVVOi3JmwdAs7sXRJ9u9Bspf+cny5ksQ
	 8a2VXeDrSIpPvDm3vI03uN6f1LgfpiUTjzQhJCUTc/meqTYKB5PkwHZmPZ7WUqLimT
	 kO1aeTS/PnsxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0BACD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061967369.19516.4075574453849825213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feae31c2f3a2df8d503d203be090b5a55378fb880181698a9e6d37a382bcecd2
Date: Fri, 05 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780619673
