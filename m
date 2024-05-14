Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F101DDEE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715726543; cv=none; b=frMDo6AUwYeMj8Beug+RkUieefECtfNNtiBtSEphNIUAqsSbRcguFV4utsGEISAIqwe6Qcjd734R5xJh5tWtvUwgUQnUuNN+xz0ilSZyJeLYei1zQgSyac0Vu+K/3WtGUGTW9yagfJepjjA/Amlo3/qYhASeXTO0GRIaly6UkCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715726543; c=relaxed/simple;
	bh=IW3HGI+XVSHhiijGWC4eOA/+TRCr8nee9EFlL7TOFDI=;
	h=To:Subject:From:Message-Id:Date; b=XMUVSqKraNcweGvvhY+0ty0WlWFdKvVBtf3ojiWfF/99U1DS68YH+l4aa5JIH3+VEsRBsVkaWNivy0yGuwAGRKMFpIk4cEUiim2xnjaVLca1DV42Ft3UuzOBxOVJtRCjizgkAvsZ0M8dCeIyRl4L/WBQuN/GCtWx24QIydN4UbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIZcmkyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIZcmkyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60BFC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715726542;
	bh=IW3HGI+XVSHhiijGWC4eOA/+TRCr8nee9EFlL7TOFDI=;
	h=To:Subject:From:Date:From;
	b=FIZcmkyBBFWSy2NeuhduBZL1iE7kZpEsXysmDWyY4NNzUMvEwPlIt4NNHf6fdAmPL
	 InEPePbJLs5IFJt/dcf00OFUM3onHbK00AV50BLtsztCJjtJLNC9LEYu1bwSCdt8Ln
	 p/yRsxmCLmBkFiQAYjKet133LlNIBgJI9Mey0OEGo8sg3/xdQzHsAY8+Ugp6r+GNmD
	 Mir1+0u2CWYXS9rMRqfF5D2KsTm7BhO5eg9tX2fazomM6TvoBlRGseXUDJLfHYzJ2W
	 MCpxYHvguIhLLI9EV7kmP+la6AuwaJPohpSPXnn8+K5Wn0VlVN7MANNl0AuwJOFbns
	 +3EQ5ViR4+ujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3D9C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572654275.7340.8607529599041935138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102539ec45209653d4d23a15d6ca74384a9168eff0c04d533ed1aa0f59d779bf
Date: Tue, 14 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715726542
