Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463CE191493
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754885394; cv=none; b=OOsbZOGdUNvZtb5ZbXq94f4VissmFbVzdlbWXFxZ1hafaNL8SJDm7buk/FZXHoBLzmOBTm+dAYd0wSQKDd0EGcVObceRj77RNpTs2sXxY+7Z3WTsVc5ApLQuBpzR8dmSzYrtEwSGQ/AHLhgwVk9lX71Q4+EJ6LMSCIELxCxKWSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754885394; c=relaxed/simple;
	bh=GJsYLBVdy0UoMGSOwHHioEdhUI9Kni8+0IxCJ11hfgY=;
	h=To:Subject:From:Message-Id:Date; b=k+ah36Tki41waqV/41UIkR7FFuzXVeP05FEpxBjOjWsJ4g90jCb+W7t8w8B/3QuvNgZdzG0EmuRAQMH7J/NtgsV0KUHFCPoHKOL4Mvj6OS5ZwT1xudinREN4eNcppB8WzR3W4vvwnBLMLtluwLjphfarW5Z8U2MZi7IW9599LpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2FCb7mB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2FCb7mB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F311C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754885393;
	bh=GJsYLBVdy0UoMGSOwHHioEdhUI9Kni8+0IxCJ11hfgY=;
	h=To:Subject:From:Date:From;
	b=H2FCb7mBQt50IncfyETKhLN81G4wSuWgAohcdjpPvS5TnRXPDEa1lfQTnCkWl4Q3y
	 5ESbCXCKexh3evic0sU5dSluk82eg2ystLLBUMUvqto5tGRWgEhhl/WfRLSn/BfTWH
	 KBDLmnN6cXaXePQYLCaj8rdsa3AUnE8IxKBmF70/yKhhEiMZmyTkOosqRVSiSgcpef
	 cazKKa/VVEoIf3MhwNPan9iAEZ5ufq+193gG7KHhdz9SrcXm7389RivzfFFUK3oim0
	 olrKczeQ104tiDr6bj3oFVTpVKZfAdhc5KJB6ZgfAw/FDHzbCUaavIqKM+7HbGWGm8
	 GBx6owCxe26Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D8BEC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488539357.4696.14761369933298125915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ec7643c514be52af5ccb21267a78cceec8e2a18c434ac1901ebc556bdd5630
Date: Mon, 11 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754885393
