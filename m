Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C766182
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728090954; cv=none; b=eYqhZEjWiOU1FaMx5luwR9lw2g18zxcLqXSvmm+KcJU2F8A1XdCEi0mPXa3FQmvbyRGbwB9uNThOe4sucKZNd3Dj0jkQyW5kgn3EzwfD7XInNObgOiFl1Zi0Y+O0M6cWJ0UFoLL1/S86mJeCXI/7enhD2eGm1LDvl3draFXdcUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728090954; c=relaxed/simple;
	bh=i+wXraXmuPU5tr779P3jZhHEj4KlUyjrEU9nkZODvJo=;
	h=To:Subject:From:Message-Id:Date; b=A3325EkR83pkKd498xpKZq1ffm0A81aJD75x44N+p3g4EEM4vHxn6aMv0ZqiloslXdtZuCv6x8qNP/IozpwZSb4vqXCbl9i3b7TkieIqXltnI7qgyL8WVE1JUgyf9RDAS8TFp/gDDIsjRMnJMGZnY6tN0GuY3tjX0tIpvqVz9Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMM3F2C2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMM3F2C2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC61DC4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728090953;
	bh=i+wXraXmuPU5tr779P3jZhHEj4KlUyjrEU9nkZODvJo=;
	h=To:Subject:From:Date:From;
	b=fMM3F2C2qEo4xcKTIILegzmZRpfmk7IvG7UkIwNEX9TAxaSZeLZ09YVRaH6oI6x2F
	 XgA+OAakqISvbQTy+y0LTIQJUL1bAw+GP6YCI/+b/0o1dt0ong24BK5jxlUgdoXnlZ
	 hgRdR8TE8k5YQn2BUBWhrBZh0OTxWBg/WH9aF7XPNFDHceMlRnMZKK3vDfr/CFWjK7
	 k2s0gkB1JT3vZoAx1Q0hvsdJPXPOLbFQfhaNDEBha46zbduEAmtBGbWoZN9erll7Bu
	 fyrbTdPujgpYW/fVho+cyEAroES4JC9BF1V8qvoLxpCbYm/3Fdcvic07SKQD5J+1Ws
	 e1ACXQJ2ew/QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990B6CF8868
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809095361.16937.16324851888581315789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3952eb84cb5ba5519604f14c02c91da8ac051edb21b6503fef567f0fdad69e8e
Date: Sat, 05 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728090953
