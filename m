Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD22202987
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751809194; cv=none; b=l+uAK8VjmCf7FeAlXJJgBgi0V69iNZdkGCtKWkf6uxqiQZdn7wd/KcohhgJcv5YPwQY9DFDNhP18Z422MJR4M1VmxqW3yZ95AX8CE74NRKmM7w6C4UOcwf0elOFlAn3VvrGVKyi6DbqpTmLeRpeDDXhdfB5gAeetXm0o1btPwiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751809194; c=relaxed/simple;
	bh=29/dQX2XNToA0mhqZA0Iegz+Bvr5aqLHC6SQDTISYW4=;
	h=To:Subject:From:Message-Id:Date; b=fD2tn3QvP/FMH2zZgrDeJkTS2trmpWMaXhhvfBtrQ9J/X9o08UdjGcW01/35vdvf8CXenlqdy9d5x17MKIFT/Yh2hqPhTCbqRvAfGIWxzRVWjco9d/zJpIp/Ts+Wr8hqTZF4BzX6KNt+yrPM8mjArwgGJ9Mn4+lMKBAsXUusebE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovkILMvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovkILMvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE7C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751809193;
	bh=29/dQX2XNToA0mhqZA0Iegz+Bvr5aqLHC6SQDTISYW4=;
	h=To:Subject:From:Date:From;
	b=ovkILMvwT0tD/oCWhGaA4kdY6hH1grVh6aU1skAoo1dAcLI1/4r7iSAwAyjDCIRDr
	 noy7imbZoFNjziMI+cjSmb/FL6kEQ9ZZbpzJZ/UnGDhXzJ4E/4bTLph8LhEIyLpsxc
	 /EhOg+F4qqETLpckodSi8iteQ450RpHXkPClnY8DvuOdNwVpYq95nZQ49SxLq5kIkd
	 3h2zOYZbYzaxcCD1pk59jYoeb0R4ddx/PDcZkP8/xHvL7oKKPq49kJ/oEEWxbRc1Y/
	 XOvFhP0uBHeC6AH9YcntlzaP9yR7Bwh2kRxt5ZI8Cxyfa39axNZWlmIillCoqDxi7N
	 bjir8iy1lapEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB74C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180919357.3786.8389651709016040316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ecbd47fb56cfb5098a0b613656b139bee432dba5d3f26bfedb7c1ec271ebffc
Date: Sun, 06 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751809193
