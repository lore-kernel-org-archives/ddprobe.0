Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50914376A05
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787817034; cv=none; b=qiI2euuFeKPUZQ6OB7aSNGVHQ3pzjdsuG8Ll0oNkFeNhJevOqXk8IvVwtXXlgGEqxmoJPROp2MmhRP/FyYRWxDnyrebeVBBXY7+xkk6v5W9fftkXFNIfUBD1fSqEvJvRiBE/4RWk4BMuZpMMnYHlUumxCZRvoixxj66zg1i28Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787817034; c=relaxed/simple;
	bh=8ij2hQhBKtLsHSEW7YKV6eJqDDVqE0J4VoxK/vuGrRc=;
	h=To:Subject:From:Message-Id:Date; b=a/AHFWMcYNLdKHnfi0B3cRg5WXx3e/qYpwlZeHV92FqVwm7j7JUCmWFWE/Zo1W9pxUyTQ469FqKpFhO3eXevgBtIoZuqtScH9E4i3LC3dj3ZwbgAb3miQzKTRUEAv4brVE7yZuY5FatdBSOBWn1SS1YEwksoUJkj/d9IEk1gnvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QU4Sowk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QU4Sowk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1AAC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787817033;
	bh=8ij2hQhBKtLsHSEW7YKV6eJqDDVqE0J4VoxK/vuGrRc=;
	h=To:Subject:From:Date:From;
	b=QU4Sowk9le1ZqobRyL9EKrfwaeAFLtCcsb6H91g41kZoW7HULX/Zet/Nwj0mVV5pF
	 X237sOgJ/xIxmSP3l7w4Vnrbj59tUYb5u1RePGTiPcbdjtcXIgoKrpAYzZFmbAa4Ln
	 xX+27zaijXNLTL2TGbE7ogGupFOb0NRL9dZVk6cwu4Ntsrl9qEhVfcRb4tnd4mQcqg
	 nNBpBwEEzaQcxExSpDK7oBxRxvcopUW8l/KEZh8uTYCeHJIhE17bVPg0HKHWcf9WNR
	 Y1apuT64SqKDvR+6bqLIb70N1cjU1pO/1e3Z8lJtXxzzjy0lyPsdqGQEpkD5eFDiNS
	 Usbi83YTtONsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD20C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781703369.26335.12876359441361352987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70d279a6492016ad78083b974c18b7885bd0f3b61f628f1f900625f72a466f7
Date: Thu, 27 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787817033
