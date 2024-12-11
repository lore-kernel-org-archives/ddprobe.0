Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E49B1FE462
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733886354; cv=none; b=kpHGNxWLiIxyIehRucbuboyyYX2PjnjdqakJ47JV21aiCxiqD2KxNRL/hTAmW/euituI5XoWM8wYQ54BgK9uP0ikbfRdcspks+1CxIV5bXED+7iAxVurnp/n6H0QmXnrphSpGKwvdF/79Hm6d6laDpps+L1DIllqwbxx4wU/S1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733886354; c=relaxed/simple;
	bh=zOeDXX3QnkJnx7Pq1PpNB9O35ZmLBUghz1QpUV9Cojc=;
	h=To:Subject:From:Message-Id:Date; b=LKEUNjo7Ay3daHxn49Eb31I/gxVD/d7wLDkUETvNaDnhgjCGM6B2EV8dpeV0hHlBbpr4KAtt9KUION18tHc15AcLIbVHYLdenupzxFD6+aFBYXiOfsJV4/V+qlb1n2Cbb75BO3MPCsONK4u7MQvRp7uIrRaZ/lgsU7X+Be1SpSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjbrMwem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjbrMwem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF4C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733886353;
	bh=zOeDXX3QnkJnx7Pq1PpNB9O35ZmLBUghz1QpUV9Cojc=;
	h=To:Subject:From:Date:From;
	b=XjbrMwemXqItRyik7Kk5PfUMCHG1pNqN5n/1Wezgl6eoFSA4cW+8HON8b4aohre1p
	 R/3V23r5F5S6N7ZS3MhUMcL0RSSQQZVtB3lmxdCg+5KBSUG93YFwgwZ11CI5+D1zDB
	 9NK9jzolmeSw/7E1zMvYjYsWubvfRHF0d0KxROv5h4KUomH07MMlXjIzlS3RTLV+JG
	 do33lA/Jhr8ucOZPt8yTozjWXIH9eJLNJEJRPQKkRLhWK0IKykG3MJhN4uVOjsfg+Z
	 bb9u9fwAxoXKhrDHN4/8DDJkKqxh8jKEOZigQ4ECaln/k4GbUk/y7tO/ZH8qO9aRXF
	 JEMIj3XWm35Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3EE7717F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173388635358.30396.7281722255128531409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca41a66aa35a4a4658829fee18db5d8c47bfcf89fd4caad080f19fd23fcccdea
Date: Wed, 11 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733886353
