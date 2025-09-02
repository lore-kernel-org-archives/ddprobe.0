Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31A320E00B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756852794; cv=none; b=Bc1tfdjPVSPI+LrgN0bpZg+0rQmKAY+3W/6yEBfKKojXbvrp6TvAObe0lCs2gIPJeCjToRAB9kN9Il+/CyFvl8qvENScBxaKZlLOZDoydIlXzAIwMjDeY/2R+Exy6ql51ztvDHc7/PS+GxgDg3pYzgLeSstNHawmXVOm1nWjU5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756852794; c=relaxed/simple;
	bh=uuGFDWnrW4ivcMqZB/SGsdJYhgF5GceSGJKbAn2zskA=;
	h=To:Subject:From:Message-Id:Date; b=fnHxJIXW+v1Xp0egVT9YoCvJR4OAwrQQqMrE4fVidxkJFacGuRAooQo/PYkTbU0/+ezXJ7wH73yzO+Jqve+q8RRZ/2xPQVP3Dp1nE0GB6itb7mOvj/XFfzwh/pSvr5yoW9nFiLkfPKbQY6t59W+ZGAh6qQLKqyujIhs+zBlnGjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG+VX4x3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG+VX4x3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB426C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756852793;
	bh=uuGFDWnrW4ivcMqZB/SGsdJYhgF5GceSGJKbAn2zskA=;
	h=To:Subject:From:Date:From;
	b=KG+VX4x3NCj/jRctRcWRUqen7E2rm+HdH87NWNg7SWgpzzj8NU3vCq+EZJY7ufENo
	 HZDsiMn6XXEmxTUauGK+5Iiv+OrGtgyN8vIpiWy131ZjnV3OOsWpoGXQza1xc1Xzz3
	 9BuxkNhakQlvC1sUJZpHMvm/gI0qo+/OYE5y2aV5/CBFSaYfLGXYN0yJp0/cNbL/SE
	 JFpOhYd467oIr18bCp/p8spfZYa9BXtEXSWLTnQg1p2pCILntEBgpgqQZtpHuuCcAx
	 Sefx0Y7DR7rmgsHu40ilWFWg4s+GIulEuXYwDzA/7Ee7Y6A91qgonD0sjYqZ0fETXX
	 1vO41gsUtWrXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9546BCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685279357.19618.9091253496139113408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49dc963d856f319938119dd4c81c4ab26b55b6c35cddbe0f24215384089480b
Date: Tue, 02 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756852793
