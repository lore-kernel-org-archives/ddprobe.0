Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9553CF1E3
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791901234; cv=none; b=WmWO074w2TVDilGA3uGzoNXHgmq2o5p/zimj7p0T69Vx6FNDrGJktjzHY6HY/vdvCHMgGG3xFo7QCHxgAHOQIp8EMr8v5GzBGJKTQ8xdjT7VzkvkfONwP40eVyzMkoTr1pJbQWxxxxHTPBbvTpruZbjvgHtOObm7XcqgGmOGUwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791901234; c=relaxed/simple;
	bh=f1bXyqzFCaq5hUni0Ua4pRjfah8+weo6vOBtfUXJap0=;
	h=To:Subject:From:Message-Id:Date; b=PEJsGLgpOG3xeoZgA94evn5kCslG3+HleQcLiSrlNVslX8IsH/9MOxxcLUi0SK4K/9vGMRm7XNrfjMnUmK7H/VmkeFJ5TLWmbQRSGH+EGB+8Rdtz/xF4Nl5G7TR56SqK9c2iG44PEGyC793/ZYsURT2/v4mNMtg+/lWKG9Smmxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/mpWI02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/mpWI02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61EEC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791901233;
	bh=f1bXyqzFCaq5hUni0Ua4pRjfah8+weo6vOBtfUXJap0=;
	h=To:Subject:From:Date:From;
	b=t/mpWI02+76AT4YATPpfe3h1IxwmQ7WrjFpKEzInL/P6IZh/rfmfzJ9Wx2Y5RZeRV
	 yaajMsv+xKhUkGhmDVye5ps08WltufO0eTFZEY9TueB2HPHwo0VdDvyozHgLW0ru+F
	 tp/cT/AC3IYGgxhdB5I3p5YJEGAJ08PXSsQ/+R0TCjnrGaL3eJx1mp89woFssABgYB
	 eImllnIFPyXF/F4ekXdaej0v0+2WUBhomocpk+2kaMLPNSdoecd+hSoynnXxaGdAjl
	 TmpR7uzZV/KA0omj8zEtGmdoPNDX6n0UFkfvS9A4EhlagzsKN+RT/7ErRhy7i9kRZq
	 lzvXApHje7nKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2831CC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190123371.13917.14040083834102094592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb81fc3ce018108415059f0f854997d5ad3d06d61f4d9550c48c64a74bedb80
Date: Tue, 13 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791901233
