Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B5042AB6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718572703; cv=none; b=sVDRIsJfgc5+lvDXeJCyW70Bm3w73mHaUj0FtFBjRw7fEFT7N2+lAXOOittFuMFr98RYGZYQVcNO6/mYFKTi/GXi+yphkUizh5OXZl75HxYsZFb83KBSUG3u75AfMd9QIsr+9KoxlMQ+nl9JRcENldBh2VKuRdAAocHWujXtxBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718572703; c=relaxed/simple;
	bh=R/c9horFAw0Y5avI4bat0RSB2RZLlzj35ixDMRBifLU=;
	h=To:Subject:From:Message-Id:Date; b=IXnarm0GX4zdzoqxDjQCHWi/2i/o43SC8enwWjF3IGihoTFfXOtKxkWqC/WnbKZr8mgxfLyDIEeaCh3iOjbLAQe6VOvo0EeWNjcjnVyGmll7NcM5nSlDbaO7f4RgjBnC4beXi8m2rI/G3FRYT44zrKAnPQnHUfc919qKDHvwegA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kdq1fn+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kdq1fn+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BF0C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718572702;
	bh=R/c9horFAw0Y5avI4bat0RSB2RZLlzj35ixDMRBifLU=;
	h=To:Subject:From:Date:From;
	b=Kdq1fn+n8nwndfP4DZ6buuKIHEo0jcB1o6BJ/wZhguypDa+LjhYmIofoUauQ2uLxV
	 X3hCqleL/rPtuligqiRMjTmDUVAFSGYGPbDRQqj+dQwU7A6PL1TyTPQs5di4KKxv09
	 wkTjGGGl6SO6J3DrEV2s9xS2SMcu+vXG+WNymiLw0IjafKTTLVWpfy/MBOsIWah4RO
	 rppOnSPAW/SA/YxfcE7Vl/lH3t8UPnNWmxiD3eAAUNNywrfBegBmlRY0kKd4I2A2/W
	 xloi1pCmUhs8B4sI6cGThQtXmYsD1JyQ2pRPAzThj0vsp9kjVmni7p3s1PuyKzo6wN
	 1qxVnF0W1JlZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6234C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857270277.18240.14529582799598108854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ba73c67ede160f560de7099db91cea08746875518120f2a27d1b6bac27d73e
Date: Sun, 16 Jun 2024 21:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718572702
