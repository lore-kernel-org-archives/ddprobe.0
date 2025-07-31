Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDB2A29
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753988995; cv=none; b=a3x6FFkuAWu/tiMWQ7m6llogUCftf34uoMcSW4f06WJlB4DkmlZCuzeg79LA1Cu9VyCzPe9OZGaCBRUCX+v5RLdX1gQauc9qT+nEgSMGcTZVAcK+u6SXm3+R3BGNjK7oj/bjQ0VHY/Z52TYtbaU0vHU6YalmN//w1jYb9NKpUxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753988995; c=relaxed/simple;
	bh=MMRuhNRnj3Yiw1lgzLA1uutCXyfsgYdGgTsei+MLhX0=;
	h=To:Subject:From:Message-Id:Date; b=CfdJ/7PZM4LywRsvixEQtUEd5aKFLZshlcGC3U9yxQh2K/W5o71vzydHnAZIVBcPK265s3q48+4WPl17NuoUkbkVW00qWWAgjXIm6FziaCt+9HAuwhtaTbXYy7p9nrkTl3WO8sJdbZKsJUb//anPkJpIU0Obb//hrm6e0dSCMoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQr/ORgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQr/ORgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1016C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753988993;
	bh=MMRuhNRnj3Yiw1lgzLA1uutCXyfsgYdGgTsei+MLhX0=;
	h=To:Subject:From:Date:From;
	b=KQr/ORgj2ZcFaOw09Su0SYEneStVVeoFlg1keGFZemAHu1bQyhjfQ93QJR23CVUTb
	 kYKbvpymGp9n/gCcPyqgVd4GTqYnud5HciU4g0Rjh3D0BS7I2w+btodsPqKsj9t5Um
	 LXRn0O34+pzfOzwowJ+QAWPvqCQwAMHwd8+Nx0p83n/raghvdNEPky6b7SsAZx/NiE
	 PlJl2QP6jisrKS+6HNG1+lVYJGEMLR/sjDdM29pE0bXT3J2Y7FG7w/msfXoOprlGxN
	 iE3XzAsVBn2u2viIXb6nTgpjdbKRfdOv9N0dX7iic+a24W6ZbL0KhgVKlV8RyXEt5d
	 ecNmkVGSc/2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B1C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398899358.20116.16613246523800442011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408d7e2f44987baa30c86b675392a2a748cabbb29b25026eed87f65746388231
Date: Thu, 31 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753988993
