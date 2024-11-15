Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC6C10E4
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731631554; cv=none; b=TR3aM4Y59UY+TAXtv6pevRtYr28s3o+HKNm6+dOrbw2+Wk4YPOzUm3ObhmNtpB7AodiF02555LZQYKi5QGjdBIwqugyY0p/Ag/nhuccwJ8m+TLLu+YoSFL3Rfg9XJlY0UauCDfj2OCMFRTR/BEAlhMkUlaTrbs/6W6NUOAiNKqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731631554; c=relaxed/simple;
	bh=tivBdKNnKhqjKOI/xvVxmAg0bg3sxtFsC9MEiXjiWvg=;
	h=To:Subject:From:Message-Id:Date; b=ritLSQ61f+w3a0XLwA5r8tEgXelrtARmrF7A1/Tw+pq7YaH4iZBb0pVPpywOTascHzrQWJhw6pv2Rr4AybnMIGHYJM0H+UbR9qR6fP0/kX9q4rTha9tkS7NbOxAhVgb7PSu4u/31i26ZpA+yTMBouwztJHMr0f7oh4ManvF/vNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSbTxY9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSbTxY9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE796C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731631553;
	bh=tivBdKNnKhqjKOI/xvVxmAg0bg3sxtFsC9MEiXjiWvg=;
	h=To:Subject:From:Date:From;
	b=sSbTxY9TLHLm67DHwp8e8Oavbq770RKwkZKN4znTdTWO86oeQN1V+EEaTdMPlQZ6u
	 gAUSRj4DIb+senfFCk4iEByTJByGCIDqw2FvscehMNadtihoPfJ6YKJ7Q9xkRqqcPe
	 YjrMzVRSepVbQVDVQaOJ3dEJ9E2J/JwWXdkvWq94+FCrf0vhRax+W2yBYZaPHTy6uV
	 82nbCnLePLnmOlyNl+y96d3MgGcRsIvfBfj1b3E+BDUS7rFUdZMZWe/rY2MQDcJmgN
	 /ZN/qJCqJ5emIY07XdDuzniYhimT9xcazo2JnP4F5OdcMdQWwAk+Gfue2QIhufzJUs
	 opspX1W4m8R7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FD6D6A25F
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173163155364.2299.13849688543545570506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d0bbf8b7fa90f4b5834e9ea0f6d9adda5e7511825c81e6163c8d7b164f3438
Date: Fri, 15 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731631553
