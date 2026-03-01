Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE61430BA4
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772400894; cv=none; b=EmeawRSlmPLPyL+4zfhIokO3OJKV7aSW+Itar81SQVxoNFu4ZDRiE0SMlEDweutJzNDnwgXilVzxgCc3152s8Q5rOqa0uqN8Hoz8FEpGMEFgq0Rt5rlQ0QbKgOAQdoq3Un/UyTyR+Fpvabhwq32JGQtc/vsGtDgNsqU1O1k1Mp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772400894; c=relaxed/simple;
	bh=crRRYApJa7DbY3VHsrsPecAegIreyPM9MONiTesCOTU=;
	h=To:Subject:From:Message-Id:Date; b=LwhAowtkbIIvmF5dAeHTb9KGSV8TVVMYwkL8GSj6V55Tf2QNV8f4qsLpElkXz6oZsdwTTwUWRlBmMcaKPkeX2J5/JzRqBCCG5c1/h3ctC/nxGqzIL0+sIZ3Y02mwdYMbwpAfm7rrIgd/Hq3fWbiwUtsOw70exM/UpbiLRmZM+hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8ry80Bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8ry80Bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8650C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772400893;
	bh=crRRYApJa7DbY3VHsrsPecAegIreyPM9MONiTesCOTU=;
	h=To:Subject:From:Date:From;
	b=H8ry80BtOiscH5Lmmv2m7fvfl7/PRKXEW8Yjg4bRox9eA2Y3FNzBQtMr5evYTzgSU
	 s9KTWVhZh2FRMiyXCVrnfsgeqqssTV2Byp0az13y8MHIVpLurxcAuN4Ow57oibBwkG
	 dqHnPEZOUcE9eXFitp8eX3KF+cYTVKey+GjMoTDhZVypzhZDQvvxkNpqmvLTSyQzwC
	 GGkuUlwpvWxqS8YJOIwDJqZICrE2iZRIDzZHxihwgpWEzxa0NFzQ6bET4TL4MxIB+t
	 8gW48b75mEePV5uoEWAKHIHCnDXqzpS5ttHe4kLfKNYI0tltUAGvLOqeEceCSnYxRB
	 OI2LDnlsQl89w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E865FD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240089361.5349.12667288413577387843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e88e264815d663a1c34485c879b564d51fb82c4bad242bd3b71915bfba0c28
Date: Sun, 01 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772400893
