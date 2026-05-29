Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AD43A960E
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780097014; cv=none; b=PY62b6T7c1/00AXW2TK196GYulaciklDvQof0FE2nJRJA32XjRK8jGhOFQGcE1tFC4vrRpKSUrVGalmv1JzXjWg3DNj/0eRKuQEbdzM76cyknsGhNLEl8ximXgTzkf2WYShL34zHUHifYAJoauzfplHYGTVATHxiG9/Bn/+PpII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780097014; c=relaxed/simple;
	bh=Eo9Nq6e/5FgU9R/i9rjWv0VH7rUZ/uXdW2v/swKQR/w=;
	h=To:Subject:From:Message-Id:Date; b=for7mYVodx7XEfkaCR1OKr8oFoNQTjdAMEOJ7gb6nOgxk5P7GZvbPjMLpYQnyiUPA6z2hcjm0adcWJsdtvgiFHdQI3APklj8K6sU8PoIShwKmeA2f3YRlR+g8dh+quH/sCfRgDUUIX3laVGD4WBD/Fo8YEb+F9WZ+XJ+8+OH1PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9aGQov7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9aGQov7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFA7C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780097013;
	bh=Eo9Nq6e/5FgU9R/i9rjWv0VH7rUZ/uXdW2v/swKQR/w=;
	h=To:Subject:From:Date:From;
	b=D9aGQov7DdAdeoadBToYmdEuLR8ZhOxBBtOw/leGvo59VnWpd1tILnXzUH237WSXd
	 Zqz11/JGPHRbj7rj/wSFwXVUIHT0NJI/jOrpOts8Vzwe3EZuav1SkdLwSpCYfx/AxQ
	 vbHnIDsiTA9k99S6cbA9m9OPBjURzxhTgsTm7VYTbBMZ9PStE1Gh7u7GuQaIqoBaHn
	 kbbSw+hhBOIgnnKzWDsQgZrnnIXiqCZFk5dB1yeNWRYyQkkjibJwLWIjstxzpm73L0
	 V4impPHXmjvAWq3HW6S/aBHzFEItWiA2tXL563uAPqh5ZkRZfkumeli/pk0COZn/Z+
	 CbTVWclEfveHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF077CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009701369.5228.11110304007036124231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1be1fd055187ab1dfa025cccc42ebbd11e509ff1f1f43579c9b467bfc564de1
Date: Fri, 29 May 2026 23:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780097013
