Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0F51C28E
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788025834; cv=none; b=MMj6M0s5Wg1IzJ4PMy1Ooqz+e+0LFp7Y5E8x1UGy+nl2cTVh9+ELFzVBvI26SAxGPfnBjcDTzTSHtSU/rEkdda6ZC7R5FQwmaluZzLkQ0HjTnWll+nG6MTAAVdD/j7ImNNWQdFJu5DewksSD4Vlm0aICqK3f5s5iTXGsN6t17BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788025834; c=relaxed/simple;
	bh=7LJWx0g2J49CYTrHdmfmIZyka8qKro60Ppp2phjRF/0=;
	h=To:Subject:From:Message-Id:Date; b=uxZiERUehebt5a3ji+lCLK+C19rM0qf3GGvvHwHAyoShcmy/utAxbVBfqGGlFyiXMPl79yNcDkH2iUlLfRgp8kviWPA8L2h/DIXa/5aU/0Q+3X08KZdMMKul/3HWfQZp01C2muo5cpC6w6mJ3Bi3HFSv1l7x8JWtNzG1vS21YiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7HPglza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7HPglza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDACCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788025833;
	bh=7LJWx0g2J49CYTrHdmfmIZyka8qKro60Ppp2phjRF/0=;
	h=To:Subject:From:Date:From;
	b=D7HPglza7a62RVR/WALdu6hZ5eD/aX2BHCy8Ghn5pU1rBhRBciq0WNAUaWbXlpiUr
	 Je6nbM7QjfGhk6io8CBcfea+JEPknXXkh8Q1tQkpLM5t0REoAAMkdAWbtZwQOFHz/M
	 QQ+ELNNfAA9LKnPe6KMeiIzZgOoCDpjI8LOC816qLFHftH5qgtRUZ7zLyQTtmVRLdb
	 juXo3JCoDMeVwryyq2rLwqSqalYsa9roEKZtZdo6Glv/dKce2Tncq9Bb4zHzmwnkyO
	 6XDVIbENliaGT82Wh0UaI4x0HZiDuMZGo42lL6JEugKwrrklYEeLp6Z1ayaivwkjsZ
	 cm5ohsgSauYrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA068C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802583368.28121.11710153096780207990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135945c4bd4cdac988368a4caa66c68ba8ce66e94e46958b8ce9276e735386fb
Date: Sat, 29 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788025833
