Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709E59457
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720059923; cv=none; b=M3sOU3Ur1fjRnQf5EDRPGDOmMk1OovI+waAFjimm+uR5+SHpcfwV2tC4GJfd4vi05c3Ni6CH+eLx19W+rGqJqbVIGt8IfTaCRBWNeQmzJ1pC1Ut8U4H1d8NLCRrki2I2+RtDUB3Dm/Wl7uVzwbdhK6rWMnUAv7F/598KPX2+i5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720059923; c=relaxed/simple;
	bh=t6VkIQbAUQQKojmNBNSjHDyDqD+7bCL6YISrLRSKD+g=;
	h=To:Subject:From:Message-Id:Date; b=Te60R5HLUOpK7B868PBbeMEoUkgFHavh2IH7+CNNtF+N4c3hBfi6aCohQJwQ9/UGIx50/M6TKF7vMALihkc0ZJIVVSQ5d/2FGb7zWPFXyLANr9TaR9mjtyX1CGhdsyqMCQCqf0vnkpinRLkOF/IZgBGDz9byBjFBXDFiugBjkG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA6xyRth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA6xyRth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA857C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720059923;
	bh=t6VkIQbAUQQKojmNBNSjHDyDqD+7bCL6YISrLRSKD+g=;
	h=To:Subject:From:Date:From;
	b=LA6xyRthz7xCvLtcUAV78Fokh2w5xGvmeUV6BWNChCPD/peybkhZZTFwwX2CRjXdM
	 BTGFA2nnhgSUUvqQi+VRWZj5wwpUlH0OXPbpeJXW1EXcpYppE0BuduFVr8duEe6zWI
	 chrb5TUqL8FDVswn4QpXfNFjqO8VWxNXxeRkcLXwOVYQ/VQkxvsjqGo25cyVQ1XQb4
	 5Fn4zqxhbwAASkHrWJZEZl+aoA4e2q1KEl7UkVf+LvtSxNpDaN0j+J/p4CCqOp22HK
	 PkwmoxAv0OSw3bJ3UEhlhWztimFjwyITQammQotaDJLgByreZnqdddqOXL5YIBsF0G
	 76DeC/kVIqeig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF402C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005992281.26997.4094671993781973283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe613309a9a02cb95cbf4d53797ea9b831dec8b1970711d98e05678824c0e916
Date: Thu, 04 Jul 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720059922
