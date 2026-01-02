Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390551E832A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767320634; cv=none; b=Btn5L67G6d3caQbn0zFay5RLS7kZ5uVMSln/uIaax3wspw9vA68e8a8RKBN/kew2evexQvO+DNz6nXqAqBK0zHQlVRJt4Kf8spMVkFM68qPXw6ebeAeRwu80pvavgq3V9swS0XhYjf9LCDJ9blE5WB7EyAt5zdo/7t8jd//S2HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767320634; c=relaxed/simple;
	bh=453goHYhQkuc6JqdrMnK19AprBnIxWQqwAwaWndhXi0=;
	h=To:Subject:From:Message-Id:Date; b=t+jK7v2Na3XnQlNHNcPWNcoj3v9akk2UznuzpZa90WQ+mOP6oepjrQIImMvXKzeVDAQWfGcQiyyI1ahneOa59zHJgkLKDWcus1TogPPG4igHLqJ3I65WU087Hc5mLUYUP2O4hEcp2x45SI5RRvvuF844OvH30baysOXSUoPMy/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twp5uQGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twp5uQGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767320633;
	bh=453goHYhQkuc6JqdrMnK19AprBnIxWQqwAwaWndhXi0=;
	h=To:Subject:From:Date:From;
	b=twp5uQGXiQgyGwd2ScW/uo4xOhKz2Zhf3M2RpBjJCCd3LG3my7fjFYDi5FjS9JKv0
	 zcrjF4elPu6XrjL4aI3XSR+3ZMPLNgm4CbRl3QuQDOXC5jC61ILpz5fvXaooXTPFfx
	 I+F/+6d+3hFFS/6d8voF71FIAil19+IznpLfQfwoOL7ZpXgPJPrMR2SQl+IOsKLVX2
	 mvAPeKYyeIHX+PkQyY2OXLN126Jugj0BruPasfGDvgsa5Y+Dauea54DyQHJofmvnPR
	 74FotH4DJ9rLkyMCgN64o2UCKmywpDdBw6g28fG/61dthAoXdkUZKBMFgaKTuLyPyh
	 yaO04gitnmaXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A3FA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732063358.24781.10110691314709507071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441680ddf9535cd5a18eaa8e6abf9506ce02a4e1f8cdc3650dab6c9155e00e0d
Date: Fri, 02 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767320633
