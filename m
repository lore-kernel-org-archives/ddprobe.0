Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A44336073E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771849494; cv=none; b=Gs0cewnSGPnWLvyAarX6nqOQDA6OHTVmsFIgSIJ4xqE7SYIb23AYQEK76Yr58JcoCCQ2Fv+ZyZIFZhwUrJA/jl1KTwryDey2wwyMBdHx+3ikzIPrrbYwOfsPHN1t3WPRJnynlrGmd8b4JXYrPdS3FEudXEfnZY5Ed1dAddMbCbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771849494; c=relaxed/simple;
	bh=F1PsGT8KJ7+ZG7msRWj/CZlqn8W9MjDTtpy5clwZav8=;
	h=To:Subject:From:Message-Id:Date; b=BFEyU6LbgOg50IFcWe+QjxuuDSdZyl+qbEwKyS9YVC4rm9tfhJitP0D1hodM0L94BOJaa3zEu8mlNhMOtGBGGW1+W36AyKrM6R1Iuh2uigkt5pyiGGyGLJYgWvAzYgLFeILIFzOgLejeaaXVH4gOAPfI8bP0wXO0vAUU6ot8MKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDljKtdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDljKtdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EDFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771849493;
	bh=F1PsGT8KJ7+ZG7msRWj/CZlqn8W9MjDTtpy5clwZav8=;
	h=To:Subject:From:Date:From;
	b=MDljKtdWI1LsTNvr9lwfakdWkEZmB0cg19IZje8Ol/LXFPERMYCHCnPdshhwUpiW0
	 CCkrMaqlKJP6rBApXNvjZjwqYEGooxBBUdm5TL+SR7WkPEugzkG9sXyrNZe12MTuhJ
	 K34D1ojTpOj4iwleyj5Rk6eNSYtqJJdMF0csao2zT1PENQqFU0TzcIU+tnYU77WgnS
	 O9JDQGLxMpBYy+jZ4UfQ4zcUUHdjVlLP1a6/BlK/WsiQG7jPxGx+/nhfkyPHxRtbeZ
	 CzWAtox37aUzwTKkLZ+gf7mbcHkFFYbqiouvJyp3uaxWsNa8JmbD+3ZD7MDrLeO6ph
	 xkECR5F3oQV5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92867EA4FB3
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184949359.25047.9030623922002817962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79e5ffacb6df030017f100a961d59c95bee5c4358cdb180273544f83dda8d66
Date: Mon, 23 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771849493
