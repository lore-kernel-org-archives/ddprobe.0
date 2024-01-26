Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D54F18035
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706253497; cv=none; b=Flpw2Ri20+4YTK6JCUURX1SWb5qkiVOMpu7r2GXkw9EgIDhz6ypfLWuoT/coK0silaavQjQfLBEJVwudSDi4y1b0v2owacJ4t7UsW0aO/Xr/1D+nhkCQ36lV0rvekT2qfzFpxMR9HeTvwZo0H1w+p7rcJH5kb54ltYSzscdiyKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706253497; c=relaxed/simple;
	bh=wNQQuR2pnwwdHRfnDAr8mt0t//S63j1zlpr26k6nQkw=;
	h=To:Subject:From:Message-Id:Date; b=jz8TsEaGrUGKbnj379HO5fMRX3Id9Gi8ej+LPWtUQv4OYsI5iud7fSLwboMHVZQUP0Ri7L403HYIhWBY9kRVJbzEknSavE6KXzByPF914CfwTGHZjT1y0w83aKoYTgUufORrkyerd9R9zmFanqW45z+DbpacMkWZIFYMaAV0C5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOoUE5rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOoUE5rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AC2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706253496;
	bh=wNQQuR2pnwwdHRfnDAr8mt0t//S63j1zlpr26k6nQkw=;
	h=To:Subject:From:Date:From;
	b=jOoUE5rmtCNTUV6H1/xqD7R9iMdKeLF36sazTbSrnheDlrGSf3DfQlPxhdNTVf4g5
	 uEBHMj7JDapZ2VHYAmMvZQDddojDDNs1lwIXF5w+kiwEnmeFMT4kW2ZLdS9IkR1OU/
	 e62zPuUI5orvYjLupZEbQrOZNzr1WAxqnMIHYOESVXBcBFqw50ewSCEEL/8f2L8C9n
	 GoDNHBXjZqgp+WA7+EfZ5hG2VLlQoRdqGny6fs4CNsFS67rmRAGivgIDZWxYyuUjLS
	 GQ1MPyBmtXEi+Fy/9lE1h7Q1zAjTN80KP2mbGu/4jqW3DJhBLKu5pam+Q5BqtV7bQa
	 3HybwakMT2JuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5DFC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170625349636.20703.14351904964841325371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6332902855899e4f3030d664a9430994f01173e2b3e4bb35e8baf4db3c5ac3
Date: Fri, 26 Jan 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706253496
