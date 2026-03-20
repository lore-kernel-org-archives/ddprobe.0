Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002B52641CA
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774024494; cv=none; b=Ti7FVMY9foZPvsPU9l+bVhM4RBU8KV26BXDEU4NTVCO7o3ovKrkuBldMKyRA++ZkvHzMBb+8GYOGmv+tAhyXSVC92pPdM1XLrHyHkWemHc3ZYuMNiWexkGFfWtaz6PjiZ1Sw2wm++R7MaFQHpOutUEFacTkEXeQf10ti7jj1eV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774024494; c=relaxed/simple;
	bh=GPdkpMJnQpUfkuEJBxARGXb69MrDVaYbkMKyOanz7yU=;
	h=To:Subject:From:Message-Id:Date; b=ims23wA92YEfy2EqHj4ZOj9DDYv000fxvgR1TP68USBBuC0mziBZHNUMfBqLfDjNVlRB3kcC/V/T6ycWUNzPQ7Knw2oy0owJiaw4pGy3G45yFtG1NbRkhzqMonxovG0Y8tN4jwtAiHvU0Sdtu3Xr9C48s4tOrmjuOEK/Drkj84Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owNcQk/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owNcQk/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF42C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774024493;
	bh=GPdkpMJnQpUfkuEJBxARGXb69MrDVaYbkMKyOanz7yU=;
	h=To:Subject:From:Date:From;
	b=owNcQk/ZGKHOZm3HXX1wvIFYzEBcxjNi8/8hJgeGebE3IWlkTKfxqDxm+Bt1kbDI7
	 in2sSYP/3BUcIvrrWCj5rP5BidWpEPyFAwW1wGMtvIaQpYO8G8lj5bI6770HN9Otmc
	 QfHgenZ64coCGiCZgSu9Jz8x6T2V8/qK5j6LMp2fFMXrH2J2QjOojrurWUpQ5Z4Eyh
	 sWy+vGglNsJLMrRmTpIel5ua0pIWHKJkDc2ooGtkhN22qSuiF5Va5kIbXbuiYZ0t7q
	 ++wWCna2XLu9Nt0BZ1dJxpArfcfVz9J9zU3VBoLoIicIgIOtSU6xmEUuA8EdR2h1G7
	 /NG7bxbr5Qi1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7FD10987A5
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402449357.12359.15812700820716136881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6d4490532144a8953e98c1509134fb867815824b59c4a764c1a4edd2679cf1
Date: Fri, 20 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774024493
