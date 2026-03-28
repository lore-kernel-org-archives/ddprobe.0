Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F26440DFD2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774679694; cv=none; b=YNaCu+HqmWDnHkfv8kazrFerBWhqCmjpu7VAX/iG6R8csAARkuolHfk/ianfZ1J6Vq1nuGJuwsW2v2XYl47trG8Yx9tkuwybNSy7jgZ+ehrQmPU2emFsPkBMkdY0IJFWilVBQWA1tm4M7GDsfpdWIYk/J52MxdlMWclv3bxXpdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774679694; c=relaxed/simple;
	bh=hUCy9yXXqQ53Ta2NBY13Pgi5/Lyy0uKs6tb8uNoi43Y=;
	h=To:Subject:From:Message-Id:Date; b=hb3sU/Vz+euu55YGHAB444FXhjna0VDWAUiyVStvo44Pcot97ul0BrtJXUB0p2yICB+QRZBfvzwISsfXSL5MLP1R/hBXoQ+fjTDLSssACTod/9RFeEwTBDVVOUEFkkRaozwoeJHjvkzYt4WbZQfU9Yd70288ME6nSdM/E0p2ObA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opygRpHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opygRpHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4677C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774679693;
	bh=hUCy9yXXqQ53Ta2NBY13Pgi5/Lyy0uKs6tb8uNoi43Y=;
	h=To:Subject:From:Date:From;
	b=opygRpHDV97HJC/anBR4xxYE49x1WNR+8WmR74U3rqR5IPcWYfjff+a++WncfsDZU
	 9Aa21ZBGC0el8/Av3ggN9v2p1GZFWYl/eRSHSOUCqmna61Pp9ORVPM7tnNnlITxTXt
	 IXFaZmoDGJyJNyDkXS/pjrBXHEm45okj9Tf5eappsCcga/lNmzLL0sSqQyzAaSevxZ
	 pJPGrggSvgbR9FtrlJ94eu1ZecWEkA5ThUzaqC6KUEmSsd+uUQgq0gAWk5Alf/ZqYZ
	 F9BHiw6XzImiRIr9BwM7ne2kWAuzHqd3qucKMePvblbyThAQv5FK7d2+2Ja7WdS4MV
	 5GV2B7uVDv5Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF510BA421
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467969358.6181.17137419268259672523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1096399b6a7d8fb24f67d65a9e2afcdf4f3d6ff7ece4def297d9945f094d42ea
Date: Sat, 28 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774679693
