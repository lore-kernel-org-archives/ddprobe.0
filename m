Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E711446BE1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786455634; cv=none; b=pwcXfE9yO8JHCMyCuYQEFNeZlITDtO/9afGSUZT/8OJvcsNKgPavBqJZjSLYtfDHbGtuA0OxxI4liT6JneKakMbzD0NsdQmlBES4X+gHO5IBYNRad056C/OwzY07uZbC/N7bkk1XRNjFTE5o/ZyjiPhKiqClxDlXRAo/4m86/d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786455634; c=relaxed/simple;
	bh=3vLm7kq0gdEn3X8lS0uKB/mJjhjCzrBBo2XCqc4xJFQ=;
	h=To:Subject:From:Message-Id:Date; b=OLSqOt9nAEwdu8k736XJPaagmBy0UP6tye4JbjxNW2c118C/ep5xKtZ8Nm7YfDlLkg7ivrAg2oRfjBCFRZ0POPdcbXF6V+gaR/x0suzFiyjZjyNYu73yDrRxa25LoIShzBaGdcSQ2D24aReASD2PUjkw6q49geTgfldOKY4d5i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONaJkx98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONaJkx98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DC4C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786455633;
	bh=3vLm7kq0gdEn3X8lS0uKB/mJjhjCzrBBo2XCqc4xJFQ=;
	h=To:Subject:From:Date:From;
	b=ONaJkx98W9IpFjojLS0zMeyaNOD5JskyYEDv023zoIq/Rn3rHJqqFFKSmSUsBe7Nv
	 5W+m3E/w023R2BSpvWj5A6l13A4DeBtIIHV3Y+eKpkjmUhc5MonWCTACAQQJD6+fU4
	 +46wWYHs4CARyrXMURhb/C7+cUfSf4penQ5ITea6d7f6fMPyzJxOyK5yjhpdeaek7Q
	 vw7ZZYUSGM0U918SFPu1TjAgKy5DIWf7nXJWtSZJlQx0tl88LUfHRbqiZMzHiWx4/6
	 kAALyDBdFLb8I7tjYoyigbRFWg2TKV7SdHjKx0/htx5X+wSVm4q4mzwYEQb9VRHzwn
	 u3asct33lE0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19CBC5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645563371.22348.134052521329113430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a09f6ac9de1abba772c194bfe3eaca633ec33376b4dfd3f3e8de90256373021
Date: Tue, 11 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786455633
