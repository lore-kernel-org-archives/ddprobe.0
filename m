Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CCC1531F9
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728891954; cv=none; b=GYtqQyykHilZYFltcJteOwvqQPAdLDKRIzAUGBcEIdOgOk419S2Z0AoRoEGjoaxvP6t4Be/AkS+uCBSp3ZqAkuWUPRnKv8BZ27Ii6p7hOF/aEWWyvJyQ97segJVjZIwXTDSVlRj1IEHK6LrT5Smq2Z2Qr8x9OUCx1Bc32XGcvrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728891954; c=relaxed/simple;
	bh=0QeQtlou0l6pUjkRalYR7h0JS2Qnc6tq1FnFD3fdayw=;
	h=To:Subject:From:Message-Id:Date; b=HsTYR4MYjP5uk4LwI0O1uxOmRfHNJEnEKkgE11hrhgDU/vre6SWT5wjAk+x4B/mwops3+qZWxu66h2IpL9zHIOW3npjz2eSdMNCRf/H9SKmTKG6oewlDR5KV6mS3Ef+Nhc/daK2AV4FjQ5enfsFW2wd6CjE5VHv2dJvnsIIfDW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5LxBorX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5LxBorX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF7CC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728891953;
	bh=0QeQtlou0l6pUjkRalYR7h0JS2Qnc6tq1FnFD3fdayw=;
	h=To:Subject:From:Date:From;
	b=G5LxBorXC4A6/8gyGdJAGzeb8M0LqHmBl7S2NY2kc7TJ0aRheF6uswjcOreCJk8ZW
	 ttttKX0bDSDOm01xIYlnyutQY9dlycbDvR1zfGsGeFdpF2GLu+rfHGGJACLan16kUm
	 gZPnSOz3sG8h/NJtsZXjv0WsiR2rgzh9q4RAs6WQB5Cq3Z0WHUGUNijZD8AxC5KB+Y
	 QP1HayPkJPpkbW163Bsrg2GetIrrbCaFT9W3fpFl1mywi2A+z0j327eDDhC+8ld7KW
	 oVBBTZtHKH6o0sbdLDbCpMiAmDbrbm+/TG52qSCdFvctdH65ZWAGTZzHmkwmj1YeZY
	 d9DUoWeFjQblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9424CCFC501
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889195359.16245.12443345132578499500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7549e987883ea50bb8efe95e645e073b286f8f16ad2550bb5373d1cb0fc0dfa
Date: Mon, 14 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728891953
