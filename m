Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3A2347518
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777364254; cv=none; b=uvkHEsjQUBQQULTUUQ04T44ZqBfsXgMCnENA+T0n+J8zIfq+5XKM1hFubt/hVjOFeDu+ZoUptI9vyOcM0PIhR0RSWI6ZMvqEIxMZJJscNCqwwKnM3ieJJVWARhIoXZYE4YrUJOpxsw0QzknuRFVCGdfhmUynJAjSxxoDHnfa2Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777364254; c=relaxed/simple;
	bh=Sc36NxZxSyyUsw0+v9Fw//f4w4JCGyjkoFTlcFZco00=;
	h=To:Subject:From:Message-Id:Date; b=Dwy9RviB1t5OC2xbIeLUPd1BcZEiNRvs6BBd5mTKsCH76O2Y+s4VOKy938w+QRgRo5sgVBZQWP6jKZ9CBh74n8AmFMOnxxDoxPymh3vcgvwLXO+omLA0t/Qp7A34VS8MIQ69c7B3oicoKloCFaY/l+D7uWHhfBsmGIdxIs9kN2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nD41Lup5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nD41Lup5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9112C2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777364253;
	bh=Sc36NxZxSyyUsw0+v9Fw//f4w4JCGyjkoFTlcFZco00=;
	h=To:Subject:From:Date:From;
	b=nD41Lup589HurxhssOXHxXzP1kb5GM5qFq3eInwPMpO5IRaD5DOxs4RtBMXGCiWxG
	 2cAAtRWpKfESmAW1cE8heTQ5vfBZwKU1aqLlUOLdeHZOGtN6jdi9Mn0R7HV+nJl/bW
	 sLpv/NXnUX198gu8Yvo/yJRoNDK0dp5it7Rpv3MK6JZCXI/Ut1GPwscpY31lBvGlt7
	 Ci0aFO0iGoJ5TuDSqinW+46RRZQpk7UrA2vOKZQacnPWHnqDJTwpyCL6CNru3s08d0
	 x+LVBNQxh9MsgzBhstC6J5HY4DRsvJPfKcghvU4d212AUc21lL/c2XnyAWk7TKgx5A
	 FFa6VMJxlBGGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA275FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736425368.15169.5903283538640999336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be3addec4aaba4e9a7b5714e51c5dfdf84dad0753a1b315602d3605402a58e2
Date: Tue, 28 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777364253
