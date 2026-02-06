Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C9926ED59
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770407634; cv=none; b=cs/arhW4/YXgVrSwj9mx7j6ZiLJZ4yzyiAn4dmPHhbpv85Vfp07XlqxMkDCckBa9Gdn6ye9hWbSCyq+dyuvZxwMGY7aC0YgYIsxnGsGu03Wmn48cPeEz2VoHde/huv0aYRecMeAZmo6FAOXO+oL+ZL3A1GmjrsQh3bzkZcjE66g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770407634; c=relaxed/simple;
	bh=2ZIxmRVi7Uy2prJTedTcs0o6KhsSmBGryppE8kiQyIk=;
	h=To:Subject:From:Message-Id:Date; b=POq9GcZr7zGTSExm7OYIRaJ+rD/i5yhjL0n2Pkg8lzYVay2NTNa5uXY78A4jNiKEeih2WUw7tbi2XcYgahETrPkivxPqnI/FnyGuZkm0NmusT9Ke29nn+dbg3a3nGs3w6RpmOt13g02kwyfFsS/7Zx06QzOdRheTtRx7QnoqGYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjng7eg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjng7eg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F8C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770407633;
	bh=2ZIxmRVi7Uy2prJTedTcs0o6KhsSmBGryppE8kiQyIk=;
	h=To:Subject:From:Date:From;
	b=tjng7eg2XAbS8x1CDo424LDXttGkavgx0iDXLIvNz7WP0qnUj1rIp4M6Lehh6Ikm2
	 eic6ZiMJQ3U/vwtcvpf+kgl+pyVUcHihb2STU/DnHyrL4d6QkuNzrX+7Khbwvvyy1W
	 JzY0Sfu2W43PLYQALa+qWynu2XqYjxOeHRfncTJiFJbvaSkPamzyqsSrvMKMZXC2Sh
	 ZtyikVEs5IU0PH+vjL9U713U8B6NiFm4rpKKM4jsaiosHA7InKAaUxK5/QdQCUlXJt
	 aV68qRuoRsL70te22NAb1tWsZ4+R+ewkzJFYCmHBe94n4+YQFIb53B69UJdwJRmFow
	 bEYEbMvAzH3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF68EE6B4D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040763362.8629.13388131281542783489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21802b277546984ddf17291b3f244b42d9172fdbd6f4138c561f315d646304a
Date: Fri, 06 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770407633
