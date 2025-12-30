Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFE22836A6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767054234; cv=none; b=skeFjenP9/hogMZiBbneWhIC6qOvMaDn4Skkoau+woULsckhSJ3pyVbaFkcdQ4HcFivX7jgM4Wgg1haK0lAgGesI5DMySkooBFKROkxoGSheOzAUs/F7pgFHgMfP00ef2eVgmjw06Ct1kACyqPlqnJzWns/xAh0JWb6ii/BZXC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767054234; c=relaxed/simple;
	bh=W8YFaioUBNvfQ0QuDXIlrUYT0iPjPfIZDPZm+TFg/J8=;
	h=To:Subject:From:Message-Id:Date; b=RaqOoff/T/hsJHPGn+BRSMNdY+WGxJTltF57vN4GbtuApzFVWnldAnNwZO9vDkfm5l6U0c2v0wAZ0acH5O7Tf5spCpFjrriZ6Qzh9tKti6kKTdR0lDieALp5PDpVcEZDxBV8wNbd9jb4t7i375P3kLqUUXlfWNiavbIprHqdTbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCjuiQyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCjuiQyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767054233;
	bh=W8YFaioUBNvfQ0QuDXIlrUYT0iPjPfIZDPZm+TFg/J8=;
	h=To:Subject:From:Date:From;
	b=eCjuiQyoxVeM/QktCMG8nay04qQRushvsVwI4WZV6v/+l0OqVCKRJx8lWETV9fRio
	 eQVBkCzbLRUy5FQcy1dQkFpVkl8YhVjHfTLNhaIBPqTccIsnC3DdUJ8UjH6P04tHAo
	 TWOs49TLOTBdXre6ETkU0HftJSLey/JtYdkJ6wMiTuXEg/BvyNEchibZoFdTIuEg2G
	 ccLiR2cg5VQR8ZX9nG5T7tlk/cODJ/rEn7CGGiF9XcFq3j2X5A4tMO/ILJfFvjXURu
	 ukhltcLCv1Ov+el8llY5wOsimJvJbx7n1XkwIYEKNHBOsrEiYGrYDI/OH11gT9C0pM
	 5xZgdxm5D+nig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C7E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705423358.11787.10527998614124959321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308b098802997ee407d66bac271d8d94bdfe819c74e9066f25d280bf16edd469
Date: Tue, 30 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767054233
