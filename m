Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AE51419A9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761396594; cv=none; b=YPyNf7CR8yAosOQnNPiJ3MuH4Kc+HdPefIINIxd7a833lU7KEQsHQPVvkPRYoXSzxO2z0lXZBBqpapNM+tEeNmX5l0Mo547w0w2rYMtw73/cz5zovO59taemJ1qMpkaiiw0Z264KIjn8gnO4hEUYEhs8G1h8XED0l3McySE2WQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761396594; c=relaxed/simple;
	bh=HM4AFbgGLH5S0UEZPJGYWBolneNYw79NmoXzrw4LyN4=;
	h=To:Subject:From:Message-Id:Date; b=RpTUWXdABw8J5+j0SuNXORFsOZbOQB4ThhwEfCo4xob6Ixgg38WWnSAuJuBJ11LGePa1zaOJrJhi1vNlhCVxHBKotCbcO+B2LXm8NZ1f8k1TFlplD/4jVHY12z1FqA0s+o2Lrscs/AU3MJ+iEc4eTxxsIPCMHowB1UArBD6uw+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLDdloUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLDdloUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0797C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761396593;
	bh=HM4AFbgGLH5S0UEZPJGYWBolneNYw79NmoXzrw4LyN4=;
	h=To:Subject:From:Date:From;
	b=mLDdloUe8Un0lCxP9s0JJ8zYsHk1mIvTgMZIJqzZHo49S9LvwvN3p1m9IpbCKPKm9
	 9RuGn5QLAieKQiwe42CaE38pPPSWKu4WFIRyVJEHtKSuVOKcPgG1h2MB6nEUc+fuA2
	 KgK+YgxdUMjfjcbFk8WJt16f4jCfyC90yseTkoRTzMI+HibQ5ngLOv9mcCK72FRAMj
	 iBPn2H1DvQbQlHywUfVt2ur6z2t2G4NkGMVF7G2SYjzRHrXZVXvXQjMMjAwNEWJBh7
	 tu4NP0Q98AU8qT2yvbX2gp2VHfVjyzfcZqy77Eu2lmzOWSQqnVtZ7435YzgkRFjLXu
	 /IocPI9doCyCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA9CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139659358.9178.1893206335101029400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a62b322f4a4c2f0eada7b6e8b447b49fc0bcd166042dbc8119296849b9feb9
Date: Sat, 25 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761396593
