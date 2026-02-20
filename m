Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3486831AF14
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771578294; cv=none; b=SSaaQGIv7W0W2n9BTkNm0vnXp02TcOKpmFO+cFGHdiAdFrrg+eK1h6/pnMowSy6QqVxn8Te1r0F5zc0fOog09OSwl4mergMELaL23DX8l08hnZzuCm1nsU+CWsFXuILRUXVHQ5RgUeGA/IWeVLbxUD6GzOyb7Yuck+DUsjcizqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771578294; c=relaxed/simple;
	bh=PLx3XTzaDLqiuqEvs/8/NfvhQN0bAOVTZFufrIq3k7k=;
	h=To:Subject:From:Message-Id:Date; b=t7Mlgsz1/PGkdq1vi5iKRnWoZTaNGIEmZ/R+h6ZFCgc+s66Tew2ZAFLggu/M64nGr7123P200YynslRF0BrMPM7yeJmPKigEjhWFqdSAx7NyuSD2cRN2Y+eM8/xj8pe2h9E/A2Zg2y3tlx6Jxw0wgufmZrfHNt7Ra4SkVFipXL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SohZ3vux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SohZ3vux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D6CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771578293;
	bh=PLx3XTzaDLqiuqEvs/8/NfvhQN0bAOVTZFufrIq3k7k=;
	h=To:Subject:From:Date:From;
	b=SohZ3vuxxdS6elNGT4nG7UyQbNNPiQkNhVvPzE6PQXDLgSy0fDcTHvCv4FxC9If7H
	 ++o8u0hx7VhLb6qDYT5YXYUYNfr6SrwqsD0r0DYRKY19I/PSxnd3XQ50JSrW3ZNDNk
	 8ZmKEipumsBBdaw8TJqQ5BpxTlqBL6QGcYivugfJYqbclTdlN7hWxuZKpPrKRJK2+6
	 GvJdGvU8x9QdNdh+lkKPRirqZyaxb1xu7stFe7csFSs9v+ty818hMseJpxJ2cHQOvx
	 Ajw2O8e685sg2F/RshVlGqtvy8/l8779t0I2DaT/W5qVyUxV4H1NhLcQ9+QQF7P00P
	 CJA8/LrEU2g0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93200C5516A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157829359.12664.9433162077078250788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950fd0891fa77d6d614a10316f415cdb15cf2af1f3c0783167bd609db52502f7
Date: Fri, 20 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771578293
