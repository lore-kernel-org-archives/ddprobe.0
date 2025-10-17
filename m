Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404FE24111D
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760669394; cv=none; b=rOUv/VWFSsfFd13n7IbZ84eY6wNW3Chidz3RIaUW2zo81sTNzoa1qEpOuZ6k6TzTkQjCIqO5pdGnvjY7/CTY2k/RF4BvNzZiU9AVCUDd0EEWabj/Z5vu2A1s/mzUx5TmzCRiyznoY/lpNogTwOgolZSrHjUN8AqOiEoAhVETQ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760669394; c=relaxed/simple;
	bh=xJ2hyJUjhgB3P3vCM5XHPXUnY9oOtxQgGqBXBOYZ6xg=;
	h=To:Subject:From:Message-Id:Date; b=uUDrvsJXOBW11RpQMAiIuFIh3QqQMLrNUGdyNjnHA1fCOhPFNebi93xMLoe6TYI21e3TAtGB6ijKTAN5YJd0C9Bj63XJdjygWkIlM3831tB3eTKogdxgFYD1yB+M/2z9ahFybGBWCS/YWvc4thMSUOi7ELL2vlizOPTRaBLYWho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMweY1ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMweY1ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760669393;
	bh=xJ2hyJUjhgB3P3vCM5XHPXUnY9oOtxQgGqBXBOYZ6xg=;
	h=To:Subject:From:Date:From;
	b=XMweY1ct/VwyaSOfeW0t82ZU+G0YgC/peIEVaL/sIMwePrwAoMKyToS8uP8dM9Vua
	 YoT11pGTOb+4rnJsvxwnnpupw+O9kKNGo5yplbO4oi6yeIqRiIXdGueXu+QatpQ0Bw
	 cxCB7+JO26p87SzJ4HyNPfnONxKKKcoEFJrVFUONTuPNDwN3YC6jcb2s1vIStO2Sg/
	 b2C4x8b0Ct4zRpF7sh2Z0swQICSrCEUtHg3AF626h6/9semrXmecMokT7U23HIELGL
	 K9HCWG/I9iYRCrgc7WypLDZwdRw5nAY04CaAn9SMKu54S7mojDPhGFESweRj75yf9N
	 XQenURXGdsoTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F35BCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066939357.400.6747033352869329249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce98291bab6f450c24974e6f581a89d61834181a85074cb00b5564ef8fab2555
Date: Fri, 17 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760669393
