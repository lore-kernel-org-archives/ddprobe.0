Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40361143748
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749101994; cv=none; b=vDkALlpOMyKmnCSR6bXt016Mvh9ShxGewLrbPcZXNi1o0BsZgyv8/2jAVwWJjGUvbzy3X57dEjZS3K5UDUxLA3TZpHYuk/bg/xjVkmiRByG0GejUtsEIzKzZYgkCQGFVknF+SgZpU+z6DnQ2uwBGXk6Bsau0rLFuy5O2NY3Dd5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749101994; c=relaxed/simple;
	bh=eBnzMiw96qzUwy4KE4KBiqBK76nUqHtV1f1yRZGV/S0=;
	h=To:Subject:From:Message-Id:Date; b=RwUiv+k0mGawHvC5zOQUxhggU8+TZiGCQyZbiLSWFYjWBW4wiAXdk6H+/y6cIje9YrgCorQMz0AT5UdImqxJpEHq10yQCGDa2ddM4tbiwPKp+SMWeFLjkyOu88Yn1raSdPGX7ekEF+iGqw7bGq90zTsDLLWJjGLi8qjhbDfyKaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khpH1h+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khpH1h+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749101993;
	bh=eBnzMiw96qzUwy4KE4KBiqBK76nUqHtV1f1yRZGV/S0=;
	h=To:Subject:From:Date:From;
	b=khpH1h+sh9mTg04KGjRf634IE1P5VLmoxOgUIk8HUrdDnodnndEaC/6F3CdtbUaKF
	 HT57BSfzgnkag8+h6b3v2cwXnl6aMhOZ2HXGab4Jdc0F8nxvcEIAPLXt7403z/2Qgz
	 bruNuUML2QJ3domYFpiWbby2zB/PX8vDm411dyaxxbAtz4xGSJii574eNjLpSCoL05
	 BIp/mR8wwFojp2lNJLjzXI2zakhliG+j/gZQ02ox6sLxPl/P8r80hySibuLFj2uiNi
	 BvGw6O5wLBs5XnJq1WV0psTIWtEgjHkS0lfBOXZrRNUyl2AcEkSIH/Ib7LFzSD4tie
	 PrJ1H2EQ1eI5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910199358.30951.2364078517545497984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c4574e626598e6760df9d50be51d693f5c630fc75d15a82fbeaa40a544c621
Date: Thu, 05 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749101993
