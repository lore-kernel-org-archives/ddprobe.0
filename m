Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5671922E6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735983954; cv=none; b=clA6TV/Gk2LDnEKjtg+fwtrO9Tq4ReTX1aVV6ZcWlLGmiUDPXE8p6CqdVvd60tTsqX5cifveXGaYbYpldvefXqW5XkMhoJVFKWl499vp+Hw5XCHHRt/2jnmczG6Ii6S5kf6XuuJi5LNHFfKNVVDh06l3nw0LdGI5ZgmdZ6QFoZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735983954; c=relaxed/simple;
	bh=JNYbdVOigZvcA3L6cNdIQrJPwxmnOZ/TwCM4jtjMJfs=;
	h=To:Subject:From:Message-Id:Date; b=hCghez5axfu3tjy7VMHsYh/8hdpnDiiiHOtwE7Qa7dT6/7HHfpZdBI29C3C7XfdT94rEaJxuaisFBHtDdTiZoSRssxt/JFdcf+UcZ69MlHC1jhsqGYUS/NNhlyoSW5hDqfOh7pXcDweIrW4kYNvBsOqXfbx9LPqcUUqaCbqsVnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmQip+2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmQip+2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F3AC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735983953;
	bh=JNYbdVOigZvcA3L6cNdIQrJPwxmnOZ/TwCM4jtjMJfs=;
	h=To:Subject:From:Date:From;
	b=OmQip+2KPsHpE7PVI6aQhwjfhseY31WY5XOh0Y+b0n2XxG5FM98uk+R8hWHuJgWnP
	 hZ7dqdfmKf5B1JdY9Pz1YngtHBVipg4pbhBiaAiH7KDPNGCfIQ1p7ZQgpju8SbYXPu
	 Rq7kYsV11GXK8sx5+z2rgM0vYgls8kRUSgZrk+bnYsW6jHWCPqk3dJNpmJft2h/3gp
	 bBogy1z6UN+YNEKIiiaQp8HzIAD2QDlrfuffYkBdwFTJZZ/gyIcvAq1F0bsWdWNnuS
	 EGCZ4uZayY7fnSlB2R1jejmtrDl/QxtMKmqwChilqc/9f3s/K4k4cdVfcQU3D3wucP
	 uKFRP1MXcHrgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7D1E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598395360.18357.3886861084424650958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2011c34b0d8c5946bb0b6eb89cb1dc0ca456c2e14c3678bd3ff8493d08459c
Date: Sat, 04 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735983953
