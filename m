Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA227260A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755392394; cv=none; b=NKd+hISXYzqa1SdNj8D1DuLja7eMw+hwn1mumZZ1y6JiZlVeCN0vmb7CI7I5qsctOWu5lqjoww+2eVKooSjKr3n0eguBpHqBbEULMFpldTG6UDF+rokAEox/KgGM/4jcFem4Yejlk2qYznugWpUxZTgHSVd7kYci4/FG04mMs5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755392394; c=relaxed/simple;
	bh=noz0DwjmzZzeJG5XCoA6HLGTKlm4uObHlFWmVQ819Qs=;
	h=To:Subject:From:Message-Id:Date; b=H7tuT3DJX7RPtf+P+xQ6y/6s+yxJpAaECDZDrFA2K3Mc/Q/0c4i+5Yx2HUTG163gJdYsz09xCHqRuLHevC21EkvVx3ydV1gu64KZCsIkAU39+gie4uXNb17owqAFpEodpUdh/69Hx3tHaJvWiQYnnMaaHgQYn/pkcAEtIUWSByc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0gzuVAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0gzuVAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9752C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755392393;
	bh=noz0DwjmzZzeJG5XCoA6HLGTKlm4uObHlFWmVQ819Qs=;
	h=To:Subject:From:Date:From;
	b=I0gzuVAu2/lusDJw3IB2DRWyWStS4M79qR+vT4Lbr/E8+/cx0lEK5ZhAwe96aPq3T
	 rVHED+3a1uSTlCJnOxjfTI9VoxGw7HnThm6OoPlVewYsyLpSa/HCk0nsyHIp6Vpi6/
	 RRtuhsudLmye3dWd/PFOgTaUwSD1BPwylmT6gY8kgtVXGnctaIYGja/ek92zJdnPoq
	 17wh7d6PEtnatQFQzE47gNOtbCmYZIvynid+EH7mAOn0leIVg74pIkdwes3D7dpW01
	 HySaQnBnN5YPcbkQgmSpoSUXo+zLm6bF42ijlg90gn40UYYVEHeWGwTlgvkdoGRO3P
	 52UsPMa3Twvuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9800ECA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539239357.9790.12943741069518328577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f7d77b7a4ecfd48fe950342af516bdf774a0cd290038f18267d5367720d0c5
Date: Sun, 17 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755392393
