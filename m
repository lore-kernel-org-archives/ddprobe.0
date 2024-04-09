Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D021304B6
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712672297; cv=none; b=p3DH6Wk9M05xyBNJRWghSCB6/YY6UA3o/G73N13uSNlIbCanee8Mem+I5YqNTgwXFRgu2ZABJaaC9ouGzugLgvnHc7A8VbPicGw6XiiYBoxxnfrNa0t1fjKdlodlxkPINIsaAxzzs33Ozmg3U1UTI83l2EUXRDGywS7Db4iJS9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712672297; c=relaxed/simple;
	bh=QZ0/khvk00mXrBAlGzgvJMJvkEFvbQLMMuDf14YK40E=;
	h=To:Subject:From:Message-Id:Date; b=ZzOjTgs0XIsfGU58zKPP0pi83wb9GxQYcrJN5+YZJAfb3sqLESxR8xIAKs+8j40pBcSfobiHP5C/HxyWWDJ2JZYCw/5V+lGTpqpk0S7vYEKuaPrmllkwPBulQ6RVJDE1EaW7MLUTaKFi5xjwVXd+zYg0zq4zL4/c9hZjMa6m1v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nlc/vA1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nlc/vA1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E08DC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712672296;
	bh=QZ0/khvk00mXrBAlGzgvJMJvkEFvbQLMMuDf14YK40E=;
	h=To:Subject:From:Date:From;
	b=Nlc/vA1HIgwIYXTcoQk8Y8THa4v9l9EQs99bLkaaiicXau00Wt5zxVpLj+ID271Bc
	 eyfA7W/ELFG/C+3qTKdgIIC+Zo1sixet7VINZhNKkgvi/2TlPB7HwHWOZjj/RHZdEC
	 HGG5Da2FSWxMctcOJDoDC8bp7meDzjLCIcEl5EliNkqI3YInO1MfFGCmivXMlWTEpd
	 e0j1c4y6cn+0G7EvXVkFPmMXWNuHQRQthq5zfw/xPRxZDJdAHs02HVG+OTNUFRcSjr
	 MIyF+nQcRLndyfGsANCxkiSLDbE1TrSZstyVgkLE4aA57poD9+GsdGV2nElZN276NP
	 lfvQuAMm/9wPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676DDCD1284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171267229641.2631.714123528314696209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115ef155103e9365f7b73c2f77d2fa424fb840fd5f7ca332d9209e94d30d3539
Date: Tue, 09 Apr 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712672296
