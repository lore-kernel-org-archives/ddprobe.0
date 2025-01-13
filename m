Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5C1BFE05
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736796954; cv=none; b=csQ7ciO97PVPbygKRuMB/p6km7uodNKp5GM4fv5G+WZ30T147dGIM9qLDSbeUxJbSUfeE93AMzGCQV+8oPOHp8Yex2yn77i6/F1k9vR0Bx+KaKSjja/ZNk3GxTvwSfMgMZyq3L+jbzUWyNPOlV1phB3lUW7gBqyloaaCYrG/RI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736796954; c=relaxed/simple;
	bh=qEHYz1yH5HHf0EJFYNMD2FyzJ2kxuiKHG+e6u+Zp3DA=;
	h=To:Subject:From:Message-Id:Date; b=R6O7AA3mHot5aHdyKYeUcO7lGzSN1vcfQwv8oQo9POYxluAcdGNuw54415Y8ACb4k6ysoeDaF8vXPLAgQBNseS24wLpJaKGCK7MrGkQCb37UYT1G6AYR/QFr10bz25EAN/1zOGz9g5t7cSPU4h3L76N80NsncSXulglaqU3aXQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGxS1R0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGxS1R0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C69C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736796953;
	bh=qEHYz1yH5HHf0EJFYNMD2FyzJ2kxuiKHG+e6u+Zp3DA=;
	h=To:Subject:From:Date:From;
	b=RGxS1R0N7pEfd3XuEai3p0hyw46JwxDmxGaOlrABAvH1MRESekUpkjSYS9sRFxSVF
	 KA247EkYpv0ih8yAT+UItMJ42/crtNInzZfLRzCgylgEzhds3U7dBhFIeCS0vOWxB0
	 DMgnGTJxskkAR0qwfxBRYmS4bwM5/AgzMxL0ZlDxYEqamH5AcxPME9zGapRyq46vCA
	 0YT6Rbhm6RbhplIATDpx3ndgc3HFfVAA5in8Iti3bZ4AElppZnmWpX1tdO4eiPn8C8
	 KD7Lp87unID1swMJidtk/kuJ2Q1iMEDwgE5Jdn3/cYMr6Daxf4Wnw7SkScJx0+AFGq
	 uADG3Zc9xdHVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E58DC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679695363.13561.1410878557928150166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901f1f6c306d0da3741703f7bc778d9d17589d3c2efb122db83bc55abf16aa67
Date: Mon, 13 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736796953
