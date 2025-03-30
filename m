Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D731D5AA7
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743350994; cv=none; b=srSjbJSn+/d8HS22PtqxVYTmioQTIRoXgOrKuVzG4B1ERCEZPiQtFft18jCb+WduaerJtDlJbzjEjyNuw8yfKp3HCMtfBv3HQ6IMK7RJP3/bGAayHZ3Dxmqa5zR7wx43MgR3Rm48zCZDvinz5sdGOAk5mZQEtYPDI2QoYU+ndv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743350994; c=relaxed/simple;
	bh=1SedTjmRX+MPgvuAqtkWbjKHWShG7GApHgjc+FcGzWo=;
	h=To:Subject:From:Message-Id:Date; b=EVNyNID9hI/zuTkf+U3zVc4hIVzgvV132dBGLHkTHmSXv4tBeTuMQo9hOvOTVRytDJ8GadgnApRfR26NSvV5As53aQXCu2P2tmsbog1QNgBl7bFtI+JbcXzR40NHhQAab5ZokBupBKHFfNw8eR/tCTXbD/FMvL4k1RNhfOq/lPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6EFS0cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6EFS0cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743350993;
	bh=1SedTjmRX+MPgvuAqtkWbjKHWShG7GApHgjc+FcGzWo=;
	h=To:Subject:From:Date:From;
	b=u6EFS0cmOcYJ8nSTYPxg4TzSOhpSKgyttjFjM47JbD82/AsmvV6o7jZopcqz0QRgY
	 SGP8/n0GBsqsWUA72xhez8egE66qyImJ8ZJX09GlRxgkIRpcgo2Zc1D1pml0i9Cf9e
	 D19qe+gZJpoerJBE7S8SaTdXffhZrGgUpwM8Yr7Y8e+pzbUe/5N0aQnxU46Vtbb3ih
	 mW2XCNRn6lXgZmq8nP555qmh4dfUZGQDnDGZVbXtVL/VFRf3ac3Qv0MvYf31bMcHf4
	 ecHginJ0voYxQUryi6Lf7oA1sqBccG0g+tmQkcIVciZ8/fnzRjUD/dqke7V7VtPAKr
	 XFD0k1uDsJCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A68C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335099357.2493.429149310140418316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8990642d053ba3146517b3700af65341ccabaa2fcc2fcd89f2252291505503
Date: Sun, 30 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743350993
