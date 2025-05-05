Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464A1191F84
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746410394; cv=none; b=IQuYqMUnJfb9j3jUdaG8qK8mq+k2WtzQ1qTxekIX30fimXB+FG/0oJOWe04tf1+VSuUTdhpps/u1TFdexer65m0Cpf1XdxP/6zb09Q449NiGUriQKCJW5nX/KRgaBlw1McscY+VCwVDHhK/IcOND8wlE8P/Apz4NmXxLuAeAGJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746410394; c=relaxed/simple;
	bh=RZyhMNGjLJmzQKQ0lays5B3UVRi4ZBkhrIwjHHWdgSU=;
	h=To:Subject:From:Message-Id:Date; b=dn/OTQHmzuL9/smtkiZYNNtuIox4tmpZxsWL53rKgrSSi9J2GokQh/ystJX8AqCE+YArrPeCkOBezt5QuQDp15hnF8D0yHldwGNHOQrIsvE2elD/pWy1cKaNMRqpba+xl9p3+EGjdNt2wdJiWWE2B5AAcmUKpkvqrHOB5LUekB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFqeF4fZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFqeF4fZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746410393;
	bh=RZyhMNGjLJmzQKQ0lays5B3UVRi4ZBkhrIwjHHWdgSU=;
	h=To:Subject:From:Date:From;
	b=dFqeF4fZd//+/foLHQMAesgfKcQrtL6btblLkVRcjYHmHljGX8sDJRP/zlZsaYMOF
	 riQ3WNtu2zKVTC/Lf/1bPpF2+dlYNWypxEFK5pjHU6balOQyYhPIZCN3J4K7RS/4l5
	 uFyes3Qyu7rmsJ7wOEHHCA1t2L8hz7hB1LysKZBI/x9i3DzmxanTFqHPv30M3qIciz
	 EgTsMALMMEp5Lz7OP/ditcMIW+zMmAao4qnx9AMUl7Pv5VbA7D9hcw/6MDwA0x4L44
	 3NwZ4JmIVH0p9ZMJZEotFkkHEgMy9Ua/pjAPCjYwY74tEkn9NjIaylMagpLABTv9lI
	 GemDb4t1peQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F9C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641039357.28042.3694473099840300883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2c1090ecfeb37ae66cdcc47d1ea676dcbf0e5b1a1be04d1ebff34249437138
Date: Mon, 05 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746410393
