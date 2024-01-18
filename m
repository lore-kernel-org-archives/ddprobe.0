Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E4A28E02
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705594097; cv=none; b=lr8fCXulGBbsO2nb9AR/Y/iM2pEjvOYMXFptX9oepkSJ9G81AOx+ZRa8ciuLMNDNC9LA8ydGUVq3tXSlQ2ZkFrde7cNAfvIudQgBJlUvDjM2+z9fYA0S1ygKOtKR+h8VAY/4vZh90yGQSzOkIRDSqhJdAUDie6ZMDZrBZquUH2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705594097; c=relaxed/simple;
	bh=xIjbmIAVubUHcHWyD50qVOhduDv5fYgg+saY8Bskd2s=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=N8+2pb+ttWakK3Cc8JtWYfR60LuOPP6pGLZTKtdGALprg/0PY0mGgXYsrruVMaGnaspuxv9umGo8jCdCkLSkL6R+UMiJrCoPNXHAFQt0bWtQ5qtoi+YspBr9d3jagskionfMPY+sL+6JktuC9r7ciR+IkKw/03Hm+8qNKAsA+Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsWz/+ja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsWz/+ja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B95C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705594096;
	bh=xIjbmIAVubUHcHWyD50qVOhduDv5fYgg+saY8Bskd2s=;
	h=To:Subject:From:Date:From;
	b=lsWz/+ja2UY7u3GtaeeHaIg6l2guw+5KLX5Yv+H8xPzCrtg/XFTW6hJ0GKC0Y/B8o
	 IsTejpcMXy03equQFGGnLum8EDeWW6NGHu0GMzMEIt0BX8NOgoyZsaZwBpoKJhOiuI
	 mehdcuHZ1jSuKQnG0krkn1orkK9lqiznEbNst/kZ5Lf/JyNXg9V+vj7vEgjbQzpXF+
	 UnIaVzgUKTAF8H24sKoRHvSHSzUXsHdQkWpngRS6CnM0XIuoX+kdFnvaNQ5X626/N0
	 W0DFaRl/MIc/lJciAyQd9Br11v3C40NrPR+b1qnQ2tO1r1zZmtWAsQBZN3HtNW0c8R
	 M3b//OZAm43Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F74BC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559409636.6153.8466815698218360921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace9cc1e4427fa7b4a46e0c93b26da51c7a310e14e22c7a7c68fafa69a7b9e0f
Date: Thu, 18 Jan 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705594096
