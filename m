Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B05184E
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726397154; cv=none; b=GBvGLnXvg34yRM01qglhVASG/VSWZ4B52bP8Pw+fUjz0Nst/O1kuFqMoykdVy9xWenY8UYy6eBJWtnJN6oqZoE8UC783no9QzqLvmNkA1maF2vlJtegyg0ORe2ajTc0MXm2q3wZ3WlHgnbhLNKrl2yEJSiKXbLsQihCUJuiHBWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726397154; c=relaxed/simple;
	bh=+oMqk48QYBloFN1LAyKgNbAT/GWrRlWX/SykVqc4b6Y=;
	h=To:Subject:From:Message-Id:Date; b=V/zSubBXddiM0uxmEWTATIo4ys9Cj3wh0SakRMrWKAMCiCK2UaZOe5S9rPyqUsOzy9rsYtYuy22VlMjjyHB1QyQwqRd5u+2gdzV8TFvo7B5fDw6Zi3IjtuQrskekDknXC1LB4+bk+JOU1r43NXGsyTKzybI2SY7sn4gwbCKjnrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6W43AwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6W43AwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726397153;
	bh=+oMqk48QYBloFN1LAyKgNbAT/GWrRlWX/SykVqc4b6Y=;
	h=To:Subject:From:Date:From;
	b=j6W43AwOTBEcCa+nl/YybAJwvtkt/TnW83bQdt/tdt5UjTJvJKfqjWFyU9aaSzpMI
	 2A8htSGcwevCgMSgjXYhNqUIbXJ0FMkNizNG7wK7Whft0e5rn24bEJPH8LPAo9fSFF
	 vnnLHXxJatUjMEJJslhPAaHb3aUu/HEwfqftEbWDnoO+ayM/yabHE72d3P3EntPyHJ
	 2NTVnilS7BqZ5hdJZJN1C+/ZxMqyrLhA5dil8860UeuMyE1N2v5ikchtQempKdp3nO
	 0IH7uCWvnK+kwORaCMjPG0uYVeiWPpw9hUADShNdpCW1dr8OMbesDfHb8qBXWGi5Rd
	 VGtrJ5U0PPiaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92217C35FE4
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172639715358.6971.12265223307590845596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2eda697bb927b6b50814ecfe8e9b26a2a5a7616f78823cbbd02ff9b4ab111c4
Date: Sun, 15 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726397153
