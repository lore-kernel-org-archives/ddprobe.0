Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A57E19C54C
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743611394; cv=none; b=SS1FAsmYWSc8mIYHVWHJ41d2cWTKFPrub2SQ1QGeauNyDQfbAi3zx8qQxY1qcDM4OTgPWTsOVvCgQ3DlqfbRmyKGDTbA8ldy8BXMvECwhFMcXxcIX4K3fRmTwK3/xPlXcTr9pukhjYgixCWxy14eVGdtN55dg4zzcUhuepQGC5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743611394; c=relaxed/simple;
	bh=Kc/MkTup6I3BQRQjiLgesq+4NfmzGnvFqSFehW+MTUY=;
	h=To:Subject:From:Message-Id:Date; b=B7ByhOCdq9+9Vmq7AJ55GUfoWnaHewFQREGvlLZKoXwLt6G3W/M0sOdqYHnfNfAoXWXvOKtBLWtvHpddvbm04Zaw9Eu68J9DpUs31XykFzrnF7Kfc5stpf1GP2jD0E80VH0KbEILOIgIflJjD7Hkep48hn4ZQnzOfNEVGl46rUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwaSpIMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwaSpIMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4C5C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743611393;
	bh=Kc/MkTup6I3BQRQjiLgesq+4NfmzGnvFqSFehW+MTUY=;
	h=To:Subject:From:Date:From;
	b=EwaSpIMm6WTsXTxPwcvjmEvBhELl4FC32cDjNXVZpSY6hlF36r9vMxff7Cv15QcS6
	 8QmBxKG19wWv0V270cofEV1o2Xzt64yNzy9Mp0DY64m3otsmj9SYGQXT3EkTMEuUCG
	 QMPLtuWsnNfNDRUSrVHn+Fi1+gVzEDSyCw3LG3WhzadPQAWsvk3WA0vRwdTBJVXr0R
	 TVr5Vlgu5xqDNOt2LW/mpuVdXzUw3w+vcrvaPOALhbtQsuUW2G/tu1yFlMYwSBkSfp
	 qYROPPUL6eVrpqYQm/932MEUb3ICD2yzqDh2ZkNJ9UPzvsnDZONW/wuWQp9gjfBM3o
	 7pYQq5hHFYxGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE8C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361139360.11602.3918482214308897067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a9b1ff446385d489f551405f70d82562d337311d296ffe049eb05f1aab406d
Date: Wed, 02 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743611393
