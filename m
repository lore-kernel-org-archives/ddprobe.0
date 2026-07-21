Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225382D5923
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784610514; cv=none; b=StRkxBmCDPjoYofK/u/0TZPKOpDekhw5SMH03utEA4dp0PQpQAUCN0/nFPKbnAnBVL5xFQTA5zeABAx0CfcC7YiLftvuiM5mlN8FKWzbm8dWWrgVSP3z1iD6ve+mTxpIOfIhGJfuWW35V71KIXFpuo5GnJRfKJocnO7BkLrqX9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784610514; c=relaxed/simple;
	bh=t/sLdO7h24WVB9iEAbbXobEwZC5xpqNTI+qeyzb3dDE=;
	h=To:Subject:From:Message-Id:Date; b=fmr4eC6OOAdNLQ6OxpGJVY/bDFaIu1oJEn04lxwn5O41EfqLALJJpJ5mHKEl0IDCRxhWAIWeo28EFUjDVXi1yUP4z1R1nZ2lrGZAtvCUs/E//PPSjOBiQQW3ld2FSdrVPF/chzwaxP8njdQ1Jgo6UJ2njY5fhxZCXRow6ArHZ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwM2tyEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwM2tyEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB36C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784610513;
	bh=t/sLdO7h24WVB9iEAbbXobEwZC5xpqNTI+qeyzb3dDE=;
	h=To:Subject:From:Date:From;
	b=GwM2tyEqRRjp5uel/YWooe219imnZnUqmZ2HunJTvda8/OciVmvSFld0HDFJYPNzT
	 LOyuc36LNev44UpxwdfsvWgOya5dAXieIbB7nf5jJ1CmmMQ/OKl6lFCHFkvzdLYJLF
	 7MqNsauF7ucAZAa256B6pQ8GQAJ0GyM3odS7g/AMha8FkLKr9ckb+3AHze7i/EULhp
	 4Zo4SogCAq2NM/hsUtICqO5d0veThC/GBOoN7hNPlNrg+LN6l4Iz/XXnW9Ilymqt5r
	 AmDcNzMa2JFUY1GRRMUTYrkfpE86pxG4eRJmS5oOKgAAP3jhPbntSqrW92xd2JIeyN
	 2ysR9XBTr7z5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89C8C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461051368.18867.10093222988617473141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5655172d4a72f9bff7f3022f48ba0618d9a32afe15e1614e5750a780da7924e
Date: Tue, 21 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784610513
