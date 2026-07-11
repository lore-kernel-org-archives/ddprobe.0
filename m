Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57060125A0
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783730314; cv=none; b=LsBaMGRMU1MO/8tE35/yQOKZG3TeRmg821wuY+xX622CDjeXzXYpeK3ePA0KhUYnCBHBxx6BJ8NKz1d2E9COxuHkL7732FwNCgXkasA9mzE02jIMUX4q27b58XfBt1M/gvCgj9RxfLSkfb/zXjNW0Q6f/FXeOFJv2NSeEJfG2io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783730314; c=relaxed/simple;
	bh=cygLH4cN8PQ7YtQTs1yyegZ5YU8wYDuV0fgqnORiHJw=;
	h=To:Subject:From:Message-Id:Date; b=F3nOxkJ4c18X/kcA7thnqIxXUBTndM7nL4/hUXpPCrATVjJ5lpSGhaRWT6xxaj2NVgnAHkbtwTlzkRWQ3BDYpFF5aXacQAO5cKX2zBs8cvOX4t0VdX7MX+8sW0D8GBZbB/E37GD8UPVf8RvimvKXgHivv96JStMEVhkEAV/5gEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adl7Kde9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adl7Kde9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0465C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783730313;
	bh=cygLH4cN8PQ7YtQTs1yyegZ5YU8wYDuV0fgqnORiHJw=;
	h=To:Subject:From:Date:From;
	b=adl7Kde9xCFaV5/4TwCN1BeWeUyes0yVIIc8U3eoG5zbRK43pwlHMXTN5/oFCEwV3
	 RgyaAtojzr5ks9wy/wvH+tUqyjhWauYzulSOwN9viHZTcslKvRuzWsZT1Lg5H5aQOj
	 4iB4UpENLXeDmtFwnxA3uihiaL4yXeU8VnW2Un8muA/Ws9HaYbTuvlXwoqs2FufeIG
	 h63RKzBi27Ufbi1x7IA2Qz9fao4p+CGt4yTM6KKXPbNoImgo/Zr1tYMqeI+pASGlUK
	 G9E0XK+51b7Sa/d5/ZJZW242nMKAsUArwkG6Cfg+T2+x72JcRpat6JWFEV7CzDzkzp
	 c8iJQIB0FV53g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5D8C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373031368.31986.14396329349841620199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3f3062f19fed4501ab5605ec2059dbcbeb041e8cc25890a80aca5ef8b14031
Date: Sat, 11 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783730313
