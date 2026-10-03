Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8973BB104
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791003634; cv=none; b=HAStlc1bCvzZq4Uy4/qtxqfI9jjnWt7gbDP+FGAt6WJxYGJHTj++8Eb0rEDLlTxpzUp3Nxm/35tkVK2vxNjFYTLujsuKLc5nGL5j1BeRVfI9C/nRPZJlMf1pIjrsexMYo93vz0qgZjMm9bCNMI/P2q3dUdLLksuMuhN7HlPoayk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791003634; c=relaxed/simple;
	bh=Crh7FxtIl3uWEWCBSvMmzh2CmZtE48SKP1E0w34XoT4=;
	h=To:Subject:From:Message-Id:Date; b=rU4pEr/F1hhYwZW3CcAW1nmOCMYZX7vYoqAaQjcukscFzsMf5VcNfHMiDKAwoF1MtTUsFeh32SfG92x5wW9VBMmQLZg63uWYcMaxq+8/zdOV3o3Gr1qodLa1Q1EN96OxULY0GEZqulYUHZhZSiv06Qc9qXDMdlpMgbe++olqYLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N94MmXdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N94MmXdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D02C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791003633;
	bh=Crh7FxtIl3uWEWCBSvMmzh2CmZtE48SKP1E0w34XoT4=;
	h=To:Subject:From:Date:From;
	b=N94MmXdb4S/RNSrwjvY8ng4P9L5S3kPXoP6HA24UUL8hWC3Y86HdI0ycTlVieL9Ws
	 b776lAA8+GAh7wLI8lU+HeuAbpdwaK34W9gBa+Z7FX18RsVZxa9nKeJYEinZ4yEr9n
	 lDVDhWJc7G92fS+0pXs4sTw6Mpj4LB6wvWoyNywcFGDwZAK/yLsh3X9SY4zOv+P9Qf
	 tq1/l/CeHvVVHjkhDHNzTIw0/Np1ADr7G1GGsnC24bn1QO2vnbmqrR2jnsNMkxnjOA
	 guJ2X0sgJY/HZOYyy5VSOUK+AwPX2kMi6iqu4nsIa8y2q8iyWIX5HZOwPvE+uTzg33
	 5ACh7zyByva1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0696CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100363368.27478.12735520481127938655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c80fe986947a8321b29af36e7343fda7bccdee227382e7877af84ac795e6865
Date: Sat, 03 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791003633
