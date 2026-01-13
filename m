Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34682C235D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768332233; cv=none; b=KRiKspz/WMa+WvWc/I8pvS6EW872nkrCtnM26kUSZCg410jfRdYE2D3Fd0JcZ4wCrl3xsmXU3ulhG2TIL5nRrTvTM3weZPBAvOfUIST00YY6H53AAXWvzxY8ojRALpkyE6qqNccyZvAp7hJGCVA9oHrWWZA4HA8Ba9C7tmh+Fe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768332233; c=relaxed/simple;
	bh=5c0ln4i+4zxpb2nQ897MZDR7i3rAu96lpdgmtO/m+Ng=;
	h=To:Subject:From:Message-Id:Date; b=V5vxETbRyNH1uoreoz+9sMILroU2Yp1Q2xFOAsBCjzHJYsmLNqe8MndLoF2p0n5/pAKd8YmaBqI831rUYtNL2vTvKn9TCw8tIWiXfY8sA+XuvW1rDrmir66LZGLlXiaheY0TIsIk88JJrvflAfvgVuFqqbx6jlfaPDM87x6L06Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TL+K5s6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TL+K5s6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7520C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768332233;
	bh=5c0ln4i+4zxpb2nQ897MZDR7i3rAu96lpdgmtO/m+Ng=;
	h=To:Subject:From:Date:From;
	b=TL+K5s6i0tjzZMN14/g8AdVPzd+jIRIybRA/0/90VR+lXUClPa67sVBqcrFWEae4y
	 bZZYlGAW4RdXn6WjKw6lAEXzl/YcMXzEeUPQh4WbpxFEfTBCQ+W8Z0cCa7f8EEZ8O3
	 0eYi8AwX0/QCR54uBwGTM9SSs336pcy0zjwwMbW1vDPgLZPjNQp0I2l9BwgKw2FJkX
	 zVlGA8U4TrsC4mx3kNQimFRrHsKex6s7jf8N8f1O405hmp6/8yrOePTqVpRPCMhORs
	 WSVpDD+9jzDHzU9QHDUkL1BcY/XlWXWgia2QuJatH7TdYTSV80vIXO3PcpDvjwfkJl
	 SQgFOn5I2IMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9734AD2F32D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833223360.9802.2275001088112362085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73343469cbfe64149cef11379d0f7c30e3a9a9ce15fba8bd585f05023afdef67
Date: Tue, 13 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768332233
