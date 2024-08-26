Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B5C173
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724630754; cv=none; b=NLD2U6wGbVfsuj8MOoiKtH/bahwB50Q1dgAsquZpA8NFHFJAT4YoaBV9CgXl6G+2TugW2voDKgy9s4e8JVS4M/Ujj4i1TpAcJ/JurfPVMrJ05MAI+tgIk3jHEytcwRkK3bdxcSCTMJ47iCNXZq69JNg+4J2+eo4w5ucYbpoMzeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724630754; c=relaxed/simple;
	bh=h7vQrB/NhUz3VvLpOSUAHtNz8CuQYX732YCbWtwPCIo=;
	h=To:Subject:From:Message-Id:Date; b=gGlz8YC/E1PtHJqa2PnRyddRDFu637dWCgb+70nvwJ68SmTQzTX1GQxyGw5Hzg0P4KGboX3aiSkvfDEt4AnZLe4aQ3PP4UacJLUGLphfrPYVjoqwuTFPR6D4f5U9W3B/pe8AcPOePKzzyTGuRU2kOhcMSKISSCZH1nOBmcD5Gag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Suo1IP+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Suo1IP+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FFBC4AF16
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724630753;
	bh=h7vQrB/NhUz3VvLpOSUAHtNz8CuQYX732YCbWtwPCIo=;
	h=To:Subject:From:Date:From;
	b=Suo1IP+d96nDRtHzci6Ww9kjHHBOeWIwSaJIPhHYV8ntde4lMTwfpLc8VZTjIC/mD
	 ZUZqK+WvaBoqHRXLQRgxXfQmEeR03B/FBxJoTaU0pYhMwy6RJs9NHzHBqxN/cXTyJV
	 J390+pwdZv9SbY9wH+5P40LPBC4UAV/QOeXTTFaMKdhkY9Il6SNY4AQMiTqSnwXqjF
	 xAzQWDL5KZDayAbzBaoTtWo+SjQ1Tqo7/EY7BYe65KylGim9CbwDSX6OzCPNQEIdO4
	 YhNE2G+IMbvKe1foCi9VvlGGtfLNd8iPhl1YD09ygrvthPx2C5CQ2o2PRQR3sGmkPK
	 VQ3PsCU+rPBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94825C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463075359.27428.17225081115219287865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b9f6654b410eeba6ad5cf73c1d802391609ad04dc00352ba1a1121eaf11ddd
Date: Mon, 26 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724630753
