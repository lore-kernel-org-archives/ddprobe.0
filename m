Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A55CEEC0
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786147834; cv=none; b=QTbCtlPVitR9oKtq4hziofMeG3zbkZ2w9sw2Ne6iwpeGAYm97yGAXmKJXPcgJH5q1isDX1XWF0iW8MP1IpKW0aGnk5IT5wA2fcZyyS6EMFGxN6CSjBzERKpQ3d0h8YXsQGgrXwH8x8ZQRvkCcZMU1k9peH0g4sB0dM3thPOSfTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786147834; c=relaxed/simple;
	bh=Nh/0Vy2OO3BmW/bmjQz9oAJf+s+VVLRC51tnnQVgnjA=;
	h=To:Subject:From:Message-Id:Date; b=qsmd+AK8IEaxfRCZHtFVRaGDNMT5MDgzJhUxldqW2JeIZZ8xzzW/ISq3wxotVudacsuEE8VvOPncHDjYzwMHDysVS7EAPkZHJ4w8Hp8+1jkuFwew3VQOadRXoZ+YqynL6NHRje3dL0iAxcCzQEX/D2pRRwzGQpK/CM/lV32BDhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+uu0gQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+uu0gQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C6FC19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786147833;
	bh=Nh/0Vy2OO3BmW/bmjQz9oAJf+s+VVLRC51tnnQVgnjA=;
	h=To:Subject:From:Date:From;
	b=b+uu0gQ7yX5cPNEvd6qXw6LPpB39rhv03IKwew/0Nrci1nwaduDHX4Pj3IwPRzriR
	 CuBzpjN8xdmpHN6G/YdHYl05MtcTiUtUMl1haxSrx2vww7TgvMxFGpEK9Ga65dlr49
	 Kw0ap6+BEayENne4GQDjX+aKGN6sNCTZbDvhwFpUAJBZGwibXBIQGC7ad6oNWya64J
	 FhluqXCpN7juGSt87IeVVRqxkjnNktT3ww/AVkDFthdQdY2PjuOmFruVOB4GmPiP1Q
	 bBIODahNgI7uxPQX9BiL9qCtPtbfnz3FP8RhfGa2Q4JSH5XqAYrw+KcedoJvHj+VXk
	 2reTRD9+Ctt2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9096C5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614783374.6202.14662603648397806444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea0d4a8ce1017f94e2f9dad4cf59034c9696d200409ce6d35e619a5bd94a362
Date: Sat, 08 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786147833
