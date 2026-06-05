Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0287146AF35
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780643074; cv=none; b=MhDb3kVSTd8T4cSlb1A7uNYsyrO3Nc2uylmN1pHWYJi8uDhbHWhbv7oK2rS7kqiHKbgvyatbUxGYP8mT8AxT+e5DDwiVyPyOhccQzf3B27Sjp6XR4qeWAbrp2/GZ1+TMWqbythGj+rldZ9iUMQTcLp86zGAk9BtDW0KZwjJA5RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780643074; c=relaxed/simple;
	bh=vEJB79UQzIhorsG8zZS2hKgqeUP+/iqR05xVSJKR6U8=;
	h=To:Subject:From:Message-Id:Date; b=eTpDxoerAGq2d9Ocw4sCKhyme8u4ZykcMopFaDl90ARrbLW1ynsw/CUMdxXhGWZnu6bN5uEfDz1sJPsCtCIVO147NCoh92ijTGZ6B+lr919cwmdDSCbFekK1IzGAGRK7WuL+KpjsMuGQcHOPISZ3luiNNFaw4tHzPU5qPBd3PmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDrKNyZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDrKNyZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38D3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780643073;
	bh=vEJB79UQzIhorsG8zZS2hKgqeUP+/iqR05xVSJKR6U8=;
	h=To:Subject:From:Date:From;
	b=KDrKNyZmppgGRvz6m3KZVPHc5InTbpHT0JfZDGT2F8eWcGj3vR12m4r4iWyTyatZ9
	 IWZzM/xNQLtAgzOAUExqLsdFJpT+BhkMZqPezqUVHmW1unJi7zB+9+XKN+C4E2cvKy
	 dw5jlm8o5aeA81d4cwIh6LDwYQXOmD9rpFWMItf17FY9/FmPHERLxX+IhnGrguYDmj
	 O90pDk72jh3dOsHQkvoFgKm6q12W/YzkoNnuJwcdtr6gUMJBGJ1DIV5Y/b3cuMB/6T
	 SuYbHUOJVjB/fM0uG1FVMymW1C/6DxpZ62Jxz832oUJCJUKYA7BSY8VIFYvaLXHXJ3
	 dc7/nc8aERGtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A945CCD6E6B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064307368.11061.6177276050145013076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b2a6877ac721cd986c75baf79adc4e3fda335b7f9a17ab91403c42c66d05d6
Date: Fri, 05 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780643073
