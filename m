Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A0EDF42
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717499123; cv=none; b=ESuV+/8dxmj3cK4DO43cae+B3x3088/s3YSbDpFsZzqkN7RvPiuPFarLy4fJ0jZPl7PNqicA6cvFR0fuSw1gBRjg7NBfH0NfusDpjZ4CWf7jDU/SCeYgm4Ox6FnNZng4JR1WjnCkK3latsn2/ge9AqHuhMpeC0HEtARj1biAumM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717499123; c=relaxed/simple;
	bh=EluBsdbX/m94XetsnPIYn4yrVNN4Wn0/Jk3S1hroWHY=;
	h=To:Subject:From:Message-Id:Date; b=d0DJqMKKu0Zmer70Gq/id0mi7AqayxtczGrUhMkvlJ6k+7sDoRxaRdO4lTjU61So1aN3uN87PRU+1hLgYdSwTLxfZScfL0fyHFuux+vp4niFvhBAH18u5hfpTgVPYI2SOuP/Qif51d9L/KRRL409dePcqDUTWyXVfPtJ7UEUvws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAVZORhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAVZORhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E3EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717499122;
	bh=EluBsdbX/m94XetsnPIYn4yrVNN4Wn0/Jk3S1hroWHY=;
	h=To:Subject:From:Date:From;
	b=iAVZORhGnerlya3uYaqoXTkwA1pgbnXDlXV+CNCQiBu6OYXQlxr4hHQ/zBgLMuwU0
	 9eTJzBOUqx8CmiCPGPNxyQZBdy9YTDfOBF9dVh96pS3FjqOlSd0fro7h5W6JlgJwk5
	 m1PVPiB4Vpndgu2wYeAcQ97hXzijmQr89YFFgNoAIlb9eQk3AK5XP57UXTofe13ccL
	 omMNiRGvRDptW1hNwFl2m+Z0ct9nxgsc7f4N84ssLrf8RpA6k9m3wCDI3+8lsDhsBN
	 p8n1E3a8Ap9t3NEz0MEKXnj7GqFI/ZkZm+3tUdIzj92lB0B6x9MFMxMxOh8Mt3N86n
	 cngMqRmfQQ00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1EFC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749912276.31466.9457374399858348165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd67a29028279cd160f8ee85ab34ec758d0b4ccc6c5994943a394a3706e74c0
Date: Tue, 04 Jun 2024 11:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717499122
