Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0DB27718
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749493794; cv=none; b=mhtxwMTJ2gj4wSDLDLBb5U4YTJGEQQFGGF9W1M9RWzQaNV6P+LjZqUJ2Z60+WW+cRUswjyIQLHA5Ne8c37rr0wiDXBBO/Jb8PMBs/o9/8iv6/gCiNq9uliQEbdDE+Zyq49DTJRgcWcc30rYeZofqVxD2mkk5d4LQ69GURPpfIbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749493794; c=relaxed/simple;
	bh=OiFncG52IJLh3tvbKADGifXPN+kgEY/P3Oyyh9iCX40=;
	h=To:Subject:From:Message-Id:Date; b=LvnbLksGvqPehTBIfeSQen9Er3P4QHug6SNiWVC9cGGgX8g/nbcqch3qHsmVYk+AhcDjTHT+ptWOq14cwe41xBiUxG5Yjdu8LMIyqDaj7lNVix2BZS6RJO2k37t+pb89DIUZLlosVRTD3/H2/la4fXiXrz9ZDuKFO3iOqOtKntI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbjENjkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbjENjkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB6C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749493793;
	bh=OiFncG52IJLh3tvbKADGifXPN+kgEY/P3Oyyh9iCX40=;
	h=To:Subject:From:Date:From;
	b=IbjENjkzWjJdxNYRZmiVfQx31gTdHgOMOGB9dZ5riE6PApKFIDyEThNpBBC6WxzyI
	 xfzZPWAJWo4PYpXsZMoYuwuq8NT6QokfwJHcupFEvmjKhwePEIASzXCgokH6szLhyC
	 UIQwiK5B/d4cD5FVW71d3Cp0K4cpKheMcmKeJ003TG9m+NSUzN0OU9feZM8XBnNey3
	 omz0uOuLBba+rnhjZMnH4yNJH1NKetwQNHeJq+ugsUXwC1U60sWQ/PsxrBdaoWNfWe
	 0L59uP0BBKf0AexNzmQ2nBFkG2R8cn41jJuuaYPmp/BGdevOaDI7A11CVWMvw+asKZ
	 z8gdg4rYtWNYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E585C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949379357.21519.6841027791025340417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecb33c45476eb44e873c04abd02db2a93f8a34d5e5b1fea111da1807d5c0563
Date: Mon, 09 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749493793
