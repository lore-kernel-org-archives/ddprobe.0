Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB652E88AB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757768995; cv=none; b=Eohb4gfdY+OtLAifjxSKW8jO2IwySQ1UAjenuljW/xcEq9PcgvteoUHenfu7ODjwCV/+0Y2tPevQGfhRwTB8kwrPjXUI82yhHHJI6QkgBIgqvWVq/aNmhRu76WYgOMAO8ikr13rXx6FiCr32UtgV6UEM1AYVbTTpZ74FFQH+6OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757768995; c=relaxed/simple;
	bh=+aML4Hy2QVixFczlzt7cE6YRFJGBl6/m1J+FldGp1To=;
	h=To:Subject:From:Message-Id:Date; b=lFMuQkfdvyf8jijkPbwOhmJ/f2G66O4k8pbjEibrmyeRleJRkeDiUPdV1ia9Os1GEYAD4H97Zqz/JhPcZO+VTRbhk8C8iwUTC2wKWZZMWpzI2D2dZjkipYQYaFzIIUkx+p+hfh9zTI7QvLvgJephjcCjXrmj45Mik1hhrUIT1QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVFhA7vX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVFhA7vX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757768993;
	bh=+aML4Hy2QVixFczlzt7cE6YRFJGBl6/m1J+FldGp1To=;
	h=To:Subject:From:Date:From;
	b=ZVFhA7vXEIXrERcnPqkcfsfVjOSVjXOz+3/aLZIzDf55rMMWjV8c5ltYyXQ+pXaA4
	 b8NYlqAfxspKnOOhxHYRta7ZWMpe19raWKJfHnwZ9zy6KgNlIp/IcqAUoX7zgH/f06
	 OdqmUlrrqn7pOAbLjLVIbfRRdQN5Xf90agnAHH+z/8aHVRKSMUPpwZXDRJq9WfA61z
	 xzx5dHXFApqDCBT2mnXsQ1XNuzvgMlio9/a0Q1lEnGyl4/iwv1kEVNMY/UIIWqwMXs
	 ksusdwQK1XmMMvdZf9yGwjGQB+d1k1d7UaiC96tqbFz6cVVnSul9ZxpHmJRCY2T2FZ
	 yeuY0BatIiuVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46ECAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776899357.20576.14427545512924485654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd8e861be726af11ba952abb1540047c4bca0743b95f1638d358781b84803eb
Date: Sat, 13 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757768993
