Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADB32BAF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751343594; cv=none; b=Yp0vIYic4sPT6AfzpwfKFDjNZR2lzgrxPkR036hy/yZSr3TPiT7C/w+ERQICNP0cBDnbx4j0MjsWED214Wh9tEow2ro7BBlvW3dMZ/FD6ugirWzYU70klukHpxsiSxg1Gq9KXoLnRdIQSWDKozC5ISGr5pvavOWiiPMvNYW7Xxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751343594; c=relaxed/simple;
	bh=+Ak2AuR5puoDgN53PQ3pXUCZZ9i3cvPOn/+GJn/6EaU=;
	h=To:Subject:From:Message-Id:Date; b=fPVWiGHx4T0WMnILtA39s8y5uT1piPmIRMiC0UuOqVrg7/uJYYhgjS6mBH3cHRMTfaoes+KIigEwW5ACD7Qy2ClyHts7opvbNj44cgIp1SvCSxW2tRgQQ+k3ze0aP+lSzdMvSFNxPfgCI2eUVBz/OgL82gCWYtfP1EvxYNEfmxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iV2VKpHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iV2VKpHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A531CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751343593;
	bh=+Ak2AuR5puoDgN53PQ3pXUCZZ9i3cvPOn/+GJn/6EaU=;
	h=To:Subject:From:Date:From;
	b=iV2VKpHkmnniyAZuNFmQHS7/etSJulaClSvj1pWiGacaBMQmXZnK61vWyUE/yY+Je
	 1xSEhNWCERTG9JkRyyJHcnqKk74NIjCSPYyY2if7RsBXVQzUbtBC5mnH2Dg93qSMY8
	 xofn7m3PxP9LtXZLPhMkcLPx+UpaCmobE3VDVmeILnxaxQ5F71TJO8hWrLQvR9FFL3
	 OhTq5b1W8WDFbtZmUlsk5zY3j+qIV/NpBx8Mhuhs8LmgOWUOq0ZCqVkFk+96I1mof2
	 3MFIUa9FKp7J6J8HRHpO4seq3pj90CSBsEcgqqC0HP7rfVZMpRsVbilyJur8924jJu
	 i7ssZu1d/Y25A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB05C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134359358.18656.5868291310095602974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e012c1e0bfe658629d3b50e7081257f11b46b2f3f61155141a63bca2af86cb9f
Date: Tue, 01 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751343593
