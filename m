Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044FD36D51F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771935294; cv=none; b=f+2CaaIBNrWmandkkI1snsSzd554T7ypIQr/KU0Bdu1xdcpkzks90kla1dcUHUqDT6zAFIWc/GXvin5uJ3hZkUR9Lz89XbUQuFMyjT20d3Rl7VmJWukohL7MvrtzG5eWZDcyo3vjFOFKK0hdDn6GO4ZPtLyse3h67kp0aP7Nnmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771935294; c=relaxed/simple;
	bh=iumjYgwcO4Y3DOpkeM4voZaIO+2UvKW3WVgJilNH3Vo=;
	h=To:Subject:From:Message-Id:Date; b=dI3dYo0PDZ0/n2lrB5t8HOSW8KQ8mhKm4jjOJ3jl2rzAqR301Z1bCSuBS6WPW5zWUteG867PmD7H37E2Na6I+9D55WC7s/vyx6KoSvg3nJHHGcIxodYMZ88sYNECE7kA8K3W1ySgUVWcQh1Bcd0ZKjqY0yhpUaDAzzRjdhZ4aU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIa44ADZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIa44ADZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F7FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771935293;
	bh=iumjYgwcO4Y3DOpkeM4voZaIO+2UvKW3WVgJilNH3Vo=;
	h=To:Subject:From:Date:From;
	b=dIa44ADZ/vzks6zfFuudWxg/NWswWwPtNQZadn18HcCQvu1vHJgQ9GQ+ZH6H2jCVu
	 hKzRFE+Kups43xGq6BUGhwA8Op7XfK+yc9apb1olWMYAzlMV7hVhv64WN6zhYZgas8
	 wsj/eAvUvOu2bwFWAZdEmPTO0lVvFArKyW74e5vmsd5qaUdaQTRGlbzZ/j2q1EQGnl
	 x41f94LDDerz1oW0gqDjIzavETo2d/wviJ6p4L90tQ3COllT5nsrkHXH9JjbCNOdq3
	 d9gWr4GLXwnE/eqHgUXXoMRq0dQM4CR1ec7oy52T31T/TvK+giL1GbwY80j621JW/S
	 WfcdWuSCiGZTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C5E9B250
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193529358.30417.14239824680372124500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7e506ffa6989496c25365c86c1a2f379ef99d6550a256fbd8beaf8bd951164
Date: Tue, 24 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771935293
