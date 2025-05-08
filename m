Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBB75CB8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746740994; cv=none; b=W9PcOTIY2sRJb1+A21LeA63eao52OY7sowsAcAsSTEOjnRoSdtk1pCl1YgojJU8lyTBYnqI136mxKSpIYaFax7zXI4OLawVAL/tKbkqfXFzF3lG6a8hWHxDt52DwbA0Vw+GJCFV6cGG8RVrMUD3sMI3SNfHar9D9xO68ScWLWDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746740994; c=relaxed/simple;
	bh=EiPiB/xCTBVYAg+VyGzi/iqADKjePOyd+6EB1OUTnAo=;
	h=To:Subject:From:Message-Id:Date; b=rZuUjo7DW8W/MIOvGjPpDt6U71Q6w7vA/logbq+oqmL0KpTYL2w6RgyBeAak3N966LvWG+kdfWiQ7zPK9yKJmAVYkHrDl3ghWYCIltSpD8N/Vli9GjRIo80Lw4zVL25TrabQn3OnFdBHuh5Hl2kBe1lMzOmBNzEr2qzgF8widfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a45HjXG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a45HjXG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACD4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746740993;
	bh=EiPiB/xCTBVYAg+VyGzi/iqADKjePOyd+6EB1OUTnAo=;
	h=To:Subject:From:Date:From;
	b=a45HjXG0tiK+oCtuOPaVYfBkGtlaxJ1PooteOZywaUYTPhxNw5C4kyBXcvsbIq2Cw
	 Rh1SpqT+6vl/e5vUsaU38xjvKZ6eEnTG+eSEXlldSOnv9ojqlQ0SfTn+QmxO2UREjw
	 brYCpWnSWOs0mUUZVuqX5Dp4+dxMyrJUYNb9xhwZNscOQGU/hL3H9IRzHVHWeprrjV
	 idk1epn80nA2FonO4I8eWPnbBeI+oCFc6Vh5ZWgEZOTgXKxtZjBPrIFPtkpWuIVrf3
	 DK99hu3oyx6ejt/jmxZigcAKWYiYQhxTYB6P5J9XrMd/4yEnLKCl0m54lwzGV3DZiC
	 ejFdDi66NLWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDEC3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674099358.19376.5515404549794471600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0f74add4ec9359e503d217fb692d179ede531a4baa65296779d0a1d6974a77
Date: Thu, 08 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746740993
