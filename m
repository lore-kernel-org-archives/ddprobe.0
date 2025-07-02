Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C842F509B
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751475594; cv=none; b=JQyckdAsWH/NFpbjCW//IK4NEUMpS6yyXMRgfwRrkxYMFs+JuRn3Y3jtagTutIqtyxA1s3HRj76PdOlGyWKCu1DFnb4S9K79mf5f8tXrUDHrcl1+WIw7+W+SaNF33qYkQjLFSPNzxyfyGpdXwNbdR0l44Uy8rfsH7aYrmRz+QAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751475594; c=relaxed/simple;
	bh=hrLCk+qslvmBAOHq5KkXEsY5lSnunJ7Le4djgrgvbsM=;
	h=To:Subject:From:Message-Id:Date; b=jrIGkcrRl10GCIqbZFbTvF45q7kbAIo5/9tZvb+BzmsN+TikQl/3P8k7Vh3fn1scrrROfHhofLuhCVwwDj2TiAKga7KjyxtolcYIaXfmM5m5djFcur2XxdzIvdooGumLdO3YHUn04sH5vq+ei51BdDuRgJRNTahCLNHhkMEUYgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkoVn5B4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkoVn5B4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751475593;
	bh=hrLCk+qslvmBAOHq5KkXEsY5lSnunJ7Le4djgrgvbsM=;
	h=To:Subject:From:Date:From;
	b=bkoVn5B44cnhqq7oKzJzj1Mc6jkiszzWIr7Jp2Ds/N7qq+5DcJrgVVK1NWjnFAgmQ
	 qmsV/9Qv9QXr3J2iUf4QRjwFc/ymbAAX9On1pdJAFiWr3RDfKAaO4FHYQzQosazMch
	 3QQI8xE7LDLG2SVS0mkZt825w/AVDBWswsay3FyY1FoDOs7i/4wW5O53EPGBP51SRS
	 6l09/3yPw1zNMbyXa7n98M60LxSeFEhm4WrX630zcCbKJqf9SjaUVOxBhY+jfGa9eu
	 YWEZtQGqW+U7b/wJLPwcdf7qU/j1H3PgBq7K32Wd4NNx+eitP2OKVXLbovA1IOTFbv
	 MM7jn9wFGv+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A7C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147559358.31989.17273601711178673002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce369e523e2b2e6bd2ba64ec0762c792e0540673488465b87f0d481f25e4137
Date: Wed, 02 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751475593
