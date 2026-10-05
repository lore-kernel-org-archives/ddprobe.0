Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CA245516F
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791193235; cv=none; b=EGi6+akC7dfgDnVrQa9iBXNe3BFrCozSRCvgBE1kX/2K7I0WxyETGusHYjFfgDXX6YHzEXiRp4pqLzMY63TgyxvzkmCU8uVAZnBDkihqZEXMmDtaHh5yzJkgUGWvvZ1v72yqdGrdFuJ7ITomg8UxaR6nsZmGBrOQOpgqokVtmC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791193235; c=relaxed/simple;
	bh=V2Q42ToYH9tCVKtriQ3B5BQEB2pu0RK5Ay3nbqlDnck=;
	h=To:Subject:From:Message-Id:Date; b=mj+5y403Hkiz7Wxv75G8XivMsKK7NvV5lmMQSOG7RyTxxfNu0pRaIwgOe5+RnCCT+Pxj8rK7jg//WpQAlHmKLCGUzxr0LjdauBNIjrgq1854Zwv6DkJBmzqYKpUil2CSPG17yBmSwv/XvyxqezGJslk9bCpGN0wlSR40snsG1i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbiQn9Hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbiQn9Hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2170C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791193233;
	bh=V2Q42ToYH9tCVKtriQ3B5BQEB2pu0RK5Ay3nbqlDnck=;
	h=To:Subject:From:Date:From;
	b=mbiQn9HnHUScrP+Xi9NcQtqcIf76PnigopZCrqccxKWNfVZlhE4HnTQxI0UZfFU3C
	 sxi+NBt3zHHn4WKOtdayO2WD/Ckphp2uh7JzBmsYzpVDGxEaMCLVHah69KkTV+kHMG
	 K9oYGOa6iD8URI7z5hHJe1ELq/uV85Ot653ak1+9VF7aq6/SBSH5HYTEt4EurOd3jw
	 jykiy+GSGXsZMeWLJxCnnvl7E2EcYRLEwqfHVz+a+u/0HrK7LdQO7kk9NVG7Xcvo4Z
	 7tQ946N45gnyaDpQiUkdogDD3yyqe+0fpjCb1aHcXC84weBLZrPL/dr9Vo57JBMfbR
	 +ujDH78LK2Nig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF996CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119323371.11709.1784451584876678766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1e86683132e60706ad7feb8f9d8efb8f0ac5d2671f6f4ddd0403efe6fd92e9
Date: Mon, 05 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791193233
