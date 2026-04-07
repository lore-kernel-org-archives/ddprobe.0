Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE4C1FF1B4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775538334; cv=none; b=c5uOe/iXl9nnPdMiGWOZM60jqPhbTtv+bHuaXMtF0aU2ySe0x5ZJTXYbgGWWoNIYL8QPHlxAmmyYrdlCVLunVk9gR1cthYGglPOmFhHdePFEFXewnaBykNkDk1EXT1/+dYNqDhAEU2pcDXsHoBJTLdnbQeoip5VGTHFtgaCwhKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775538334; c=relaxed/simple;
	bh=zdf7Sg+tBW4SaD6vyFHC8FTU5UQwWwVZD4vHF+0Gw0A=;
	h=To:Subject:From:Message-Id:Date; b=WwP2Lj4SChx8tgyC1Pl0FsNC/xLYoyCzHYgYW7pV7Yj7iukyOcTp3iJb/iygaqwuvijOWSKJaZd2zVjfBVsMFpJTfhW3rzoKIhiL4P6pL6WIvP8uqYkhaFSGvXCIDXeOM9wx3ErTte548yX7oANPS2WzhIbA2XMFbYS9/xKmLxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWaN1xGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWaN1xGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C635FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775538333;
	bh=zdf7Sg+tBW4SaD6vyFHC8FTU5UQwWwVZD4vHF+0Gw0A=;
	h=To:Subject:From:Date:From;
	b=RWaN1xGiC336dhtK54pZiowk6ssnveEZsrTP4CaAbAUSS3ciiuq7I0wCoEp2vZfDG
	 hwtiwO5ZAlhmAF3sYCZUfoZbe0BxTjsW2bFABr2ZOR4YdgI765DGvjgzi8M6UPQrdo
	 mGmixGpL4dtJn5Nk/Pf4aUQInWVbYxRU6RnmCTv5CK292rEM35LzyR/EyJ5rNU8mho
	 PqQD5IAX2OyHNvXrWSrzf+PLCkrZDcRSd8xdTXmjZmY/jvvwt1VbohB38vb0X06KQT
	 wrO8ypEyf+SyJyXBUS+8EVsO9BG0y0zZVHmrhAw9erEnlOXH1Jtk3Ipa3PAo0ChUDS
	 hOQ2tOFnLeNuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6E7FB5191
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553833369.31095.7071248758886832338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40008c9dc212c09149a0f19efba80bb041ee1a9f81f1fcc14a8cb31e02dfc35f
Date: Tue, 07 Apr 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775538333
