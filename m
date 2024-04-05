Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA7443170
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712329096; cv=none; b=SUXTql8rWPkUEoIVpVAknpSdXDo5VBzBIaTFaoNLtGZ6v+Qf6aW0ChPXOE7Yh694mE1IzpKm+4vQJPkh4QGvSWYtbJRf3zcx4PaHy728gVc310RFq+TTsfmG6x5CBx+c2MYdMJDszCPsXRog+iRliSyeK8W1VGXwYUZHrZYDLUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712329096; c=relaxed/simple;
	bh=HNcgQn5iqOebD4BG0qIzLhCKn834NY7z6Vy1nRb3q64=;
	h=To:Subject:From:Message-Id:Date; b=hPTo5aL9jkj3g1BAM9X3v0MfJE8oM2nYJeOkBYz8DUCe62JtPmmy7gKu4s1qWFViwRD6DUM68BoGrZY2JSmlRsmcBF5ta1KIo6RvjMqgFdGjYNe+AzZu6FjDVlq/DdwcFjUdxKik+hIHS3DwRlu3ijhf2uz2G2ntyxtKqooisvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvXmPqY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvXmPqY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB5FC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712329096;
	bh=HNcgQn5iqOebD4BG0qIzLhCKn834NY7z6Vy1nRb3q64=;
	h=To:Subject:From:Date:From;
	b=cvXmPqY5gyvAh2g08YwGnTJaYgddfBSmNIvQStotosIT31hEhLN6OjWSGYnEshx2C
	 X2v7Dkid5ty4CZKafhftBL+KCgBx1mrO29bmhuuBG3JMNqnwNL90NpoC7cjLsNw7rm
	 ydiCcZDPRgWVRgbYc1k5DPdXX96yFTVnf6SDR5HEFpICFNbJoIdLfHouUvMpqbGgfY
	 +78lb7WJsOW7yArK3BAJvlGpQxfWy+4Dbo4FNZ7gIlXXloFmS2Y4inhbWRLlYMrN6f
	 9TWokk2epPl3U8ofmWNVqOUaDuT8AhyGNEyg4wnUeWcZRBD0OtqNJV3cq5AdRyLFMw
	 tPrldqU+6Wb9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E388C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171232909637.1812.18406471242775008135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06bccaa5c40794bad3b71e51a81c6ef2f4ab6b1284f635a0b96437951ff806b
Date: Fri, 05 Apr 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712329096
