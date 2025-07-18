Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E932C18A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752878394; cv=none; b=L9bLqdUG0ssqkcfSKAnQ+bcZTK56hj1rypQuWmjkaPBAQ76ifXrFsV0ScyL6vjifEeb4v5C3jwZn00HZyQyAzesseMFzkcLVQHp4f0HtQgXAMcxDoydNvcj3UL+1gM778d8fr7zrqq3iWeDzI5j3Qszkd/shnNqeGyuUqsp9ftY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752878394; c=relaxed/simple;
	bh=YYSwomQ71zdVd/JUxUYAZHFprLgk18PEdRk4sIrCDho=;
	h=To:Subject:From:Message-Id:Date; b=k3hhH4OsyziVRpBYhesnKijJ1qswP4eE7yExcKSJAl78IYF4H9keX5KiMuFOo38jv97BBXqUT/wxDoXIvR4eO+XL1sipCWua+AiiTWBjbR6McWFu/rllCreYmToiWiQz1EWUjf+SENla/mTdKvqbIoz6DgpekZa/feWLCmO58Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPyjM9BF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPyjM9BF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8418C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752878393;
	bh=YYSwomQ71zdVd/JUxUYAZHFprLgk18PEdRk4sIrCDho=;
	h=To:Subject:From:Date:From;
	b=rPyjM9BF90JFPw998omjMMQ1hlnJy7sTSc7aFkE+Yk8nGEF7A04KfQdlj8oZc9IPF
	 y26JBw6+EaiMNX8xRKGUQPexv9egmoVc+Ry4bZpfQbmpkdWblBxhaHGUoznZjaEUnT
	 bpFywcd4kPaMl9ehOEX81RgLQtcOnesJJcgBo1ABA4yiODea2PBpiDfAa00+7NnXOY
	 N3/NUuXx/xmHDlwp5aYahcWukfaFPnWQ4xHVbADSPaPbFLFvHiusBHaI56D8vSnjz+
	 nvN2VAlCJeUULDQCFZTEVBqXTgdExxH6QPuGxKFpgk1NjeMHrt9HwxUHo6zrVx/Wbp
	 HNWE+xdDa+PhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240CC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287839358.32326.1580751711175662758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31be9524b6ea01c511cdb549797c1aaca7022f4d53f8da215ffdd9a6d25c27a6
Date: Fri, 18 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752878393
